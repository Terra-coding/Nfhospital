<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="asset/css/newreservation.css">
    <link rel="stylesheet" href="asset/css/KDHfooter.css">
    <title>진료기록현황</title>
</head>
<body>
    <div id="wrap">
        <a href="#content" class="skipToContent">본문으로 바로가기</a>
        <header id="header">
            <div class="innerwrap">
                <h1><a href="mainpage.jsp">서울병원</a></h1>
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
                        <c:if test="${empty name}">
                  <li><a href="${pageContext.request.contextPath}/MemberLogin.me" style="color: #000;">로그인</a></li>
               </c:if>
               <c:if test="${not empty name}">
                  <li><a href="${pageContext.request.contextPath}/LogOutOk.me" style="color: #000;">로그아웃</a></li>
               </c:if>
                        <li>
                            <a href="mainpage.html">마이페이지</a>
                        </li>
                        <li>
                            <a>Language</a>
                        </li>
                    </ul>
                </div>
                <nav id="gnb" class>

                    <button class="totMenuBtn hideTxt" type="button" aria-controls="totMenu">전체 메뉴 열기</button>
                    <ul class="gnbList clearFix">
                        <li>
                            <a href="medicalInfo.jsp">진료안내</a>
                        </li>
                        <li>
                            <a href="allFAQ.jsp">이용안내</a>
                        </li>
                       <li>
                            <a href="clientSound.jsp">고객참여</a>
                        </li>
                        <li>
                            <a href="intro.jsp">병원소개</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        <div class="contTopBar" style="position: fixed; top:130px;">
            <div class="innerWrap clearFix">
                <!-- breadcrumb -->
                <div class="breadcrumb">
                    <strong class="hideEl">현재 위치: </strong>
                    <a href="mainpage.jsp" class="bcHomeBtn hideTxt">HOME</a>
                    <span class="hideEl">&gt;</span>
                    
                    <div class="">
                        <em>마이페이지</em>
                        <button type="button" class="bcLinkLayerBtn hideTxt">주 메뉴 목록 열기</button>
                        <!-- bcLinkLayer -->
                        <ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;">
                                
                            <li><a href="mypage.jsp">마이페이지</a></li>
                            
                                
                        </ul>
                        <!-- //bcLinkLayer -->
                    </div>
                    <span class="hideEl">&gt;</span>
                    <div class="">
                        <em>예약확인/최소</em>
                        <button type="button" class="bcLinkLayerBtn hideTxt">서브 메뉴 목록 열기</button>
                        <!-- bcLinkLayer -->
                        <ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;" tabindex="0">
					
                            <li><a href="mypage.jsp">마이페이지</a></li>
                            <li><a href="allFAQ.jsp">예약확인/취소</a></li>
                            <li><a href="clientSound.jsp">개인정보수정</a></li>
                            <li><a href="intro.jsp">회원탈퇴</a></li>
                            
                        </ul>
                        <!-- //bcLinkLayer -->
                    </div>
                    <span class="hideEl">&gt;</span>
                </div>
                <!-- //breadcrumb -->
                <!-- bcQuickMenu -->
                <ul class="bcQuickMenu">
                    <li class=""><a href="reservation.jsp">진료예약</a></li>
                    <li><a href="newreservation.jsp">예약조회</a></li>
                </ul>
            </div>
        </div>
        <div class="contUtilMenuWrap">
            <ul class="contUtilMenu">
            </ul>
        </div>
        <main id="content" class="myPage replaceUtilMenu"> 
            <div class="contHeadingWrap">
                <h2>진료예약현황</h2>
            </div>
            <div>
                <ul class="tab_ul_section03">
                    <li id="info_tab1" class="on">
                        <a href="newreservation.jsp">진료예약현황</a>
                    </li>
                    <li id="info_tab1" >
                        <a href="prereservation.jsp" style="color: #495164;">이전진료기록</a>
                    </li>
                    <li id="info_tab1">
                        <a href="scription.jsp" style="color: #495164;">처방전발급현황</a>
                    </li>
                </ul>
                <div id="info_areal" style="position:relative;">
                    <h5 class="tit_h5">진료예약현황</h5>
                    <span class="bh_btn_blue_yk1">
                        <a href="m_reservation/reservation.html">추가진료예약</a>
                    </span>
                    <ul class="resConfirmList">
                        <li>
                            <!-- <a></a> -->
                            <img alt="강혜련" src="	https://www.snuh.org/upload/med/dr/1029516_01017_01.jpg">
                            <div class="resConfirm">
                                <span>인터넷예약</span>
                                &nbsp;
                                <!-- <em  style="font-style: normal;">신청일</em>
                                : 2022-05-19 -->
                            </div>
                            <div>
                                <strong>
                                    <span class="colorPoint"><%=request.getParameter("medicalDept")%></span>
                                    <span>
                                        <a><%=request.getParameter("doctor")%></a>
                                    </span>
                                </strong>
                            </div>
                            <div>
                                <p>
                                    <em style="font-style: normal;">진료일정</em>
                                    <%=request.getParameter("scheduleDate")%>
                                    <%-- <span><%=request.getParameter("scheduleDate")%></span> --%>
                                </p>
                                <p>
                                    <em style="font-style: normal;">위치</em>
                                    외래 2층
                                </p>
                            </div>
                            <div class="btnWrap">
                                <button type="button" class="btnType02" onclick>예약취소</button>
                            </div>
                        </li>
                    </ul>
                    <div class="boxTypeGray boxVtical">
                        <div style="margin-bottom: 13px; font-size: 25px;">
                            <strong class="boxTit">주의</strong>
                        </div>
                        <div class="txtWrap">
                            <p>
                                진료예약취소는
                                <span class="colorPoint">진료일 이전(자정)</span>
                                까지 가능합니다. (수납기록 및 검사예약이 없는 진료만 변경/취소가 가능)
                            </p>
                            <p>특정 진료과(방사선종양학과, 영상의학과, 마취통증의학과)의 예약이 조회되지 않을 수 있습니다.</p>
                            <p>
                                예약이 조회되지 않을 경우에는
                                <span class="colorPoint">예약센터</span>
                                나 해당 진료과로 문의해 주십시오.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
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
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="asset/js/allFAQ.js"></script>
</html>