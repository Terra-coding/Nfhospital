<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이용안내 FAQ | 서울병원</title>
    <link rel="stylesheet" href="asset/css/allFAQ.css">
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
                        <em>이용안내</em>
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
                        <em>FAQ(통합)</em>
                        <button type="button" class="bcLinkLayerBtn hideTxt">서브 메뉴 목록 열기</button>
                        <!-- bcLinkLayer -->
                        <ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;" tabindex="0">
					
                            <li><a href="allFAQ.jsp">FAQ(통합)</a></li>
                            
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
                <h2>이용안내 FAQ</h2>
            </div>
            <div class="tabTypeCol5">
                <ul class="clearFix">
                    <li class="current"><a href="allFAQ.jsp">전체</a></li>
                    
                        <li class="">
                            <a href="secondFAQ.jsp">외래</a>
                        </li>
                    
                        <li class="">
                            <a href="thirdFAQ.jsp">제증명</a>
                        </li>
                    
                        <li class="">
                            <a href="lastFAQ.jsp">기타</a>
                        </li>
                    
                </ul>
            </div>
            <div class="boardInfo clearFix">
	
	
	
                <span class="boardTotal">총 게시물: <em>5</em></span>
                <!-- boardSearch -->
                <div class="boardSearch">
                
                    
                    
                        
                    
                
                    <form id="formBoardSearch" action="/board/B005/list.do" method="get">
                        <input id="restrictedBbsType" name="restrictedBbsType" type="hidden" value="">
                        <input id="viewType" name="viewType" type="hidden" value="">
                        <input id="cate_cd" name="cate_cd" type="hidden" value="">
                        <fieldset>
                            <legend>게시판 검색</legend>
                            <!-- select -->
                            <label class="feForm feFoSelect" for="searchKey"><span>전체</span><select id="searchKey" name="searchKey" title="옵션" data-fe-idx="feFoSelectIdx1" style="opacity: 0;">
                                <option value="all">전체</option>
                                <option value="subject">제목</option>
                                <option value="contents">내용</option>
                            </select></label>
                            <!-- //select -->
                            <input id="searchWord" name="searchWord" title="키워드" class="keyword" type="text" value="">
                            <button type="submit" class="btnSubmit">검색</button>
                        </fieldset>
                    </form>
                </div>
                <!-- //boardSearch -->
            </div>
            <div class="boardTypeTbl">
                <table>
                    <caption>
                        이용안내 FAQ(번호, 제목, 작성일, 조회수, 파일)
                    </caption>
                    <colgroup>
                        
                        
                            <col style="width: 50px;">
                            
                                <col style="width: 100px;">
                            
                            <col style="width: auto;">
                            <col style="width: 105px;">
                            <col style="width: 65px;">
                            <col style="width: 60px;">
                        
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">번호</th>
                            
                                <th scope="col">분류</th>
                            
                            <th scope="col">제목</th>
                            <th scope="col">작성일</th>
                            <th scope="col">조회수</th>
                            <th scope="col">파일</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                            <tr>
                                <td>5</td>
                                
                                    <td>기타</td>
                                
                                <td class="alignL"><a href="lastFAQ_content2.jsp">개명으로 이름이 변경된 경우</a></td>
                                <td>2019-12-09</td>
                                <td>2371</td>
                                <td></td>
                            </tr>
                        
                            
                            
                            
                            <tr>
                                <td>4</td>
                                
                                <td>제증명</td>
                                
                                <td class="alignL"><a href="thirdFAQ_content2.jsp">상병명과 상병코드 등의 내용은 유선상으로 확인이 가능한가요?</a></td>
                                <td>2017-10-16</td>
                                <td>1967</td>
                                <td></td>
                            </tr>
                        
                            <tr>
                                <td>3</td>
                                
                                <td>제증명</td>
                                
                                <td class="alignL"><a href="thirdFAQ_content1.jsp"> 진단서의 내용 수정이 필요합니다.</a></td>
                                <td>2017-10-16</td>
                                <td>1943</td>
                                <td></td>
                            </tr>
                            
                            <tr>
                                <td>2</td>
                                
                                <td>외래</td>
                                
                                <td class="alignL"><a href="secondFAQ_content.jsp">인터넷상으로 진료예약 후 변경, 취소가 되는지요?</a></td>
                                <td>2017-08-24</td>
                                <td>3644</td>
                                <td></td>
                            </tr>
                            
                            <tr>
                                <td>1</td>
                                
                                    <td>기타</td>
                                
                                <td class="alignL"><a href="lastFAQ_content1.jsp">1588-5700 왜 전화가 안 되나요?</a></td>
                                <td>2017-08-18</td>
                                <td>1973</td>
                                <td></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                <div class="pagination">
                    <a href="javascript:paginate(1)" class="firstBtn"><span>첫 페이지</span></a><a href="javascript:paginate(1)" class="prevBtn"><span>이전 페이지</span></a><a class="current" title="현재 페이지">1</a><a href="javascript:paginate(4)" class="nextBtn"><span>다음 페이지</span></a><a href="javascript:paginate(4)" class="lastBtn"><span>마지막 페이지</span></a>
                    
                </div>
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
<script src="asset/js/allFAQ.js"></script>
<script src="asset/js/aside.js"></script>
</html>