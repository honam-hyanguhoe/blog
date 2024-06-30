---
title: Jetpack Compose를 선택한 이유
description: Jetpack Compose를 선택한 이유
header: Jetpack Compose를 선택한 이유
comments: true
writer: 모밀
---

안녕하세요. 호남향우회에서 프론트엔드 개발을 맡고 있는 모밀입니다.

저희 프론트엔드 팀에서는 UI를 구현하기 위해 전통적으로 사용되는 XML 레이아웃 파일 대신 `Jetpack Compose`를 선택하였는데요! 오늘은 그 이유에 대해 설명하고자 합니다.

# Jetpack Compose?

들어가기 앞서, Jetpack Compose에 대해 설명드리겠습니다.

Jetpack Compose는 Google에서 개발한 최신 UI 툴킷으로, Android 앱의 UI를 더 간편하게, 더 효율적으로 만들기 위해 고안되었다고 합니다. 이는 전통적인 Android UI 개발 방식인 XML 레이아웃 파일을 대체하며, 선언적 접근 방식을 취합니다.

### 예시 코드

```Kotlin
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Surface
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.sp

@Composable
fun Greeting(name: String) {
    Text(text = "Hello, $name!", fontSize = 24.sp)
}

@Preview
@Composable
fun PreviewGreeting() {
    MaterialTheme {
        Surface {
            Greeting("Jetpack Compose")
        }
    }
}
```

또한 예시 코드를 살펴보면, `name`이라는 매개변수를 두고 하나의 요소를 재사용 할 수 있는 점으로 보아 `React`에서 컴포넌트를 구현하는 방법과 유사한 것을 살펴볼 수 있습니다.

이처럼 Jetpack Compose에는 다양한 특징과 장점이 있는데요. 구글에서는 Jetpack Compose의 장점을 다음과 같이 정리합니다.

## Jetpack Compose 장점

1. **더 간단하고 직관적인 코드**

- UI를 코드로 직접 작성하므로, XML과 코드를 별도로 관리할 필요가 없습니다.
- Kotlin의 문법을 활용하여 간결하고 읽기 쉬운 UI 코드를 작성할 수 있습니다.

2. **선언적 UI**

- 상태 기반 UI 업데이트를 통해 UI 변경 사항을 자동으로 반영할 수 있습니다.
- 코드의 가독성과 유지보수성이 향상됩니다.

3. **재사용성과 모듈화**

- @Composable 함수를 통해 UI 컴포넌트를 정의하고 재사용할 수 있습니다.
- 작은 단위의 컴포저블을 작성하여 모듈화된 UI 설계를 할 수 있습니다.

4. **성능**

- Jetpack Compose는 효율적인 UI 렌더링을 위해 설계되었습니다.
- UI 요소가 상태 변화에 따라 필요할 때만 업데이트되므로 불필요한 렌더링을 최소화할 수 있습니다.

# Jetpack Compose를 선택한 이유

저희 프론트엔드 팀은 에그로그를 기점으로 네이티브 앱 개발에 들어서게 되었습니다. 따라서 기술 선택에 많은 선택지가 있었습니다.  
XML와 Jetpack Compose 두 선택지를 가지고 `범용적으로 사용되면서 정보가 많은 XML`을 선택하느냐, `새롭게 떠오르는 기술로서 장점이 많은 Jetpack Compose`를 선택하느냐에 대한 고민을 했습니다.

여러 장단점을 고민한 결과, 코드의 재사용성을 높일 수 있고 저희 팀이 고려한 atomic design system을 적용할 수 있으며 신기술을 학습할 수 있는 기회가 될 수 있는 `Jetpack Compose`를 선택하게 되었습니다.

# 마치며

에그로그 앱을 개발하면서 Compose를 활용함으로써 코드 생산성이 크게 향상된다는 것을 느꼈습니다. 또한 UI 요소의 재사용성과 상태 관리를 손쉽게 처리할 수 있어 유지보수에도 큰 도움이 되었습니다. 앞으로도 Jetpack Compose를 활용하여 더 나은 사용자 경험을 제공할 수 있도록 노력하겠습니다.

긴 글 읽어주셔서 감사합니다!
