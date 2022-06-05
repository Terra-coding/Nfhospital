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
<link rel="stylesheet" href="asset/css/mainpage.css">
<link rel="stylesheet" href="asset/css/KDHfooter.css">
<title>인터넷 진료 예약</title>
</style>
</head>
<body>

	<div id="wrap">
		<header id="header" class="" style="position: fixed; top: 0px;">
            <div class="innerwrap">
                 <h1><a href="mainpage.jsp">서울 병원</a></h1>
                <div class="topLeftWrap">
                    <a href="mainpage.jsp">
	                	<img src="./asset/img/hospital_logo.png" style="width: 30px; height: 30px;">
                    </a>
                </div>
                <div class="topMenuWrap">
					<ul class="utilMenu">
						<li><a style="margin-right: 16px;">원격</a></li>
					</ul>
					<ul class="topMenu">
					<c:if test="${empty name}">
						<li><a href="${pageContext.request.contextPath}/MemberLogin.me" style="color: #000;">로그인</a></li>
					</c:if>
					<c:if test="${not empty name}">
						<li><a href="${pageContext.request.contextPath}/LogOutOk.me" style="color: #000;">로그아웃</a></li>
					</c:if>
						<li><a>마이페이지</a></li>
						<li><a>Language</a></li>
					</ul>
				</div>
                <nav id="gnb" class>
<!--                     <button class="totMenuBtn hideTxt" type="button" aria-controls="totMenu">
                    </button> -->
                    <!-- 전체 메뉴 아이콘 집어넣어야함 -->
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
		<main id="content" class="mainContent">
		<div class="bgColor00">
			<section class="container">
				<div class="arrow prev">&lt;</div>
				<div class="banner">
					<div class="img">
						<a
							href="http://www.snuh.org/board/B003/view.do?viewType=true&bbs_no=5055"><img
							src="https://www.snuh.org/asset/img/main/20220428.jpg"></a>
					</div>
					<div class="img">
						<a
							href="http://www.snuh.org/board/B003/view.do?bbs_no=5825&pageIndex=1&restrictedBbsType=&viewType=&cate_cd=&searchKey=all&searchWord=%EB%B8%8C%EB%9E%9C%EB%93%9C"><img
							src="https://www.snuh.org/asset/img/main/20220404.jpg"></a>
					</div>
					<div class="img">
						<a
							href="http://dept.snuh.org/dept/OC/index.do"><img
							src="https://www.snuh.org/pr/2021/Outcomes_Book_KOR.png"></a>
					</div>
					<div class="img">
						<a
							href="http://www.snuh.org/board/B003/view.do?bbs_no=5565&pageIndex=1&restrictedBbsType=&viewType=&cate_cd=&searchKey=all&searchWord=%EC%8B%AC%EB%B0%A9%EC%84%B8%EB%8F%99+%ED%99%98%EC%9E%90"><img
							src="https://www.snuh.org/asset/img/main/20210722.jpg"></a>
					</div>
					<div class="img">
						<a
							href="https://www.youtube.com/user/chSNUH"><img
							src="https://www.snuh.org/asset/img/main/main_event_20200814.jpg"></a>
					</div>

				</div>
				<div class="arrow next">&gt;</div>
				<ul class="btns">
					<li>
						<button class="btn" type="button" style="list-style-type: none;"></button>
					</li>
					<li>
						<button class="btn" type="button" style="list-style-type: none;"></button>
					</li>
					<li>
						<button class="btn" type="button" style="list-style-type: none;"></button>
					</li>
					<li>
						<button class="btn" type="button" style="list-style-type: none;"></button>
					</li>
				</ul>
			</section>
			<div class="mainInner">
				<div class="mainRow">
					<div class="mainCol01 bgColor01">
						<a href="" style="cursor: pointer;">
							<h3>진료예약</h3>
							<p>
								빠르게 쉽게 진료예약을 <br> 하실 수 있습니다
							</p>
						</a>
						<div class="btnWrap col02">
							<c:if test="${not empty name}">
							<a href="${pageContext.request.contextPath}/reservation.jsp" role="button">진료예약</a>
							<a href="${pageContext.request.contextPath}/newreservation.jsp" role="button" >예약확인</a>
							</c:if>
							<c:if test="${empty name}">
							<a href="${pageContext.request.contextPath}/MemberLogin.me" role="button">진료예약</a>
							<a href="${pageContext.request.contextPath}/MemberLogin.me" role="button" >예약확인</a>
							</c:if>
						</div>
					</div>
					<div class="mainCol01 bgColor03">
						<h3>진료안내</h3>
						<p>
							대표전화 <strong>1588-5700</strong>
						</p>
						<div class="btnWrap col02">
							<a href="${pageContext.request.contextPath}/medicalInfo.jsp" role="button">진료예약안내</a>
							<a href="${pageContext.request.contextPath}/medicalProcess.jsp" role="button" >진료프로세스</a>
						</div>
					</div>
					<div class="mainCol01 bgColor02">
						<a href="" style="cursor: pointer;">
							<h3>이용안내</h3>
							<p>
								병원의 이용안내를 <br> 상세히 확인할 수 있습니다
							</p>
						</a>
						<div class="btnWrap col02">
						<a href="${pageContext.request.contextPath}/allFAQ.jsp" role="button" >자주묻는 질문</a>
						<a href="${pageContext.request.contextPath}/clientConsultation.jsp" role="button" >고객상담실</a>
						</div>
					</div>
						 <!-- 로그인 안한 상태 -->
						 	<c:if test="${empty name}">
								<div class="mainCol mainLoginWrap">
										<ul class="mainTab feTab" data-pannel="1"
											data-tab-group="feTab1Gr0">
											<li class="current"><a href="login.jsp" role="tab"
												aria-selected="true">로그인</a></li>
										</ul>
										<div id="login" class="feTabCont" role="tabpanel"
											aria-hidden="false" data-tab-group="feTab1Gr0"
											style="display: block;">
											<form name="loginForm" id="loginForm" method="post" action="MemberLoginOk.me">
												<fieldset>
													<input type="text" name="id" title="아이디/회원 번호"
														placeholder="아이디/회원 번호"> <input type="password"
														name="password" title="비밀번호" placeholder="비밀번호"
														onkeydown="check();">
													<div class="user">
														<a href="regi1.jsp" style="font-size: 14px; color: inherit;">회원가입</a> <a
															href="findid.jsp" style="font-size: 14px; color: inherit;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디/비밀번호
															찾기</a>
													</div>
													<input type="button" class="btnType03" value="로그인">
												</fieldset>
											</form>
										</div>
									</div>
						 	</c:if>
						 	<!-- 로그인 성공한 상태 -->
							<c:if test="${not empty name}">
								<div class="mainCol mainLoginWrap">
								<strong class="userName"><c:out value="${name}"/> 님</strong>
								<p>
									오늘도 좋은 하루 보내시고<br>
									<strong>건강을 기원</strong>합니다.
								</p>
								<div class="btnWrap col02">
								<a href="newreservation.jsp" role="button" class="btnType04">예약확인/취소</a>
								
								<a href="prereservation.jsp" role="button" class="btnType04">진료이력조회</a>
								
								</div>
								<a href="${pageContext.request.contextPath}/LogOutOk.me" class="logout">로그아웃</a>
								</div>
							</c:if>
				</div>
			</div>
		</div>
		<div class="mainInner mainHealth">
			<h3>건강정보</h3>
			<p>질병, 영양, 운동, 생활 속 관리 등 건강에 대한 모든 것</p>
			<div class="mainRow">
				<a href="" class="mainCol01 bgType01"> <img
					src="https://www.snuh.org/asset/img/main/bg_mainHealth01.jpg">
					<strong style="top: 42px; left: 131px;">건강 TV</strong>
					<p style="top: 107px; left: 86px;">
						의료진에게 <br> 듣는 팟캐스트 '건강톡톡'
					</p>
				</a> <a href="" class="mainCol01 bgType02"> <img
					src="https://www.snuh.org/asset/img/main/bg_mainHealth02.jpg">
					<strong style="top: 42px; left: 101px;">우리 집 주치의</strong>
					<p style="top: 107px; left: 93px;">
						하나의 질병에 대해서 <br> 깊이 있게 알아봅니다
					</p>
				</a> <a href="" class="mainCol01 bgType03"> <img
					src="   https://www.snuh.org/asset/img/main/bg_mainHealth03.jpg">
					<strong style="top: 42px; left: 119px;">공개강좌</strong>
					<p style="top: 107px; left: 93px;">
						누구에게나 열려있는 <br> 공개 건강강좌
					</p>
				</a>
				<div class="mainCol01 bgType04">
					<img
						src="   https://www.snuh.org/asset/img/main/bg_mainHealth04.jpg">
					<strong style="top: 42px; left: 107px;">건강채널</strong>
					<p style="top: 107px; left: 65px;">더 편하게 만나는 건강정보</p>
					<div class="btnWrap" style="position: absolute; left: 46px;">
						<a href="" role="button" target="_blank">페이스북</a> <a href=""
							role="button" target="_blank">포스트</a> <a href="" role="button"
							target="_blank">네이버 TV</a> <a href="" role="button"
							target="_blank">블로그</a>
					</div>
				</div>
			</div>
		</div>
		<div class="bgColor00">
			<div class="mainInner">
				<div class="mainRow">
					<div class="mainCol01 bgColor05">
						<h3>공공보건의료진흥원</h3>
						<p>
							공공보건의료 발전을 위해 <br> 다양한 사업을 수행하고 있습니다.
						</p>
					</div>
					<div class="mainCol01 bgColor02">
						<h3>건강증진센터</h3>
						<p>
							질병 예방 및 삶의 질 향상을 <br> 위해 노력합니다.
						</p>
					</div>
					<div class="mainCol01 bgColor03">
						<h3>발전후원회</h3>
						<p>
							따뜻한 마음을 의료 발전으로 <br> 보답 하겠습니다.
						</p>
					</div>
					<div class="mainCol01 bgColor04">
						<h3>진료협력센터</h3>
						<p>
							네트워크로 하나되는 의료 <br> SNUH 진료협력시스템
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="mainInner">
			<h3>오시는길</h3>
			<p>서울병원으로 오시는 길을 알려드립니다.</p>
			<ul class="mainWay" style="padding: 0; list-style: none;">
				<li class="no01"><a href="https://www.snuh.org/content/M002001001.do" style="color: inherit;"> <img
						src="asset/img/location001.png"
						style="padding: 0; border-radius: 85px;"> 오시는길
				</a></li>
				<li class="no02"><a href="https://www.snuh.org/guide/inMap.do" style="color: inherit;"> <img
						src="asset/img/location002.png"
						style="padding: 0; border-radius: 85px;"> 원내위치도
				</a></li>
				<li class="no04"><a href="https://www.snuh.org/guide/inMapInfo.do" style="color: inherit;"> <img
						src="asset/img/location003.png"
						style="padding: 0; border-radius: 85px;"> 진료과/검사실
				</a></li>
				<li class="no03"><a href="https://www.snuh.org/guide/convenience/external/convenexList.do" style="color: inherit;"> <img 
						src="asset/img/location004.png"
						style="padding: 0; border-radius: 85px;"> 주변편의시설
				</a></li>
			</ul>
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
    const banner = document.querySelector("div.banner");
    const arrows = document.querySelectorAll("div.arrow")
    const btns = document.querySelectorAll("button.btn");
    let count = 0;

    // 원하는 번호의 배너로 이동
    btns.forEach(function(btn, i, ar){
        // 각 버튼에 클릭이벤트 적용
        ar[i].addEventListener("click", function(){
            // 해당 버튼 번호(i)로 count변경
            count = i;
            banner.style.transform = "translate(-" + count * 90 + "vw)";
        });
    });

    // 이전버튼, 다음버튼 기능 구현
    arrows.forEach(arrow => {
        arrow.addEventListener("click", function(){
            let arrowType = arrow.classList[1];
            if(arrowType == 'prev'){
                count--;
                if(count == -1) {
                    count = 4;
                }
            }else{
                count++;
                if(count == 5) {
                    count = 0;
                }
            }
            banner.style.transform = "translate(-" + count * 90 + "vw)";
        });
    });

    setInterval(function(){
        count++;
        count = count == 6 ? 0 : count;
        banner.style.transform = "translate(-" + count * 90 + "vw)";
    }, 3000);
    
    
    let form = document.loginForm;
    $(".btnType03").on("click", function(){
    	if(!form.id.value){
    		alert("아이디를 입력해주세요.");
    		return;
    	}
    	if(!form.password.value){
    		alert("패스워드를 입력해주세요.");
    		return;
    	}
    	
    	form.submit();
    });
 	
     /* 네비게이션 바 jquery시작 */
   
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
	   
	     /* 네비게이션 바 jquery끝 */ 
	    
</script>
</html>