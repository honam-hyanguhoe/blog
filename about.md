---
layout: page
title: About
description: This page describes monochrome.
---
## About
에그로그 팀 소개 

## Features

- Completely responsive and mobile first
- Clean SEO friendly URLs, auto-generated from post title (no messy dates in the url)
- SEO title/description integration
- Sitemap ready
- Easy customization for header, footer, navigation links, colors, favicon etc
- Default Monochrome Color Palette - black, white, greys

<div style="display: grid; grid-template-columns: 1fr 2fr;">
<div id="content-options" style="background-color: #009999">
<ul>
    <li value="1" onclick="changeContent(event)">1</li>
    <li value="2" onclick="changeContent(event)">2</li>
    <li value="3" onclick="changeContent(event)">3</li>
</ul>
</div>
<div id="content-body" style="background-color: #445588">
</div>
</div>
<script>
const changeContent = (e) => {
    let element = document.getElementById("content-body");
    element.innerHTML = `<span>${e.target.getAttribute("value")}</span>`;
    console.log(e.target.getAttribute("value"));
}
</script>



