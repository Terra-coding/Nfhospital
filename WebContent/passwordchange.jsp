<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
    <link rel="stylesheet" href="asset/css/passwordchange.css">
    <link rel="stylesheet" href="asset/css/KDHfooter.css">
    <title>비밀번호 변경</title>
</head>
<body>
    <div id="wrap">
        <a href="#content" class="skipToContent">본문으로 바로가기</a>
        <header id="header">
            <div class="innerwrap">
                <h1><a href="${pageContext.request.contextPath}/MainPage.me" >서울 병원</a></h1>
                <div class="topLeftWrap">
                    <a href="${pageContext.request.contextPath}/MainPage.me">
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
                        <li><a href="${pageContext.request.contextPath}/LogOutOk.me" style="color: #000;">로그아웃</a></li>
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
                    <a href="${pageContext.request.contextPath}/MainPage.me" class="bcHomeBtn hideTxt">HOME</a>
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
                        <em>개인정보수정</em>
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
                <h2>회원정보수정</h2>
            </div>
            <div class="panelWrap">
                <div class="panelWrap">
                    <div class="tabTypeCol2">
                        <ul class="clearFix">
                            <li class="current" style=" list-style:none; left: 17px;">
                                <a href="${pageContext.request.contextPath}/PasswordChange.me" style="text-decoration-line: none;">비밀번호 변경</a>
                            </li>
                            <li style=" list-style:none;  right: 47px;">
                                <a href="${pageContext.request.contextPath}/ProfileChange.me" style="text-decoration-line: none;">기본정보 변경</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div>
                    <form id="memberVo" name="change" action="${pageContext.request.contextPath}/PasswordChangeOk.me" method="post">
                        <fieldset style="padding-top: 47px;">
                            <legend>비밀번호 변경</legend>
                            <div class="msgBox iconType01">
                                <em style="font-style: normal;">비밀번호 변경</em>
                                <p>
                                    <span class="colorPoint">${name}</span>
                                    회원님의 소중한 개인정보의 보호를 위하여 비밀번호를 변경해 주시기 바랍니다.
                                </p>
                            </div>
                            <div class="signin">
                                <div>
                                    <input type="hidden" name="id" value="${sessionScope.list.getId()}">
                                    <label for="curPass">현재 비밀번호</label>
                                    <input type="password" id="curPass" name="password" class="inputText">
                                </div>
                                <div>
                                    <label for="newPass">새 비밀번호</label>
                                    <input type="password" id="newPass" name="newpassword" class="inputText" aria-autocomplete="list">
                                </div>
                                <div>
                                    <label for="newPassConfirm">새 비밀번호</label>
                                    <input type="password" id="newPassConfirm" name="newpasswordConfirm" class="inputText">
                                </div>
                            </div>
                            <div class="boxTypeGray boxVtical">
                                <div>
                                    <strong class="boxTit">주의</strong>
                                </div>
                                <div class="txtWrap">
                                    <p>
                                        1. 영문, 숫자, 특수문자 3가지 조합으로 9~16자이여야 합니다.
                                        <br>
                                        2. 특수 문자는 !@#$%^&*(),.; 만 가능합니다.
                                    </p>
                                </div>
                            </div>
                            <div class="btnWrap02 alignC" style="padding-left: 473px;">
                                <a id="confirmBtn" role="button" class="btnType03">확인</a>
                            </div>
                        </fieldset>
                    </form>
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
<script>
	let Depassword = atob("${sessionScope.list.getPassword()}");
	console.log(Depassword);
	var passCheck=/^(?=.*[0-9])(?=.*[!@#$%^&*(),.;])[a-zA-Z0-9!@#$%^&*(),.;]{9,16}$/;
	
	$(".btnType03").click(function(){
		let password = $("#curPass").val();
		let newpassword = $("#newPass").val();
		let checkpassword = $("#newPassConfirm").val();
	
		if(password != Depassword){
			alert("기존 비밀번호가 일치하지 않습니다.")
			return;
		}
		
		if(newpassword == Depassword){
			alert("기존 비밀번호와 다른 비밀번호로 변경할 수 있습니다.")
			return;
		}
		
		if(newpassword != checkpassword){
			alert("변경할 비밀번호가 일치하지 않습니다.")
			return;
		}
		
		if(newpassword != "" && newpassword.length > 0) {
			if(!passCheck.test(newpassword)){
				alert("비밀번호 규칙을 확인해주시기 바랍니다.\n*영문, 숫자, 특수문자(!@#$%^&*(),.;) 3가지 이상 조합 9 ~ 16자 이내");
				$('#pass').focus();
				return false;
			}
		}
		
		alert("비밀번호 변경이 완료되었습니다.")
		change.submit();
	})
	
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