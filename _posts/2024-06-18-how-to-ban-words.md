---
title: 게시판 금칙어 필터링 하기
description: 게시판 금칙어 필터링 하기
header: 게시판 금칙어 필터링 하기
comments: true
writer: 아샷추
--

# 게시판 금칙어 필터링

안녕하세요 호남향우회에서 백엔드를 맡은 아샷추입니다. 

저는 게시판 기능을 담당했습니다. 고도화 방안을 생각하던 중에 게시판은 여러 사용자가 사용하는 공간이다보니 금칙어 관리가 필요하다고 생각했습니다.

어떤 로직으로 구성되어 있는지 살펴볼까요?

## BanWords interface

```java
public interface BanWords {
    String[] banWords = {
	    "나쁜말", "안좋은말"
    };
}
```

금칙어를 배열로 담아놓습니다.

## BanWordFilter class

```java
public class BanWordFilter extends HashSet<String> implements BanWords {

    private String substituteValue = "*";

    public BanWordFilter() {
        addAll(List.of(banWords));
    }

    public BanWordFilter(String substituteValue) {
        this.substituteValue = substituteValue;
    }

```

substituteValue는 금칙어를 대체할 때 사용하는 문자열입니다. 기본값은 `‘*’`입니다.

banWords 배열을 리스트로 변환 후 HashSet에 추가합니다.

### preChange(String text)

```java
public String preChange(String text) {
        Pattern pattern = Pattern.compile("[ㄱ-ㅎㅏ-ㅣ가-힣a-zA-Z\\s]");
        Matcher matcher = pattern.matcher(text);

        StringBuilder filteredTextBuilder = new StringBuilder();
        while (matcher.find()) {
            filteredTextBuilder.append(matcher.group());
        }
        return filteredTextBuilder.toString();
    }
```

정규 표현식을 사용하여 한글 (`ㄱ-ㅎㅏ-ㅣ가-힣`), 영어 (`a-zA-Z`) 및 공백 (`\\s`)을 매칭합니다.

입력된 텍스트에서 한글, 영어 및 공백만 남기고 나머지 문자는 제거합니다.

### change(String text)

```java
public String change(String text) {
        for (String banWord : this) {
            Pattern pattern = Pattern.compile("(?i)" + Pattern.quote(banWord));
            Matcher matcher = pattern.matcher(text);

            while (matcher.find()) {
                int start = matcher.start();
                int end = matcher.end();

                String sub = this.substituteValue.repeat(end - start);
                text = text.substring(0, start) + sub + text.substring(end);
            }
        }
        return text;
    }
```

금칙어는 대소문자 구분 없이 찾기 위해 `(?i)` 플래그를 사용합니다.

매칭된 금지어를 `substituteValue`로 대체합니다.

### check(String text)

```java
    public boolean check(String text) {
        return stream().anyMatch(text::contains);
    }

```

입력된 텍스트에 금칙어가 포함되어 있는지 확인합니다. 금칙어 포함되어 있으면 `true`를 반환합니다.

## BanWordInterceptor class

### preHandle(HttpServletRequest *request*, HttpServletResponse *response*, Object *handler*)

`preChange` 메서드를 호출해서 불필요한 문자를 제거한 후, `check` 메서드로 내용에 금칙어가 포함되어 있는지 확인합니다.

금칙어가 있다면 `change` 메서드를 호출하여 금칙어를 대체 문자열로 변환합니다.

필터링된 내용을 요청에 `filteredContents`로 설정합니다.