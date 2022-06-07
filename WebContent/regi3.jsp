<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="asset/css/KDHfooter.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    
    <title>회원가입</title>
    <style>
    body {
	color: #000;
    font-size: 16px;
    word-spacing: -0.5px;
    letter-spacing: -1px;
    font-family: 'Noto Sans KR', sans-serif;
}
  *{
    vertical-align: baseline;
    margin: 0;
    padding: 0;
    border-radius: 0;
    text-size-adjust: none;
    list-style: none;
    font-weight: 400;
    font-family: 'Noto Sans KR', sans-serif;
    outline: 0!important;
}

#wrap {
    overflow: hidden;
    position: relative;
    min-width: 1120px;
    background-color: #fff;
}

#header {
    left: 0;
    z-index: 105;
    width: 100%;
    height: 129px;
    border-bottom: 1px solid #fff;
    background-color: #fff;
    position: fixed;
    top: 0px;
}

#header:before, #header > .b {
    content: '';
    position: absolute;
    top: 59px;
    right: 0;
    left: 0;
    height: 1px;
    background-color: #ebebeb;
}

#header h1 {
    display: block;
    position: relative;
    top: 18px;
    width: 239px;
    height: 25px;
    margin: auto;
}

.innerwrap{
    padding: 0 10px;
    position: relative;
    width: 1100px;
    height: 130px;
    margin: auto;
}

#header h1 a{
    display: block;
    position: relative;
    top: -12px;
    right: -10px;
    width: 239px;
    height: 25px;
    margin: auto;
     font-weight: 700;
    color: #2763ba;
}

#header .topLeftWrap {
    position: absolute;
    top: 18px;
    left: 9px;
    z-index: 100;
}



#header .topLeftWrap a {
    display: block;
    position: relative;
    width: 160px;
    height: 25px;
    margin: auto;
}

.topMenuWrap {
    position: absolute;
    top: 18px;
    right: 9px;
    z-index: 100;
}

.topMenuWrap ul, .topMenuWrap li {
    float: left;
    padding: 0;
    margin: 0;
}

.utilMenu {
    margin: 2px 20px 0 0;
}

.utilMenu a, .utilMenu label {
    color: #000;
    font-size: 14px;
}

.topMenuWrap li{
    list-style: none;
}

.topMenu li {
    margin-right: 13px;
}

#gnb{
    position: relative;
    width: 1100px;
    margin: auto;
}

#gnb > button[class*=tot]{
    position: absolute;
    top: 70px;
    border: 0;
    background-color: transparent;
}

.totMenuBtn{
    left: 0;
    width: 30px;
    height: 22px;
    margin-top: -11px;
    background: url("http://www.snuh.org/asset/img/common/spr_common.png") no-repeat 0 -27px;
}

.gnbList {
    height: 70px;
    margin: 0 100px;
    text-align: center;
    top: 35px;
    position: absolute;
    left: 97px;
}


.gnbList > li {
    display: inline-block;
    margin: 10px 25px;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: 700;
}

.gnbList * {
    text-align: left;
}

.gnbList > li > a {
    display: inline-block;
    padding: 10px;
    font-size: 20px;
    transition: .2s color;
    font-weight: 700;
}
/* hearder끝 */

/* TopBar 시작*/
.contTopBar{
    z-index: 99;
    width: 100%;
    height: 50px;
    background-color: #2763ba;
}

.clearFix:before, .clearFix:after, .clearFix > .b, .clearFix > .a{
    content: ' ';
    display: table;
}

.breadcrumb{
    float: left;
}

.hideEl, .pagination [class*=Btn] span{
    position: absolute;
    overflow: hidden;
    width: 1px;
    height: 1px;
    border: none;
    clip: rect(1px,1px,1px,1px);
}

.bcHomeBtn{
    position: relative;
    width: 48px;
    border: 1px solid #5d8acb;
    border-width: 0 1px;
}

.bcHomeBtn, .breadcrumb > div{
    float: left;
    height: 50px;
    line-height: 50px;
}

.bcHomeBtn:before, .bcHomeBtn > .b{
    content: ' ';
    position: absolute;
    top: 50%;
    left: 50%;
    width: 18px;
    height: 16px;
    margin: -9px 0 0 -8px;
    background: url("http://www.snuh.org/asset/img/common/spr_common.png") no-repeat -110px -73px;
}

.breadcrumb > div{
    position: relative;
    min-width: 188px;
    max-width: 250px;
    max-width: 300px;
    border-right: 1px solid #5d8acb;
}

.breadcrumb em{
    display: block;
    padding: 0 51px 0 20px;
    color: #fff;
    font-style: normal;
}

.ellipsisTxt, .breadcrumb em, .bcLinkLayer a, .newsPaperImg em, .ellipsisTit[class*=boardTypeImg] em, .boardTypeTbl td a{
    overflow: hidden;
    max-width: 100%;
    text-overflow: ellipsis;
    white-space: nowrap;
}



.bcLinkLayerBtn{
    position: absolute;
    top: 0;
    left: 0;
    z-index: 5;
    width: 100%;
    height: 100%;
    border: 0;
    background-color: transparent;
    cursor: pointer;
}

.bcLinkLayer{
    display: none;
    position: absolute;
    top: 50px;
    right: -1px;
    left: -1px;
    border-top: 1px solid #ccc;
    background-color: #fff;
}

.breadcrumb > div:after, .breadcrumb > div > .a{
    content: ' ';
    position: absolute;
    top: 50%;
    right: 20px;
    width: 11px;
    height: 6px;
    margin-top: -3px;
    background: url("http://www.snuh.org/asset/img/common/spr_common.png") no-repeat -65px -27px;
}

.bcLinkLayer a{
    display: block;
    height: 48px;
    padding: 0 20px;
    border: 1px solid #ccc;
    border-top: 0;
    line-height: 48px;
    transition: .3s color;
}

.bcQuickMenu{
    float: right!important;
    width: 220px!important;
    margin-right: -18px!important;
    padding: 0 18px!important;
    text-align: center!important;
    background: url("http://www.snuh.org/asset/img/common/bg_bcQuickMenu.png") no-repeat 0 0!important;
}

.bcQuickMenu li{
    float: left;
    position: relative;
    width: 50%;
}

.bcQuickMenu a{
    display: block;
    height: 50px;
    color: #fff;
    line-height: 50px;
    background-color: transparent;
}

/* TopBar끝 */

.contTopBar {
    position: fixed;
    top: 130px;
    z-index: 99;
    width: 100%;
    height: 50px;
    background-color: #2763ba;
}

.breadcrumb {
    float: left;
}

.contUtilMenuWrap {
    overflow: hidden;
    position: relative;
    z-index: 1;
    width: 800px;
    height: 30px;
    margin: 264px auto 0;
}

#content{
    min-height: 800px;
    word-spacing: 0;
    letter-spacing: -.5px;
    width: 1090px;
    margin: auto;
}

#content.replaceUtilMenu {
    margin-top: -48px;
    padding-top: 0;
}

.contHeadingWrap {
	height:300px;
    overflow: hidden;
    margin: -12px 0 9px;
    top: 248px;
}

.contHeadingWrap > :first-child {
    float: left;
    font-size: 40px;
    letter-spacing: -2px;
}

[class*=tabType] {
    position: relative;
    margin: 50px 0 40px;
}

[class*=tabType] ul {
    position: relative;
    width: 100%;
}

.tabTypeCol2 li {
    width: 47%;
}

[class*=tabType] li {
    float: left;
    position: absolute;
}

[class*=tabType] .current a {
    border-color: #2263bb;
    color: #fff;
    background-color: #2263bb;
}

[class*=tabType] li:first-child a {
    margin-left: 0;
}

[class*=tabType] a {
    display: block;
    height: 48px;
    margin-left: -1px;
    border: 1px solid #ccc;
    border-bottom-color: transparent;
    color: #666;
    text-align: center;
    line-height: 48px;
}

.topMenu a {
    cursor:pointer; 
    text-decoration:none; 
    color: inherit;
}

.gnbList a {
    cursor:pointer; 
    text-decoration:none; 
    color: inherit;
}

/* footer */
* {
    font-family: 'Noto Sans KR Regular','Noto Sans CJK KR','Noto Sans KR','맑은 고딕',sans-serif;
}

#wrap {
    overflow: hidden;
    position: relative;
    min-width: 1120px;
    background-color: #fff;
}

#header {
    left: 0;
    z-index: 105;
    width: 100%;
    height: 129px;
    border-bottom: 1px solid #fff;
    background-color: #fff;
    position: fixed;
    top: 0px;
}

#header:before, #header > .b {
    content: '';
    position: absolute;
    top: 59px;
    right: 0;
    left: 0;
    height: 1px;
    background-color: #ebebeb;
}

#header h1 {
    display: block;
    position: relative;
    top: 18px;
    width: 239px;
    height: 25px;
    margin: auto;
}

.innerwrap{
    padding: 0 10px;
    position: relative;
    width: 1100px;
    margin: auto;
}

#header .topLeftWrap {
    position: absolute;
    top: 18px;
    left: 9px;
    z-index: 100;
}

#header .topLeftWrap a {
    display: block;
    position: relative;
    width: 160px;
    height: 25px;
    margin: auto;
}

.topMenuWrap {
    position: absolute;
    top: 18px;
    right: 9px;
    z-index: 100;
}

.topMenuWrap ul, .topMenuWrap li {
    float: left;
    padding: 0;
    margin: 0;
}

.utilMenu {
    margin: 2px 20px 0 0;
}

.utilMenu a, .utilMenu label {
    color: #000;
    font-size: 14px;
}

.topMenuWrap li{
    list-style: none;
}

.topMenu li {
    margin-right: 13px;
}

#gnb{
    position: relative;
    width: 1100px;
    margin: auto;
}

.gnbList {
    height: 70px;
    margin: 0 100px;
    text-align: center;
    top: 58px;
    position: absolute;
    left: 28px;
}


.gnbList > li {
    display: inline-block;
    margin: 10px 25px;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: 700;
}

.gnbList * {
    text-align: left;
}

.gnbList > li > a {
    display: inline-block;
    padding: 10px;
    font-size: 20px;
    transition: .2s color;
}

.breadcrumb {
    float: left;
}

.contUtilMenuWrap {
    overflow: hidden;
    position: relative;
    z-index: 1;
    width: 800px;
    height: 30px;
    margin: 264px auto 0;
}

#content{
    min-height: 800px;
    word-spacing: 0;
    letter-spacing: -.5px;
    width: 1090px;
    margin: auto;
}

#content.replaceUtilMenu {
    margin-top: -48px;
    padding-top: 0;
}

.contHeadingWrap {
    overflow: hidden;
    margin: -12px 0 9px;
    top: 248px;
}

.contHeadingWrap > :first-child {
    float: left;
    font-size: 40px;
    letter-spacing: -2px;
}

[class*=tabType] {
    position: relative;
    margin: 50px 0 40px;
}

[class*=tabType] ul {
    position: relative;
    width: 100%;
}

.tabTypeCol2 li {
    width: 47%;
}

[class*=tabType] li {
    float: left;
    position: absolute;
}

[class*=tabType] .current a {
    border-color: #2263bb;
    color: #fff;
    background-color: #2263bb;
}

[class*=tabType] li:first-child a {
    margin-left: 0;
}

[class*=tabType] a {
    display: block;
    height: 48px;
    margin-left: -1px;
    border: 1px solid #ccc;
    border-bottom-color: transparent;
    color: #666;
    text-align: center;
    line-height: 48px;
}

.topMenu a {
    cursor:pointer; 
    text-decoration:none; 
    color: inherit;
}

.gnbList a {
    cursor:pointer; 
    text-decoration:none; 
    color: inherit;
}

/* footer */

#wrap {
    overflow: hidden;
    position: relative;
    min-width: 1120px;
    background-color: #fff;
}

#header {
    left: 0;
    z-index: 105;
    width: 100%;
    height: 129px;
    border-bottom: 1px solid #fff;
    background-color: #fff;
    position: fixed;
    top: 0px;
}

#header:before, #header > .b {
    content: '';
    position: absolute;
    top: 59px;
    right: 0;
    left: 0;
    height: 1px;
    background-color: #ebebeb;
}

#header h1 {
    display: block;
    position: relative;
    top: 18px;
    width: 239px;
    height: 25px;
    margin: auto;
}

.innerwrap{
    padding: 0 10px;
    position: relative;
    width: 1100px;
    margin: auto;
}

#header .topLeftWrap {
    position: absolute;
    top: 18px;
    left: 9px;
    z-index: 100;
}

#header .topLeftWrap a {
    display: block;
    position: relative;
    width: 160px;
    height: 25px;
    margin: auto;
}

.topMenuWrap {
    position: absolute;
    top: 18px;
    right: 9px;
    z-index: 100;
}

.topMenuWrap ul, .topMenuWrap li {
    float: left;
    padding: 0;
    margin: 0;
}

.utilMenu {
    margin: 2px 20px 0 0;
}

.utilMenu a, .utilMenu label {
    color: #000;
    font-size: 14px;
}

.topMenuWrap li{
    list-style: none;
}

.topMenu li {
    margin-right: 13px;
}

#gnb{
    position: relative;
    width: 1100px;
    margin: auto;
}

.gnbList {
   height: 70px;
    margin: 0 100px;
    text-align: center;
    top: 35px;
    position: absolute;
    left: 97px;
}


.gnbList > li {
    display: inline-block;
    margin: 10px 25px;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: 700;
}

.gnbList * {
    text-align: left;
}

.gnbList > li > a {
    display: inline-block;
    padding: 10px;
    font-size: 20px;
    transition: .2s color;
}

.contTopBar {
    position: fixed;
    top: 130px;
    z-index: 99;
    width: 100%;
    height: 50px;
    background-color: #2763ba;
}

.breadcrumb {
    float: left;
}

.contUtilMenuWrap {
    overflow: hidden;
    position: relative;
    z-index: 1;
    width: 800px;
    height: 30px;
    margin: 264px auto 0;
}

#content{
    min-height: 800px;
    word-spacing: 0;
    letter-spacing: -.5px;
    width: 1090px;
    margin: auto;
}

#content.replaceUtilMenu {
    margin-top: -48px;
    padding-top: 0;
}

.contHeadingWrap {
    overflow: hidden;
    margin: -12px 0 9px;
    top: 248px;
}

.contHeadingWrap > :first-child {
    float: left;
    font-size: 40px;
    letter-spacing: -2px;
}

[class*=tabType] {
    position: relative;
    margin: 50px 0 40px;
}

[class*=tabType] ul {
    position: relative;
    width: 100%;
}

.tabTypeCol2 li {
    width: 47%;
}

[class*=tabType] li {
    float: left;
    position: absolute;
}

[class*=tabType] .current a {
    border-color: #2263bb;
    color: #fff;
    background-color: #2263bb;
}

[class*=tabType] li:first-child a {
    margin-left: 0;
}

[class*=tabType] a {
    display: block;
    height: 48px;
    margin-left: -1px;
    border: 1px solid #ccc;
    border-bottom-color: transparent;
    color: #666;
    text-align: center;
    line-height: 48px;
}

.topMenu a {
    cursor:pointer; 
    text-decoration:none; 
    color: inherit;
}

.gnbList a {
    cursor:pointer; 
    text-decoration:none; 
    color: inherit;
}

/* footer */

#footer {
    margin-top: 100px;
    background-color: #31354e;
    font-weight: 700;
}


.innerWrap {
    padding: 0 10px;
    position: relative;
    width: 1100px;
    margin: auto;
}
.footerLink {
    position: relative;
    left: -18px;
    height: 59px;
    margin: auto;
}

#footer .colorPoint04 {
    color: #a4e1ff!important;
}


.footerInfo address {
    display: block;
}

.footerInfo address p {
    float: left;
}

.footerInfo address p {
    color: #999;
    font-size: 14px;
}

.footerInfo address p + p {
    margin: 0 0 0 15px;
}

.footerInfo address a {
    color: #999;
}

.copyright {
    margin-top: 6px;
    letter-spacing: 0;
}

.copyright {
    color: #999;
    font-size: 14px;
}

.awardList {
    position: absolute;
    top: 4px;
    right: 10px;
}

#footer li {
    float: left;
    list-style: none;
}

.hideTxt{
    overflow: hidden;
    color: transparent;
    text-indent: 100%;
    white-space: nowrap;
}

.awardList .item05 a {
    width: 144px;
    background-position: -124px -176px;
}

.awardList a {
    display: block;
    width: 133px;
    height: 32px;
}

.awardList li + li {
    margin-left: 30px;
}

.awardList .item04 a {
    width: 129px;
    background-position: -337px -160px;
}

.awardList a {
    display: block;
    height: 32px;
}

/* main */

.stepWrap li.current {
    border-color: #2763ba;
    color: #fff;
    background: #2763ba;
}

.stepWrap li:first-child {
    margin-left: 0;
}

.stepWrap li {
    float: left;
    width: 318px;
    margin-left: -1px;
    padding: 20px 0 18px 30px;
    border: 1px solid #ccc;
    color: #ccc;
    font-size: 22px;
    list-style: none;
}

.stepWrap li.current b {
    color: #8eb3e8;
}

.stepWrap li b {
    display: block;
    margin-top: -2px;
    font-size: 20px;
}

.confirmWrap {
    margin-top: 70px;
    position: absolute;
    width: 1090px;
}

.confirmWrap p{
    margin-bottom: 9px;
    color: #31354e;
    font-size: 33px;
    text-align: center;
    letter-spacing: -1.3px;
    font-weight: 700;
}

.stepWrap {
    margin-top: 25px;
    margin-bottom: 56px;
}

.btnWrap02 {
    margin-top: 190px;
}

[class*=btnType] {
    overflow: visible;
    vertical-align: top;
    padding: 5px 35px;
    font-size: 16px;
    text-align: center;
    line-height: 38px;
    cursor: pointer;
}

.btnType03 {
    border: 1px solid #2263bb;
    color: #fff;
    background-color: #2263bb;
    text-decoration: none;
}
    
  .hideTxt{
    overflow: hidden;
    color: transparent;
    text-indent: 100%;
    white-space: nowrap;
}  
    
    /* 네비게이션바 시작 */
.gnbList {
    height: 70px;
    margin: 0px 292px;
    text-align: center;
    top: 35px;
    position: absolute;
    left: -80px;
    width: 585.22px;
}

div.subList{
	position: absolute;
    top: 69px;
    background-color: #fff;
    left: -3px;
    margin: 0;
    width: 143px;
    height: 257px;
    box-sizing: border-box;
    border: 1px solid #cccccc;
    margin-right: 3px;
    margin-left: 3px;
    float: left;
    visibility: hidden;
    cursor: pointer;
}


 div.subList a{
	padding: 0px;
    text-align: center;
    width: 100%;
    display: block;
}

div.subList .strongs{
	font-size: 16px;
    font-weight: 700;
    text-align: center;
}

div.subList .weaks{
	font-size: 16px;
	font-weight: 100;
	color: #888;
}

.pack, .strongs{
	margin-top: 10px;
    margin-bottom: 5px;
}

 .top{
	margin-top: 22px;
} 

/* #information3{
	top: -78px!important;
} */

#information2, #information4{
	height: 80px;
} 

#information2{
	left: 145px;
}

#information3{
	height: 200px;
	left: 292px;
}

#information4{
	left: 439px;
}

.selected{
	border-bottom: 4px solid #2263bb!important;
}

.line::before{
	    content: ' ';
    position: absolute;
    visibility: visible;
    width: 73.609px;
    top: -5px;
    left: 34px;
    height: 4px;
    background-color: #2263bb;
    pointer-events: none;
}

.gnbList > li{
	width: 93.609px;
}

/* 네비게이션바 끝 */
    </style>
</head>
<body>
   	
     	<div id="wrap">
     	<header id="header">
            <div class="innerwrap">
                <h1><a href="mainpage.jsp">서울 병원</a></h1>
                <div class="topLeftWrap">
                    <a href="mainpage.jsp">
	                	<img src="./asset/img/hospital_logo.png" style="width: 30px; height: 30px;">
                    </a>
                </div>
                <div class="topMenuWrap">
                    <ul class="utilMenu">
                        <li>
                            <a style="margin-right: 16px;">원격</a>
                        </li>
                    </ul>
                    <ul class="topMenu">
                        <li>
                            <a href="${pageContext.request.contextPath}/MemberLogin.me">로그인</a>
                        </li>
                        <li>
                            <a href="mypage.jsp">마이페이지</a>
                        </li>
                        <li>
                            <a>Language</a>
                        </li>
                    </ul>
                </div>
                <nav id="gnb" class>
<!--                     <button class="totMenuBtn hideTxt" type="button" aria-controls="totMenu">
                    </button> -->
                    <!-- 전체 메뉴 아이콘 집어넣어야함 -->
                    <button class="totMenuBtn hideTxt" type="button" aria-controls="totMenu">전체 메뉴 열기</button>
                    <ul class="gnbList clearFix">
                        <li id="first" class="set">
                            <a>진료안내</a>
	                        <div class="subList first" id="information1">
	                            <div class="strongs top">진료안내</div>
			                    <a class="weaks pack" href="${pageContext.request.contextPath}/medicalInfo.jsp">진료예약</a>
			                    <a class="weaks pack" href="${pageContext.request.contextPath}/medicalProcess.jsp">외래진료프로세스</a>
	                            <c:if test="${empty name}">
	                            <a class="strongs" href="${pageContext.request.contextPath}/MemberLogin.me">인터넷 진료예약</a>
	                            </c:if>
	                            <c:if test="${not empty name}">
	                            <a class="strongs" href="${pageContext.request.contextPath}/reservation.jsp">인터넷 진료예약</a>
	                            </c:if>
	                            <div class="strongs">예약확인/취소</div>
	                             <c:if test="${empty name}">
	                            <a class="weaks pack" href="${pageContext.request.contextPath}/MemberLogin.me">진료예약확인</a>
	                            </c:if>
	                            <c:if test="${not empty name}">
	                            <a class="weaks pack" href="${pageContext.request.contextPath}/newreservation.jsp">진료예약확인</a>
	                       		</c:if>
	                        </div>
                        </li>
                        <li id="second" class="set">
                            <a>이용안내</a>
                            <div class="subList more second" id="information2">
                            <a class="strongs top" href="${pageContext.request.contextPath}/allFAQ.jsp">FAQ(통합)</a>
                        </div>
                        </li>
                        <li id="third" class="set">
                            <a>고객참여</a>
                            <div class="subList more third" id="information3">
                             <div class="strongs top">고객의 소리</div>
                             <a class="weaks pack" href="${pageContext.request.contextPath}/clientSound.jsp">고객의 소리 등록</a>
			                 <a class="weaks pack" href="${pageContext.request.contextPath}/clientConsultation.jsp">고객상담실 업무안내</a>
			                 <a class="weaks pack" href="${pageContext.request.contextPath}/allThanksView.jsp">감사이야기</a>
                        </div>
                        </li>
                        <li id="fourth" class="set">
                            <a>병원소개</a>
                            <div class="subList more fourth" id="information4">
                            <a class="strongs top" href="${pageContext.request.contextPath}/intro.jsp">병원개요</a>
                        </div> 
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        <div class="contTopBar" style="position: fixed; top: 130px;">
            <!-- innerWrap -->
            <div class="innerWrap clearFix">
                <!-- breadcrumb -->
                <div class="breadcrumb">
                    <strong class="hideEl">현재 위치: </strong>
                    <a href="/" class="bcHomeBtn hideTxt">HOME</a>
                    <span class="hideEl">&gt;</span>
                    
                    <!-- <div class="">
                        <em>이용안내</em>
                        <button type="button" class="bcLinkLayerBtn hideTxt">주 메뉴 목록 열기</button>
                        bcLinkLayer
                        <ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;">
                                
                            <li><a href="/reservation/meddept/main.do">진료안내</a></li>
                            <li><a href="/content/M002001001.do">이용안내</a></li>
                            <li><a href="/join/client.do">고객참여</a></li>
                            <li><a href="/content/M005001.do">병원소개</a></li>
                                
                        </ul>
                        //bcLinkLayer
                    </div> -->
                    <span class="hideEl">&gt;</span>
                    <!-- <div class="">
                        <em>FAQ(통합)</em>
                        <button type="button" class="bcLinkLayerBtn hideTxt">서브 메뉴 목록 열기</button>
                        bcLinkLayer
                        <ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;" tabindex="0">
					
                            <li><a href="/board/B005/list.do">FAQ(통합)</a></li>
                            
                        </ul>
                        //bcLinkLayer
                    </div> -->
                    <span class="hideEl">&gt;</span>
                </div>
                <!-- //breadcrumb -->
                <!-- bcQuickMenu -->
                <ul class="bcQuickMenu">
                    <li class=""><a href="reservation.jsp">진료예약</a></li>
                    <li><a href="newreservation.jsp">예약조회</a></li>
                </ul>
                <!-- //bcQuickMenu -->
            </div>
            <!-- //innerWrap -->
        </div>
        <main id="content" class="myPage replaceUtilMenu"> 
            <div class="contHeadingWrap">

                <h2>회원가입</h2>
            </div>
            <ul class="stepWrap clearFix">
                <li>
                    <b>STEP 01</b>
                    약관동의/본인인증                
                </li>
                <li>
                    <b>STEP 02</b>
                    회원정보                
                </li>
                <li class="current">
                    <b>STEP 03</b>
                    가입완료              
                </li>
            </ul>
            <div class="confirmWrap">
                <p>가입완료되었습니다 <span style="color: #2763ba"><%=request.getParameter("name")%></span>님 환영합니다!</p>
            </div>
            <div class="btnWrap02 alignC" style="padding-left: 497px; position: absolute;">
                <a href="mainpage.jsp" id="confirmBtn" role="button" class="btnType03">확인</a>
            </div>
            
       
        </main>
        <footer id="footer">
            <div class="ftMenuWrap">
                <div class="footerMenu">
                    <div class="innerWrap clearFix">
                        <ul class="ftMenuList01">
                            <li><a href="//child.snuh.org/main.do" target="_blank">어린이병원</a></li>
                            <li><a href="//cancer.snuh.org/main.do" target="_blank">암병원</a></li>
                            <li><a href="//www.snubh.org/" target="_blank">분당서울대병원</a></li>
                            <li><a href="//www.brmh.org/" target="_blank">보라매병원</a></li>
                            <li><a href="//healthcare.snuh.org/" target="_blank">강남센터</a></li>
                            <li><a href="http://medicine.snu.ac.kr" target="_blank">서울대학교의과대학</a></li>
                        </ul>
                        <ul class="ftMenuList02">
                            <li><a href="#ftMenuCol01" class="" title="진료과 메뉴 레이어 열기">진료과</a></li>
                            <li><a href="#ftMenuCol02" class="" title="주요센터 메뉴 레이어 열기">주요센터</a></li>
                            <li><a href="#ftMenuCol03" class="" title="주요부서 메뉴 레이어 열기">주요부서</a></li>
                            <li><a href="#ftMenuCol04" class="" title="주요서비스 메뉴 레이어 열기">주요서비스</a></li>
                            <li><a href="#ftMenuCol05" class="" title="패밀리사이트 메뉴 레이어 열기">패밀리사이트</a></li>
                        </ul>
                        <div class="ftMenuLayer clearFix" role="region" aria-hidden="true" aria-expanded="false" style="display: none; visibility: visible;"></div>
                    </div>
                </div>
            </div>
            <ul class="innerWrap footerLink">
                <li><a href="/reservation/unPaid/list.do" class="colorPoint04" target="_blank">비급여진료비용</a></li>
                <li><a href="/content/M004005.do" target="_blank">환자권리장전</a></li>
                <li><a href="/footer/service.do" target="_blank">이용약관</a></li>
                <li><a href="/footer/privacy.do" class="colorPoint04" target="_blank">개인정보 처리방침</a></li>
                <li><a href="/content/M004006002.do" target="_blank">정보공개</a></li>
                <li><a href="/" data-layer="layerEmail" class="layerBtn">정보무단수집거부공개</a></li>
                <li><a href="/" data-layer="layerDown" class="layerBtn">뷰어 다운로드</a></li>
                <li><a href="//nrefer.snuh.org" target="_blank">진료협력센터</a></li>
                <li><a href="//funeral.snuh.org/main.do" target="_blank">장례식장</a></li>
            </ul>
            <div class="footerInfo">
                <div class="innerWrap">
                    <address class="clearfix">
                        <p>주소 : 03080 서울특별시 종로구 대학로 101(연건동 28)</p>
                        <p>대표전화 : <a href="tel:1588-5700">1588-5700</a></p>
                        <p>
                            <a href="/login.do?retUrl=/content/M005009.do">홈페이지 의견접수</a>
                        </p>
                    </address>
                    <p class="copyright">COPYRIGHT 2010 SEOUL NATIONAL UNIVERSITY HOSPITAL. ALL RIGHTS RESERVED</p>
                    <ul class="awardList">
                        <li class="item05 hideTxt"><a href="/board/B003/view.do?viewType=true&ampbbs_no=5224">전자의무기록시스템</a></li>
                        <li class="item01 hideTxt"><a href="/board/B003/view.do?bbs_no=1509">보건복지부 제 1호</a></li>
                        <li class="item04 hideTxt" name="ismsTxt"><a href="#ismsTxt" class="ismsTxtBtn">서울대학교병원 정보보호 관리체계(ISMS) 인증
                            [유효기간] 2021.02.17 ~ 2024.02.16 
                            [인증범위] 의료정보시스템(EMR,OCS),홈페이지 및 모바일 애플리케이션  운영</a></li>
                    </ul>
                </div>
            </div>
            <div class="ftIsmsTxt">
                <p>서울대학교병원 정보보호 관리체계(ISMS) 인증<br>
                    [유효기간] 2021.02.17 ~ 2024.02.16<br> 
                    [인증범위] 의료정보시스템(EMR,OCS),홈페이지 및 모바일 애플리케이션 운영</p>
            </div>   
        </footer>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
/* 네비게이션 바 JS시작 */

$(".set").on("mouseover", function(){
		$(this).addClass('up');
		$(this).children('a').css("color", "#2263bb");
		if($(this).attr('id').match('first')){
			$(".second").removeClass('selected');
			$(".second").css("visibility", "hidden");
			$("#second").children('a').css("color", "#000");
   		$("#second").removeClass('up')
   		$(".second").removeClass('line')
   		
   		$(".third").removeClass('selected');
   		$(".third").css("visibility", "hidden");
   		$("#third").children('a').css("color", "#000");
	    	$("#third").removeClass('up')
   		$(".third").removeClass('line')
	    	
	    	$(".fourth").removeClass('selected');
   		$(".fourth").css("visibility", "hidden");
   		$("#fourth").children('a').css("color", "#000");
	    	$("#fourth").removeClass('up')
   		$(".fourth").removeClass('line')
		
	    	$(".first").addClass('selected');
			$(".first").css("visibility", "visible");
			$(".first").addClass('line');
			
		}else if($(this).attr('id').match('second')){
			$(".first").removeClass('selected');
			$(".first").css("visibility", "hidden");
   		$("#first").children('a').css("color", "#000");
   		$("#first").removeClass('up')
   		$(".first").removeClass('line')
   		
   		$(".third").removeClass('selected');
   		$(".third").css("visibility", "hidden");
   		$("#third").children('a').css("color", "#000");
	    	$("#third").removeClass('up')
	    	$(".third").removeClass('line')
	    	
	    	$(".fourth").removeClass('selected');
   		$(".fourth").css("visibility", "hidden");
   		$("#fourth").children('a').css("color", "#000");
	    	$("#fourth").removeClass('up')
	    	$(".fourth").removeClass('line')
			
	    	$(".second").addClass('selected');
			$(".second").css("visibility", "visible");
			$(".second").addClass('line');
			
		}else if($(this).attr('id').match('third')){
			$(".first").removeClass('selected');
			$(".first").css("visibility", "hidden");
   		$("#first").children('a').css("color", "#000");
   		$("#first").removeClass('up')
   		$(".first").removeClass('line')
			
   		$(".second").removeClass('selected');
   		$(".second").css("visibility", "hidden");
   		$("#second").children('a').css("color", "#000");
	    	$("#second").removeClass('up')
	    	$(".second").removeClass('line')
			
	    	$(".fourth").removeClass('selected');
   		$(".fourth").css("visibility", "hidden");
   		$("#fourth").children('a').css("color", "#000");
	    	$("#fourth").removeClass('up')
	    	$(".fourth").removeClass('line')
			
	    	$(".third").addClass('selected');
			$(".third").css("visibility", "visible");
			$(".third").addClass('line');

		}else if($(this).attr('id').match('fourth')){
			$(".first").removeClass('selected');
			$(".first").css("visibility", "hidden");
   		$("#first").children('a').css("color", "#000");
   		$("#first").removeClass('up')
   		$(".first").removeClass('line')
			
			$(".second").removeClass('selected');
   		$(".second").css("visibility", "hidden");
   		$("#second").children('a').css("color", "#000");
	    	$("#second").removeClass('up')
	    	$(".second").removeClass('line')
	    	
	    	$(".third").removeClass('selected');
   		$(".third").css("visibility", "hidden");
   		$("#third").children('a').css("color", "#000");
	    	$("#third").removeClass('up')
	    	$(".third").removeClass('line')
			
	    	$(".fourth").addClass('selected');
			$(".fourth").css("visibility", "visible");
			$(".fourth").addClass('line');

		}
		
		
});

   $(".subList").mouseleave(function(){
   		if($(this).attr('class').match('first')){
   			$(".first").removeClass('selected');
   			$(".first").css("visibility", "hidden");
   			$(".first").removeClass("line")
	    		$("#first").children('a').css("color", "#000");
	    		$("#first").removeClass('up')
   			
   		}else if($(this).attr('class').match('second')){
   			$(".second").removeClass('selected');
   			$(".second").css("visibility", "hidden");
   			$(".second").removeClass("line")
   			$("#second").children('a').css("color", "#000");
	    		$("#second").removeClass('up')
	    		
   		}else if($(this).attr('class').match('third')){
   			$(".third").removeClass('selected');
   			$(".third").css("visibility", "hidden");
   			$(".third").removeClass("line")
   			$("#third").children('a').css("color", "#000");
	    		$("#third").removeClass('up')
	    		
   		}else if($(this).attr('class').match('fourth')){
   			$(".fourth").removeClass('selected');
   			$(".fourth").css("visibility", "hidden");
   			$(".fourth").removeClass("line")
   			$("#fourth").children('a').css("color", "#000");
	    		$("#fourth").removeClass('up')
   		}
   })  
   
   $(".weaks").mouseover(function(){
   	$(this).css('color', "#2263bb");
   })

   $(".weaks").mouseout(function(){
   	$(this).css('color', "#888");
   })
   
   $("a[class='strongs']").mouseover(function(){
   	$(this).css('color', "#2263bb");
   })
   
   $("a[class='strongs']").mouseout(function(){
   	$(this).css('color', "#000");
   })
   
	$("a[class='strongs top']").mouseover(function(){
   	$(this).css('color', "#2263bb");
   })
   
   $("a[class='strongs top']").mouseout(function(){
   	$(this).css('color', "#000");
   })
  
    /* 네비게이션 바 JS끝 */
</script>
</html>