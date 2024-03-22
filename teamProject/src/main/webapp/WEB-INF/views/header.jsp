<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    body {
        margin: 0;
        padding: 0;
        color: #eee;
    }
    ul, li {
        list-style: none;
        margin: 0;
    }
    a {
        color: black;
        text-decoration: none;
    }
    .flex {
        display: flex;
    }
    .header_nav {
        width: 100%;
        background-color: #151618;
        margin: 0 auto;
    }
    .inner_con {
        max-width: 1400px;
        margin: 0 auto;
    }
    .sub_menu {
      display: flex;  
      width: auto;
      flex-wrap: wrap;
      justify-content: space-between;
      padding: 0 50px;
    }
    .sub_menu_li {
        display: inline-block;
        color: white;
        font-size: 16px;
        padding: 15px 0;
        text-align: center;
    }
    .sub_menu_li > a {
        color: white;
    }
    .sub_nav {
        padding: 0;
        margin: 0;
    }
    .gnb_dep {
        position: absolute;
        top: 50px;
        left: 50%;
        margin-left: -75px;
        width: 150px;
        overflow: hidden;
        transition: all 0.5s;
        padding: 25px 0;
        height: 0;
        opacity: 0;
        background: #000;
    }
    .header_img {
        width: 100%;
        height: 200px;
        background-image: url(
            https://blog.kakaocdn.net/dn/ulsEt/btqEkN33gv9/G8EcyCNGsk4Y41UPDiZ22k/img.jpg
        );
        background-position: 50% 20%;
        overflow: hidden;
        position: relative;
    }

    .header_main_nav {
        background-color: #151618;
        display: flex;
    }
    .header_top_logo {
        padding: 5px;
    }
    .header_top_main {
        color: white;
        align-items: center;
        text-align: center;
        margin: auto;
    }
    .header_profile {
        display: flex;
        justify-content: space-between;
        margin: auto;
        width: 100px;
    }
    .header_profile_img {
        border: 2px solid blue;
        border-radius: 50%;
    }
    </style>

    <style>
        .main {
            width: 1380px;
            border: 2px solid red;
            top: -40px;
            height: 4000px;
            position: relative;
            margin: auto;
        }
    </style>
</head>
<body>
    <header>
        <div class="header_main_nav">
            <a href="${cpath }" style="width: 180px;">
                <img src="
                            https://i.namu.wiki/i/Q2yS7PKGww04abPtNFHLS8npW_L0evvVmQkxqB0iRWA934Ecsea8rZPVZwh0eKJhj_quAfgLTCusaHCa4XVU2w.webp
                        "
                        width="40px"
                        class="header_top_logo">
                </a>
            <div class="header_top_main flex">
                <span style="font-weight: bold;">League of Legends Champions Korea</span>
            </div>
            <div style="width: 180px; padding: 5px;"> 
                <div class="header_profile">
                    <img src="
                                https://www.studiopeople.kr/common/img/default_profile.png
                            "
                            height="40px"
                            class="header_profile_img">
                    <div class="header_hambuger">
                        <img src="
                                https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaqp21hEdWBoLlJkP18uFqogFJSYzWZn6nTg&usqp=CAU
                            "
                            class="header_profile_img"
                            height="40px">
                    </div>
                </div>
            </div>
        </div>
        <nav class="header_nav">
            <div class="inner_con">
                <ul class="sub_menu">
                    <li class="sub_menu_li">
                        <a href="${cpath }">홈</a>
                        <div class="gnb_dep">
                            <ul class="sub_nav">
                                <li>Hm_1</li>
                                <li>Hm_2</li>
                                <li>Hm_3</li>
                            </ul>
                        </div>
                    </li>
                    <li class="sub_menu_li">
                        <a href="#">커뮤니티</a>
                        <div class="gnb_dep">
                            <ul class="sub_nav">
                                <li>Cu_1</li>
                                <li>Cu_2</li>
                                <li>Cu_3</li>
                            </ul>
                        </div>
                    </li>
                    <li class="sub_menu_li">
                        <a href="#">뉴스</a>
                        <div class="gnb_dep">
                            <ul class="sub_nav">
                                <li>sb_1</li>
                                <li>sb_2</li>
                                <li>sb_3</li>
                            </ul>
                        </div>
                    </li>
                    <li class="sub_menu_li">
                        <a href="${cpath }">일정</a>
                        <div class="gnb_dep">
                            <ul class="sub_nav">
                                <li>ck_1</li>
                                <li>ck_2</li>
                                <li>ck_3</li>
                            </ul>
                        </div>
                    </li>
                    <li class="sub_menu_li">
                        <a href="${cpath }/game/video">영상</a>
                        <div class="gnb_dep">
                            <ul class="sub_nav">
                                <li>vi_1</li>
                                <li>vi_2</li>
                                <li>vi_3</li>	
                            </ul>
                        </div>
                    </li>
                    <li class="sub_menu_li">
                        <a href="${cpath }/game/list/">순위</a>
                        <div class="gnb_dep">
                            <ul class="sub_nav">
                                <li>rn_1</li>
                                <li>rn_2</li>
                                <li>rn_3</li>
                            </ul>
                        </div>
                    </li>
                    <li class="sub_menu_li">
                        <a href="${cpath }/game/MVP">승부예측</a>
                        <div class="gnb_dep">
                            <ul class="sub_nav">
                                <li>wn_1</li>
                                <li>wn_2</li>
                                <li>wn_3</li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

    </header>

    <div class="header_img">

    </div>







</body>
</html>