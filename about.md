---
layout: page
title: About
description: This page describes monochrome.
---

## About
에그로그 팀 소개

## Features

<div class="container">
    <ul id="content-options">
        <li onclick="changeContent(event)">
            <img src="https://github.com/honam-hyanguhoe/blog/blob/main/_site/img/about/option_start.png?raw=true" data-img="https://github.com/honam-hyanguhoe/blog/blob/main/_site/img/about/start.png?raw=true">
        </li>
        <li onclick="changeContent(event)">
            <img src="https://github.com/honam-hyanguhoe/blog/blob/main/_site/img/about/option_prototype.png?raw=true" data-img="https://github.com/honam-hyanguhoe/blog/blob/main/_site/img/about/prototype.png?raw=true">
        </li>
        <li onclick="changeContent(event)">
            <img src="https://github.com/honam-hyanguhoe/blog/blob/main/_site/img/about/option_egglog_v1.png?raw=true" data-img="https://github.com/honam-hyanguhoe/blog/blob/main/_site/img/about/egglog_v1.png?raw=true">
        </li>
        <li onclick="changeContent(event)">
            <img src="https://github.com/honam-hyanguhoe/blog/blob/main/_site/img/about/option_egglog_v2.png?raw=true" data-img="https://github.com/honam-hyanguhoe/blog/blob/main/_site/img/about/sorry.png?raw=true">
        </li>
        <li onclick="changeContent(event)">
            <img src="https://github.com/honam-hyanguhoe/blog/blob/main/_site/img/about/option_next.png?raw=true" data-img="https://github.com/honam-hyanguhoe/blog/blob/main/_site/img/about/sorry.png?raw=true">
        </li>
    </ul>
    <div id="content-body">
        <img id="content-image" src="" alt="content image">
    </div>
</div>

<script>
    const changeContent = (e) => {
        let element = document.getElementById("content-image");
        let imgSrc = e.target.getAttribute("data-img");
        element.src = imgSrc;
    }
</script>

<style>
    body {
        font-family: Arial, sans-serif;
    }

    #content-options {
        list-style: none;
        padding: 0;
        margin: 0;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        height: auto;
    }

    #content-options li {
        margin: 0;
        padding: 0;
    }

    #content-options img {
        width: 100%;
        height: auto;
        cursor: pointer;
        display: block;
    }

    #content-body {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: auto;
    }

    #content-image {
        width: 100%;
        height: auto;
        object-fit: cover;
    }

    .container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 20px;
    }

    @media (min-width: 768px) {
        .container {
            flex-direction: row;
            align-items: flex-start;
        }

        #content-options {
            height: 785px;
            width: 608px;
        }

        #content-body {
            width: 634px;
            height: 785px;
        }
    }
</style>
