<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서울병원|로그인</title>
<!-- Then include bootstrap js -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="asset/css/login.css">
<link rel="stylesheet" href="asset/css/KDHfooter.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

</head>
<body>
	<div class="wrap">
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
        <main id="content" class="loginContent bodyBg">
        	<div class="logBoxWrap clearFix">
				<div class="logBox">
					<h3 class="regularTxt">로그인</h3>
					<p class="colorPoint02" style="text-align: center; font-size: 20px">
						서울병원 홈페이지 회원 서비스는<br>로그인 후 이용하실 수 있습니다.
					</p>
					<form id="memberVo" action="MemberLoginOk.me" method="post" name="loginForm">
						<input id="retUrl" name="retUrl" type="hidden" value="">
						<div>
							<input id="id" name="id" placeholder="아이디/진찰권 번호(환자번호)"
								class="inputText" type="text" value="" style="margin-top: 50px">
						</div>
						<div>
							<input id="pass" name="password" onkeydown="check();"
								placeholder="비밀번호" class="inputText" type="password" value="">
						</div>
						<input type="button" id="loginBtn" class="btnType03 btnBig" value="로그인">
	
					</form>
					<div class="telBox">
						<div class="Box1">
							<a href="regi1.jsp">회원가입</a> <a href="findid.jsp" id="find">아이디/비밀번호 찾기</a>
						</div>
					</div>
				</div>
				<div class="logBox">
					<h3 class="regularTxt">의료진 로그인</h3>
					<p class="colorPoint02" style="text-align: center; font-size: 20px">
						서울병원 의료진 전용 코드로<br>로그인 후 이용하실 수 있습니다.
					</p>
					<form id="otherloginForm" action="employee01.jsp" method="post" name="otherloginForm" class="otherlogin">
						<input id="retUrl" name="retUrl" type="hidden" value="">
						<div>
							<input id="id" name="employeeId" placeholder="의료진 번호"
								class="inputText" type="text" value="" style="margin-top: 50px">
						</div>
						<input type="button" id="otherBtn" class="btnType03 btnBig" value="의료진 로그인">
	
					</form>
					</div>
				</div>
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


	let form = document.loginForm;
	
	$("input#loginBtn").on("click", function(){
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
	    
	    const code = "ASDKLW123123";
	   	 
	     $("#otherBtn").click(function(){
	   	 let otherinput = $("input[name='employeeId']").val();
	    		 console.log(otherinput);
	    	 if(otherinput != code){
	    		 
	    		 
	    		 alert("올바른 의료진 번호를 입력하세요.")
	    		 return false;
	    	 }
	    		 otherloginForm.submit();
	     })
	     

</script>
</html>