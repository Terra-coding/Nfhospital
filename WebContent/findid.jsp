<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap"
	rel="stylesheet">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="asset/css/findid.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="asset/css/KDHfooter.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->

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
<!-- content -->
	<main id="content" class="findContent">
		<div class="contHeadingWrap">
			<h2>아이디/비밀번호 찾기</h2>
		</div>
		<!-- tabType -->
		<div class="tabTypeCol2">
			<ul class="clearFix">
				<li class="current" style="float:left; width:50%;"><a href="#">아이디 찾기</a></li>
				<li><a href="findpw.jsp">비밀번호 찾기</a></li>
			</ul>
		</div>
		<!-- //tabType -->
		
		
	
		<form name="reqPCCForm" method="post" action="">
			<input type="hidden" name="reqInfo" value="F072704777224B6913829CD0205DF98703C336D13DFAE8E8AD55E1167522693451E63B5A7E6C11F94015C152ADF285B74D111CC25E5C23E6AD9B36A5F119C08788243F16AF76BAA3E9D452847AFA3B66ED78088681684329CE27CA7EFD395CDDE291D42E6260D74BCC6F7B0ACF455D9651C5849C5A60A4407BCA9F1FF4DA528DB207036B53BA7DC9898D3F06C47DF3936F57674EADA4C073F1E802FC932C25E10A8A661A38B233EF31436935A24E5C45351FF7F1316C913BB96F9BD11397D16B3611CD4F2B3948EBF674DA7971CB00CFDCCAE1234EA545ED720716D02195C64C">
			<input type="hidden" name="retUrl" value="32https://www.snuh.org/member/phoneAuthResponse.do?authKind=findId">
		</form>
		<form name="reqCBAForm" method="post" action="">
			<input type="hidden" name="reqInfo" value="55BD4D2ED9C9DBA1D455939DD54D846DF167CB3C7C9E60511429FB323DF8DB599686A650F810C1DE34691057DE4273DAAB9BD01691DC7E4F70CB475F4AAE52C11276560A31C2E861645C62E5ACF92D75B0BCEBFF9D03F221FBA75C94DC79253A3E150845184DFCC6DBF532C16CD280A0D7316EDE280A77CE23C01B59990D9A81B6E28587E10F325419DB98FEDB1EA0B725842A0251ABD90052979726126E72FC18AA8A19B14DEDE45131B87E8FD315301EC337219AF0164A4D9B5B486831EFF1">
			<input type="hidden" name="retUrl" value="23https://www.snuh.org/member/ipinAuthResponse.do?authKind=findId&amp;join_type=null">
		</form>
	
		<!-- layerWrap -->
		<section class="layerWrap layerMail" ">
			<h1 style="color: #2263bb;">아이디 찾기</h1>
			<!-- layerContent -->
			<div class="layerContent">
				<form id="mForm" name="mForm" action="FindIdOk.me" method="post">
					<fieldset>
						<legend>이메일확인</legend>
						<div class="boardTypeForm">
							<table  class="tb">
								<caption>이메일확인(이름, 이메일주소, 생년월일)</caption>
								<colgroup>
									<col style="width: 135px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">이름</th>
										<td><input id="name" name="name" title="이름" class="inputText" type="text" value="" maxlength="20"></td>
									</tr>
									<tr>
										<th scope="row">이메일주소</th>
										<td><input id="email" name="email" title="이메일주소" class="inputText" type="text" value="" maxlength="40"></td>
									</tr>
									<tr>
										<th scope="row">생년월일</th>
										<td><input id="birth" name="birth" title="생년원일" class="inputText" type="text" value="" maxlength="10"><p class="desc">예)1970-01-01</p></td>
									</tr>
								</tbody>
							</table>
							<div class="femail" id="eresult" style="display: none;">
								<div class="confirmWrap findConfirmWrap">
									<p>아이디 찾기가 완료 되었습니다.</p>
									<p>가입된 아이디는 아래와 같습니다.</p>
								</div>
								<div class="compTxt">
								<!--//*2109-07-10 ##ID/PW찾기  -->
								
									<label for="memberInfo01">
										<span style="color: #2263bb">▶</span>  회원님의 아이디는<span class="colorPoint ecolorPoint"></span> 입니다.
									</label><br>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
				<div class="btnWrap alignC">
					<button type="button" class="btnType03" id="confirmMailBtn">확인하기</button>
					<button class="logInBtn"  onclick="location.href='login.jsp' ">로그인하기</button>
				</div>
			</div>
			<!-- //layerContent -->
			<!-- <button type="button" class="layerCloseBtn">레이어 닫기</button> -->
		</section>
		
		<section class="layerWrap layerHp">
			<!-- layerContent -->
			<div class="layerContent">
				<form id="hForm" name="hForm" action="FindIdOk.me" method="post">
					<fieldset>
						<legend>휴대전화번호 확인</legend>
						<div class="boardTypeForm">
							<table  class="tb">
								<caption>휴대전화번호 (이름, 휴대전화번호, 생년월일)</caption>
								<colgroup>
									<col style="width: 135px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">이름</th>
										<td><input id="name" name="name" title="이름" class="inputText" type="text" value="" maxlength="20"></td>
									</tr>
									<tr>
										<th scope="row">휴대전화번호</th>
										<td><input id="hp_no" name="phoneNum" title="휴대전화번호" class="inputText" type="text" value="" maxlength="40"></td>
									</tr>
									<tr>
										<th scope="row">생년월일</th>
										<td><input id="birth" name="birth" title="생년원일" class="inputText" type="text" value="" maxlength="10"><p class="desc">예)1970-01-01</p></td>
									</tr>
								</tbody>
							</table>
							<div class="fphone" id="presult" style="display: none;">
								<div class="confirmWrap findConfirmWrap">
									<p>아이디 찾기가 완료 되었습니다.</p>
									<p>가입된 아이디는 아래와 같습니다.</p>
								</div>
								<div class="compTxt">
								<!--//*2109-07-10 ##ID/PW찾기  -->
								
									<label for="memberInfo01">
										<span style="color: #2263bb">▶</span>  회원님의 아이디는<span class="colorPoint fcolorPoint"></span> 입니다.
									</label><br>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
				<div class="btnWrap alignC">
					<button type="button" class="btnType03" id="confirmHpBtn">확인하기</button>
					<button class="logInBtn" onclick="location.href='login.jsp' ">로그인하기</button>
				</div>
			</div>
			<!-- //layerContent -->
			<!-- <button type="button" class="layerCloseBtn">레이어 닫기</button> -->
		</section>
		<!-- //layerWrap -->
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
<script type="text/javascript">
let contextPath = "${pageContext.request.contextPath}";

	var birthNumCheck=/^[0-9]*$/ ;
		$('#confirmMailBtn').click(function() {
			
			if($('#mForm').find('[id=name]').val() == "" || $('#mForm').find('[id=email]').val() == "" || $('#mForm').find('[id=birth]').val() == "") {
				alert("모든 사항은 필수 입력입니다.");
				return false;
			} else {
				var birth = $('#mForm').find('[id=birth]').val().replace(/-/gi,'');
				if(!birthNumCheck.test(birth) || birth.length < 8){
					alert("생년월일 정보를 한번 더 확인해 주십시오.");
					$('#mForm').find('[id=birth]').focus();
					return false;
				}
				
				if(!$('#mForm').find('[id=birth]').val().match("-")){
					alert("생년월일에" + " '-' " + "를 포함시켜 입력해주세요. ")
					return false;
				}
				
				$.ajax({
					url: contextPath + "/Nfhospital/FindIdOk.me",
					type: "get",
					data: {name: mForm.name.value, email: mForm.email.value, birth: mForm.birth.value},
					contentType: "application/json; charset=utf-8",
					dataType: "json",
					success: function(result){
						console.log(result.find);
						if(result.find != null){
							$("#eresult").css("display", "block");
							$(".ecolorPoint").text(result.find);
						}else{
							alert("가입되어 있지 않습니다.")
						}
						
						
					},
					error: function(request, status, error){
						console.log("실패..");
						console.log(request);
						console.log(status);
						console.log(error);
					}
				});	
				
			}
		});
		
		$('#confirmHpBtn').click(function() {
			
			if($('#hForm').find('[id=name]').val() == "" || $('#hForm').find('[id=hp_no]').val() == "" || $('#hForm').find('[id=birth]').val() == "") {
				alert("모든 사항은 필수 입력입니다.");
				return false;
			} else {

				var birth = $('#hForm').find('[id=birth]').val().replace(/-/gi,'');
				if(!birthNumCheck.test(birth) || birth.length < 8){
					alert("생년월일 정보를 한번 더 확인해 주십시오.");
					$('#hForm').find('[id=birth]').focus();
					return false;
				}
				
				if(!$('#hForm').find('[id=birth]').val().match("-")){
					alert("생년월일에" + " '-' " + "를 포함시켜 입력해주세요. ")
					return false;
				}
				
				if(!$('#hForm').find('[id=hp_no]').val().match("-")){
					alert("휴대폰 번호에" + " '-' " + "를 포함시켜 입력해주세요. ")
					return false;
				}
				
				$.ajax({
					url: contextPath + "/Nfhospital/FindIdOk.me",
					type: "get",
					data: {name: hForm.name.value, phoneNum: hForm.phoneNum.value, birth: hForm.birth.value},
					contentType: "application/json; charset=utf-8",
					dataType: "json",
					success: function(result){
						console.log(result.find);
						if(result.find != null){
							$("#presult").css("display", "block");
							$(".fcolorPoint").text(result.find);
						}else{
							alert("가입되어 있지 않습니다.")
						}
						
						
					},
					error: function(request, status, error){
						console.log("실패..");
						console.log(request);
						console.log(status);
						console.log(error);
					}
				});	
				
			}
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

		
		
	
</script>
</html>