<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>감사합니다 | 서울병원</title>
    <link rel="stylesheet" href="asset/css/allThanksView.css">
    <link rel="stylesheet" href="asset/css/KDHfooter.css">
    <link rel="stylesheet" href="asset/css/aside.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<c:set var="thankyouList" value="${thankyouList}"/>
	<c:set var="page" value="${page}"/>
	<c:set var="startPage" value="${startPage}"/>
	<c:set var="endPage" value="${endPage}"/>
	<c:set var="realEndPage" value="${realEndPage}"/>
	<c:set var="total" value="${total}"/>

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
                       <c:if test="${empty name}">
		               <li><a href="${pageContext.request.contextPath}/MemberLogin.me" style="color: #000;">로그인</a></li>
		               </c:if>
		               <c:if test="${not empty name}">
		               <li><a href="${pageContext.request.contextPath}/LogOutOk.me" style="color: #000;">로그아웃</a></li>
		               </c:if>
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
				<em>고객참여</em>
				<button type="button" class="bcLinkLayerBtn hideTxt">주 메뉴 목록 열기</button>
				<!-- bcLinkLayer -->
				<ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false">
					
							<li><a href="medicalInfo.jsp">진료안내</a></li>
                            <li><a href="allFAQ.jsp">이용안내</a></li>
                            <li><a href="clientSound.jsp">고객참여</a></li>
                            <li><a href="intro.jsp">병원소개</a></li>
					 
				</ul>
				<!-- //bcLinkLayer -->
			</div>
			<span class="hideEl">&gt;</span>
			<div class="">
				<em>고객의소리</em>
				<button type="button" class="bcLinkLayerBtn hideTxt">서브 메뉴 목록 열기</button>
				<!-- bcLinkLayer -->
				<ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false">
					
					<li><a href="thankyouwrite.jsp">고객의소리</a></li>
					
				</ul>
				<!-- //bcLinkLayer -->
			</div>
			<span class="hideEl">&gt;</span>
			
			<div class="">
				<em>감사이야기</em>
				<button type="button" class="bcLinkLayerBtn hideTxt">서브 메뉴 목록 열기</button>
				<!-- bcLinkLayer -->
				<ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;" tabindex="0">
					
					<li><a href="clientConsultation.jsp">고객상담실 업무안내</a></li>
					
					<li><a href="clientSound.jsp">고객의소리 등록</a></li>
					
					<li><a href="thankyouwrite.jsp">감사합니다</a></li>
					
					<li><a href="suggestions.jsp">건의합니다</a></li>
					
					<li><a href="allThanksView.jsp">감사이야기</a></li>
					
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
        <main id="content" class="cstomerContent replaceUtilMenu">
            <div class="contHeadingWrap">
                <h2>감사합니다</h2>
            </div>
            <div class="boxTypeGray cstPreviewBox">
                <em class="boxTit">52병동 간호사 선생님들 감사드립니다.</em>
                <div class="txtWrap">
                    지난주 수요일에 퇴원한 환자 이수빈 입니다.
                    <br>
                    <br>17일에 갑자기 수술을 들어가게 되어 당황스러웠는데 장동영 레지던트 선생님께서 오셔서 스케줄 변경에 대해 양해를 구하시고, 수술 관련하여도 친절히 설명해주셔서 편한 마음으로 수술을 들어갈 수 있었습니다.
                    <br>
                    <br>수술 이후에 24시간 내내 52병동 간호사 선생님들께서 오셔서 혈압과 체온 등 상태를 계속 체크해 주시는데 언제 오시든지 항상 웃는 얼굴로 친절하게 해주셔서 정말 감사했습니다.
                    <br>수술 이후에 며칠동안 열이 계속 안떨어져서 1-2시간마다 오셔서 체온 측정해주시는데 귀찮을 법한데 계속 신경써주시고, 체온이 내려갈 수 있도록 여러 방법들을 알려주셔서 감사했습니다. 
                    <br>
                    <br>특히 서인영 간호사 선생님 항상 꼼꼼하게 상태 체크해주시고, 항생제나 수액 등 다 떨어졌을 때 맞춰서 오셔서 제거해주시거나 바꿔주셔서 빠르게 회복할 수 있었습니다. 입원 기간이 조금 지나면서 혈당 체크할 때 바늘을 찔러도 피가 잘 안나와서 간호사 선생님들 좀 고생하실 때 그냥 다시 찔러도 된다고 말씀드렸는데, 여기저기 이미 바늘에 찔린 자국이 많이 있어서 그런지 서인영 간호사 선생님께서 다른 곳 또 찌르면 본인 마음이 아프시다며 환자를 더 생각해주시는 마음에 감동받았습니다. 밤이나 새벽에 오셔서 체온이나 혈압 측정할 때 불키고 하셔도 되는데 환자가 깰까 핸드폰 플래시만 살짝 켜고 측정해주셔서 덕분에 잠을 이어 바로 잘 수 있었습니다. 이렇게 섬세한 부분까지 환자를 생각해주셔서 정말 너무 감사드리고 덕분에 빨리 회복할 수 있었던 것 같습니다.
                    <br>
                    <br>그리고 이지은 간호사 선생님께서 열이 계속 나 주기적으로 자주 오셔서 체온 측정해주시는데 걱정해주시면서 체온 떨어질 수 있는 방법들을 친절히 알려주셔서 정말 감사했습니다. 갑자기 수술하게 되었을 때 오셔서 친절히 설명해주시고, 놀란 마음을 가라앉혀 주셔서 편한 마음으로 수술을 잘 받을 수 있었습니다.
                    <br>환자 이름을 외우고 멀리서도 친근하게 이름 불러주시는 신지혜 간호사 선생님 계속 관심가져주시고, 신경써주셔서 정말 감사했습니다. 퇴원할 때 함께 기뻐해주시는 모습에 다시 한 번 감사했습니다.
                    <br>
                    <br>계속 제 상태를 체크하며 필요할 때 빠르게 조치해주신 정혜성A 주치의 선생님 덕분에 빨리 회복할 수 있었습니다. 수술부위 소독해주실 때도 제가 아픈지 불편한 것은 있는지 계속 확인해주시고, 퇴원 후 피해야되는거나 식습관 등 궁금한 것에 대해 많이 여쭤봐도 친절히 답변해주셔서 감사했습니다.
                    <br>
                    <br>마지막으로 52병동 간호사 선생님들 모두 예쁘시고, 친절하시고, 항상 환자들 먼저 생각해주셔서 이름을 다 외워서 꼭 감사하다고 전해드리고 싶었는데 다 못외워서 죄송합니다ㅠㅠ
                    <br>수술 후 열이 계속 안떨어져서 간호사 선생님들 많이 고생시켜드렸는데, 모두 힘드실텐데도 항상 웃으시며 환자들 먼저 생각하고, 모르는 것에 대해 여쭤보면 친절하게 대해주셔서 정말 감사드렸습니다. 덕분에 편하게 입원생활을 했고, 잘 회복해서 빠르게 퇴원할 수 있었습니다. 아파서 중간에 짜증도 냈던 것 같은데 정말 죄송하고, 늦었지만 덕분에 편하게 입원생활하고, 빠르게 회복할 수 있었어서 정말 감사드렸습니다 : )
                </div>
                <span class="colorPoint02">2022-03-29 이수* 님</span>
                <div class="alignL btnWrap">
                    <button type="button" class="btnType01 btnSmall layerBtn" data-layer-url="/join/client/praiseView.do?seq_no=34662">더보기</button>
                </div>
            </div>
            <div class="alignR btnWrap02">
                <a href="myWrite.jsp" role="button" class="btnType01">내가 작성한 글 보기</a>
                <a href="thankyouwrite.jsp" class="btnType03" role="button">감사합니다 글쓰기</a>
            </div>
            <div class="cstBoardCard">
		
                <a href="#custLayer" class="item layerBtn" data-layer-url="/join/client/praiseView.do?seq_no=34880">
                    <strong>산부인과 김훈 교수님과 김은경 간호사님 감사합니당</strong>
                    <p>
                        
					
					안녕하세요! 김훈 교수님께 15년부터 진료받고 있는 환자입니다.초진 봤을때 어렸을때라,,, 별 생각 없이 수술하면 되는거지~ 하며 별 생각 
				 
                     </p>
                    <span>2022-06-03 박담* 님</span>
                </a>
            
                <a href="#custLayer" class="item layerBtn" data-layer-url="/join/client/praiseView.do?seq_no=34871">
                    <strong>94병동 김민애 간호사 선생님 감사합니다!</strong>
                    <p>
                        
                        안녕하세요, 저는 2주 전 서울대병원 94병동에 급성 호산구성 폐렴으로 입원했던 환자입니다. 동시에 저는 본교 간호대 실습생 4학년으로서, 평소
                     </p>
                    <span>2022-05-18 이한* 님</span>
                </a>
            
                <a href="#custLayer" class="item layerBtn" data-layer-url="/join/client/praiseView.do?seq_no=34850">
                    <strong>설명 간호사실 김선희 간호사님을 칭찬합니다.</strong>
                    <p>
                        
                        5.12일 15시 30분경 설명 간호사실에서 근무하신 김선희 간호사님을칭찬합니다.아내가  췌장염으로 혈액 검사 결과를 알아 보기 위하여 
                     </p>
                    <span>2022-05-12 최승택* 님</span>
                </a>
            
                <a href="#custLayer" class="item layerBtn" data-layer-url="/join/client/praiseView.do?seq_no=34843">
                    <strong>안과 김동현 교수님 감사합니다.</strong>
                    <p>
                        
                        병원을 옮겨 첫 진료라 가지고 온 자료가 많아 확인하는 데 번거로우셨을 텐데도 꼼꼼히 확인해 주시고, 어색해하는 아이의 시력을 정확하게 측정하기
                     </p>
                    <span>2022-05-12 이지* 님</span>
                </a>
            
                <a href="#custLayer" class="item layerBtn" data-layer-url="/join/client/praiseView.do?seq_no=34840">
                    <strong>성형외과 간호사 강보경님 감사합니다. </strong>
                    <p>
                        
                        왜, 성형외과 간호사님들은 다 친절하신걸까요? 작년에 유방 재건술하고 얼마전 유두재건술 하느라... 성형외과 방문을 정말 많이 하고 있습
                     </p>
                    <span>2022-05-12 김진* 님</span>
                </a>
            
                <a href="#custLayer" class="item layerBtn" data-layer-url="/join/client/praiseView.do?seq_no=34839">
                    <strong>산부인과 전종관 교수님께 감사드립니다.</strong>
                    <p>
                        
                        안녕하세요?산부인과 전종관 교수님께 감사의 인사를 드리고 싶어 이렇게 글을 씁니다.저는 늦은 나이에 결혼하여 어렵게 아이를 갖게 되었
                     </p>
                    <span>2022-05-11 윤경* 님</span>
                </a>
            
                <a href="#custLayer" class="item layerBtn" data-layer-url="/join/client/praiseView.do?seq_no=34834">
                    <strong>31병동 간호사선생님들께 감사드립니다.</strong>
                    <p>
                        
                        얼마 전 출산 때문에 입원 했다가 무사히 퇴원한 산모입니다.당뇨 때문에 조금 일찍 입원해서 제왕절개로 아기를 낳은 뒤 5일 후 퇴원하기까지 
                     </p>
                    <span>2022-05-10 박미* 님</span>
                </a>
            
                <a href="#custLayer" class="item layerBtn" data-layer-url="/join/client/praiseView.do?seq_no=34833">
                    <strong>친절한 의료상담 해주신 의사선생님 감사합니다.</strong>
                    <p>
                        
                        오늘 암병원 3층 항암 낮병동에서 제 치료를 상담하여 주신 의사선생님께 감사 드립니다.저로서는 처음 접해보는 두렵고 힘든 항암치료를 계속
                     </p>
                    <span>2022-05-09 김수* 님</span>
                </a>
            
                <a href="#custLayer" class="item layerBtn" data-layer-url="/join/client/praiseView.do?seq_no=34822">
                    <strong>환자용 엘레베이터 유정인선생님 칭찬합니다</strong>
                    <p>
                        
                        안녕하세요 장기환자입니다환자용 엘레베이터를 자주 이용하는데항상 웃는얼굴과 친절한 어투로 환자들이 편안하게엘레베이터를 이용할수있도록 안
                     </p>
                    <span>2022-05-06 고선* 님</span>
                </a>
            </div>
            <div class="pagination">
                <a href="javascript:paginate(1)" class="firstBtn">
                    <span>첫 페이지</span>
                </a>
                <a href="javascript:paginate(1)" class="prevBtn">
                    <span>이전 페이지</span>
                </a>
                <a class="current" title="현재 페이지">1</a>
                <a href="javascript:paginate(1)" class="nextBtn">
                    <span>다음 페이지</span>
                </a>
                <a href="javascript:paginate(1)" class="lastBtn">
                    <span>마지막 페이지</span>
                </a>
            </div>
        </main>
        <aside id="aside" class="asideWrap" style="position: absolute; top: 180px;">
            <h2>관련 콘텐츠</h2>
            <!-- asideContList -->
            <ul class="asideContList">
        
                
                <!-- <li class=""><a href="/join/client/praiseList.do">감사합니다 전체보기</a></li> -->
                   
                    <li class=""><a href="clientSound.jsp">고객의소리 등록</a></li>
                
                    <li class=""><a href="clientConsultation.jsp">고객상담실 업무안내</a></li>
                
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
        <div id="layerLoadWrap">
            <section class="layerWrap custLayer layerSize01" tabindex="0" style="margin-left: -450px; display: none;">
            <h1>산부인과 김훈 교수님과 김은경 간호사님 감사합니당</h1>
            <!-- layerContent -->
            <div class="layerContent">
                <div class="layerScroll">
                    <div class="innerScroll">
                            
                        <p>안녕하세요! 김훈 교수님께 15년부터 진료받고 있는 환자입니다.
                        <br>초진 봤을때 어렸을때라,,, 별 생각 없이 수술하면 되는거지~ 하며 별 생각 없었는데 꼼꼼히 챙겨주시고 저보다 더 걱정해주셔서 그때의 마음을 아직도 감사히 품고 있어요!!
                        <br>중간에 진료일정이 맞지 않아 장기연수 가셨다고 들었을때 맴찢.. 내적 친밀감 겁나 느낄 정도로 오랜 기간동안 저의 전담 주치의이신 김훈 교수님께 감사의 말씀을 드리려고 비번까지 찾아가며 글 남겨 봅니다. 저뿐만 아니라 다른 환자분들에게도 상세한 설명 하시고 꼼꼼히 진료 보시느라 나날이 대기시간이 엄청나지만,,, 교수님 만나려면 참아야죠ㅠ 덩달아 매 진료마다 발에 불나게 뛰어다니시는 김은경 간호사님도 너무 감사드립니다. 질문도 많이 하는데 매번 친절하게 알려주셔서 늦게까지 진료 보시는 날에는 죄송한 마음뿐,,,, 
                        <br>우리 교수님 실력이 우주최강으뜸이라 더 유명해졌으면 좋겠으면서도… 이미 대기가 충분해서 안늘어났음 좋겠으면하는 이중적인 마음이 들지만 암튼 교수님 최고에여 
                        <br>익명 및 게시가 안될 줄 알고 썼는데 이 방법밖에는 감사함을 전달 할 수 없어서 부끄러움을 무릅쓰고 남겨봅니다.
                        <br>교수님 짱팬 드림,,,
                        <p class="userData">2022-06-03<br>박담* 님</p>
                    </div>
                </div>
            </div>
            <!-- //layerContent -->
            <button type="button" class="layerCloseBtn">레이어 닫기</button>
        </section>
        </div>
        <div class="dimmedLayer" style="opacity: 0.7; display: none;"></div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="asset/js/allThanksView.js"></script>
<script src="asset/js/aside.js"></script>
</html>