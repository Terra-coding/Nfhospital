<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>진료안내 | 서울병원</title>
    <link rel="stylesheet" href="asset/css/medicalInfo.css">
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
                <!-- breadcrumb -->
                <div class="breadcrumb">
                    <strong class="hideEl">현재 위치: </strong>
                    <a href="mainpage.jsp" class="bcHomeBtn hideTxt">HOME</a>
                    <span class="hideEl">&gt;</span>
                    
                    <div class="">
                        <em>진료안내</em>
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
                        <em>외래진료안내</em>
                        <button type="button" class="bcLinkLayerBtn hideTxt">서브 메뉴 목록 열기</button>
                        <!-- bcLinkLayer -->
                        <ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;">
                            
                            <li><a href="reservation.jsp">인터넷진료예약</a></li>
                            
                            <li><a href="newreservation.jsp">예약확인/취소</a></li>
                            
                            <li><a href="medicalInfo.jsp">외래진료안내</a></li>
                            
                        </ul>
                        <!-- //bcLinkLayer -->
                    </div>
                    <span class="hideEl">&gt;</span>
                    
                    <div class="">
                        <em>진료안내</em>
                        <button type="button" class="bcLinkLayerBtn hideTxt">서브 메뉴 목록 열기</button>
                        <!-- bcLinkLayer -->
                        <ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;">
                            
                            <li><a href="medicalInfo.jsp">진료안내</a></li>
                            
                        </ul>
                        <!-- //bcLinkLayer -->
                    </div>
                    
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
        <main id="content" class="rsvContent replaceUtilMenu">
            <div class="contHeadingWrap">
                <h2>진료안내</h2>
            </div>
            <div class="tabTypeCol4">
                <ul class="clearFix"> 
                    <li class="current"><a href="medicalInfo.jsp">진료예약</a></li> 
                    <li><a href="medicalProcess.jsp">외래진료 프로세스</a></li> 
                </ul>
            </div>
            <div class="contTitleWrap">
                <h3>진료예약</h3>
            </div>
            <ul class="rsvGuide"> 
                <li class="skin01"><em>방문예약</em> 
                    <p>요양급여의뢰서(진료의뢰서) 및 신분증을 지참하고 방문하시어, 진료신청서 작성 후 원무라운지 또는 원무창구에 제출하시면 됩니다. &nbsp;</p> 
                    <ul class="listType01"> 
                    <li class="">평&nbsp;&nbsp;일: 오전 8시 ~ 오후 6시</li> 
                    <li class="">토요일: 오전 8시 ~ 오후 1시</li> <br> 
                    </ul> 
                    <p><span style="font-weight: bold;">&lt;</span><span style="font-weight: 700;">원무라운지 위치안내</span><span style="font-weight: bold;">&gt;</span><br></p> 
                    <ul class="listType01"> 
                    <li class="">성&nbsp; 인: [대한외래] B3층 심전도실 옆<br></li> 
                    <li class="">암병원: [암병원] B1층 진료협력센터 옆<br>
                    <br></li> 
                    </ul> 
                    <p><span style="font-weight: bold;">&lt;</span><span style="font-weight: 700;">원무창구 위치안내</span><span style="font-weight: bold;">&gt;</span><br></p> 
                    <ul class="listType01"> 
                    <li class="">성&nbsp; 인: [본관] 1층 로비,&nbsp;[대한외래] B2층 채혈실 옆,&nbsp;[대한외래] B3층 심전도실 옆</li> 
                    <li class="">소&nbsp; 아: [어린이병원] 1층 로비</li> 
                    <li class="">암병원: [암병원] 1층 로비</li>
                    </ul></li> 
                <li class="skin02"><em>전화예약</em> 
                    <p>서울병원 <span class="colorPoint">예약센터(<a href="tel:1588-5700">1588-5700</a>)</span>에서 예약을 안내해드립니다.</p> 
                    <ul class="listType01"> 
                    <li class="">평일: 오전 9시 ~ 오후 6시</li> 
                    <li class="">토요일: 오전 9시 ~ 오후 1시&nbsp;</li> 
                    </ul> 
                    <ul class="listType01"></ul></li> 
                <li class="skin03"><em>인터넷예약</em> 
                    <p>병원 홈페이지에 <span class="colorPoint">회원가입 후 이용</span>하실 수 있습니다.<br>
                    인터넷예약은 <span class="colorPoint">24시간 이용</span>하실 수 있습니다.&nbsp;</p> 
                    <div class="btnWrap alignL"> <span class="btnIconLink"><a href="reservation.jsp" role="button" class="btnType03 btnSmall">인터넷 예약하기</a></span></div></li> 
                <li class="skin04"><em>앱예약</em> 
                    <p>서울병원&nbsp; 핸드폰 어플리케이션을 <span class="colorPoint">구글플레이 또는 앱스토어에서 다운로드 </span>받으신 후 이용하실 수 있습니다. 어플리케이션을 통한 예약은<span class="colorPoint"> 24시간 이용</span>하실 수 있습니다.<br>
                    <img src="http://www.snuh.org/upload/editor/images/000018/20190607105542236_TIV3L51N.jpg" title="" alt="" style="vertical-align: baseline; border: 0px solid rgb(0, 0, 0);"></p></li> 
                <li class="skin05"><em>1,2차 의료기관 의뢰</em> 
                    <p>1.2차 의료기관에서 <span class="colorPoint">요양급여의뢰서(진료의뢰서)를 발급받으신 초진 환자</span>는 진료협력센터를 통해 예약 가능합니다.<br> ※의뢰서 미소지 시 상담이 제한 될 수 있습니다.</p> 
                    <ul class="listType01"> 
                    <li class="">진료협력센터☎: <a href="tel:02-2072-1000">02-2072-1000</a></li> 
                    <li class="">평일: 오전 9시 ~ 오후 6시</li>
                </ul></li> 
                </ul>
        </main>
        <aside id="aside" class="asideWrap" style="position: absolute; top: 180px;">
            <h2>관련 콘텐츠</h2>
            <!-- asideContList -->
            <ul class="asideContList">
        
                
                <!-- <li class=""><a href="/join/client/praiseList.do">감사합니다 전체보기</a></li> -->
                   
                    <!-- <li class=""><a href="/join/client.do">고객의소리 등록</a></li>
                
                    <li class=""><a href="/content/M004001002.do">고객상담실 업무안내</a></li> -->
                
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
<script src="asset/js/medicalInfo.js"></script>
<script src="asset/js/aside.js"></script>
</html>