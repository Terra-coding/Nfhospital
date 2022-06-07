<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>병원개요 | 서울병원</title>
    <link rel="stylesheet" href="asset/css/intro.css">
    <link rel="stylesheet" href="asset/css/KDHfooter.css">
    <link rel="stylesheet" href="asset/css/aside.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrap">
        <a href="#content" class="skipToContent">본문으로 바로가기</a>
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
                            <a href="mainpage.jsp">로그아웃</a>
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
                        <li>
                            <a>진료안내</a>
                        </li>
                        <li>
                            <a>이용안내</a>
                        </li>
                        <li>
                            <a>고객참여</a>
                        </li>
                        <li>
                            <a>병원소개</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        <div class="contTopBar" style="position: fixed; top: 130px;">
            <!-- innerWrap -->
            <div class="innerWrap clearFix">
                <div class="breadcrumb">
                    <strong class="hideEl">현재 위치: </strong>
                    <a href="mainpage.jsp" class="bcHomeBtn hideTxt">HOME</a>
                    <span class="hideEl">&gt;</span>
                    
                    <div class="" id="first">
                        <em>병원소개</em>
                        <button type="button" class="bcLinkLayerBtn hideTxt">주 메뉴 목록 열기</button>
                        <!-- bcLinkLayer -->
                        <ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;">
                                
                            <li><a href="medicalInfo.jsp">진료안내</a></li>
                            <li><a href="allFAQ.jsp">이용안내</a></li>
                            <li><a href="clientSound.jsp">고객참여</a></li>
                            <li><a href="intro.jsp">병원소개</a></li>
                            
                        </ul>
                        <!-- //bcLinkLayer -->
                    </div>
                    <span class="hideEl">&gt;</span>
                    <div class="">
                        <em>병원개요</em>
                    </div>
                    <span class="hideEl">&gt;</span>
                    
                    
                </div>
                <ul class="bcQuickMenu">
                    <li class=""><a href="reservation.jsp">진료예약</a></li>
                    <li><a href="newreservation.jsp">예약조회</a></li>
                </ul>
                <!-- //bcQuickMenu -->
            </div>
            <!-- //innerWrap -->
        </div>
        <div class="contUtilMenuWrap">
            <ul class="contUtilMenu">
                <li class="pagePrint" style="display: list-item;">
                    <a href="" role="button">인쇄</a>
                </li>
                <li class="likeContent">
                    <a href="" role="button" id="interestCont" onclick="append()">관심콘텐츠</a>
                </li>
                <li class="copyURL lastChild" style="display: list-item;">
                    <a href="" role="button" onclick="paste()">URL복사</a>                    
                </li>
                <li class="zoomOut" style="display: list-item;">
                    <button type="button" class="hideTxt" disabled></button>
                </li>
                <li class="zoomIn" style="display: list-item;">
                    <button type="button" class="hideTxt"></button>
                </li>
            </ul>
        </div>
        <main id="content" class="overviewContent replaceUtilMenu">
            <div class="contHeadingWrap">
                <h2>병원개요</h2>
            </div>
            <div class="contTitleWrap">
                <h3>서울병원의 어제 오늘 그리고 미래</h3>
            </div>
            <div class="imgWrap1">
                <img src="http://www.snuh.org/asset/img/about/img_overview01.jpg">
            </div>
            <p class="lightTxtIntro">
                지난 한세기 서울병원은 국민의 건강과 생명을 지키고
                <br>
                우리나라 의학발전을 선도해 왔습니다.
            </p>
            <p>
                1885년, 한국 최초의 서양식 국립병원인 제중원에서 출발하여
                <br>
                1978년, 특수법인 서울병원으로 개편해 오늘에 이르고 있습니다.
            </p>
            <p>
                현재 서울병원은 본원을 비롯한 어린이병원, 암병원 그리고 의생명연구원
                으로 구성되어 있습니다. 1,751개 병상을 운영하고 있으며 1일&nbsp;9,000명의
                 외래환자를 1,800명의 의사 등 8천명의 직원이 돌보고 있습니다.
            </p>
            <p>
                서울병원은 인류의 건강을 수호하는 세계 속의 병원으로 힘차게 전진해
                나가고 있으며,
                <br>
                특히
                <span class="colorPoint">‘BreakThrough21 대한민국 의료를 세계로’</span>
                라는 비전을 선포하고 환자중심의 병원으로 거듭나고자 한뜻으로 매진하고 있습니다.
            </p>
            <div class="contTitleWrap">
                <h3>설립목적</h3>
            </div>
            <div class="imgWrap2">
                <img src="http://www.snuh.org/asset/img/about/img_mission.png" alt="교육, 연구, 진료">
            </div>
            <div class="contTextWrap alignC">
                <p>
                    서울병원은 교육법에 의한 의학, 간호학 및 약학 등에 관한 교육, 
                    연구와 진료를 통하여
                    <br>
                    의학발전을 도모하고 국민보건향상에 기여함을 목적으로 한다.
                </p>
            </div>
            <div class="contTitleWrap">
                <h3>기능</h3>
            </div>
            <div class="alignC">
                <img src="http://www.snuh.org/asset/img/about/img_overview02.jpg" alt="1.서울대학교 의학, 간호학 및 약학 등 학생의 임상교육, 2.전공의 수련 및 의료요원 훈련, 3.의학, 간호학, 약학 등의 연구, 4.임상연구, 5.진료사업, 6.국민보건향상에 관한 사업전개">
            </div>
        </main>
        <aside id="aside" class="asideWrap" style="position: absolute; top: 180px;">
            <h2>관련 콘텐츠</h2>
            <!-- asideContList -->
            <ul class="asideContList">
        
                
        
                
                    <!-- <li class=""><a href="/join/client.do">고객의소리 등록</a></li>
                
                    <li class=""><a href="/content/M004001002.do">고객상담실 업무안내</a></li>
                 -->
            </ul>
            <!-- //asideContList -->
            <h2>자주 찾는 서비스</h2>
            <!-- asideServiceList -->
            <ul class="asideServiceList clearFix">
                
                    <li class=""><a href="mainpage.jsp">본원</a></li>
                
                    <li class=""><a href="reservation.jsp">진료예약</a></li>
                
                    <li class=""><a href="medicalInfo.jsp">진료안내</a></li>
                
                    <li class=""><a href="newreservation.jsp">외래예약확인</a></li>
                
            </ul>
            <!-- //asideServiceList -->
            <!-- outcomesTab -->
            
            <!-- //outcomesTab -->
            <!-- phoneNum -->
            <ul class="phoneNum">
                <!-- <li class="b">
                    <span>진료예약</span>
                    <strong>1588-5700</strong>
                </li>
                <li class="b">
                    <span>대표전화</span>
                    <strong>02-2072-2114</strong>
                </li> -->
                <li class="">
                    <span>대표전화</span>
                    <strong>1234-1234</strong>
                </li>
                
            </ul>
            <!-- //phoneNum -->
            <a href="#" class="btnTop">
                <img src="http://www.snuh.org/asset/img/common/img_top.png" alt="TOP">
            </a>
        </aside>
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
<script src="asset/js/intro.js"></script>
<script src="asset/js/aside.js"></script>
</html>