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
    <link rel="stylesheet" href="asset/css/profilechange.css">
    <link rel="stylesheet" href="asset/css/KDHfooter.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
    <title>회원정보수정</title>
</head>
<body>
    <div id="wrap">
        <a href="#content" class="skipToContent">본문으로 바로가기</a>
        <header id="header">
            <div class="innerwrap">
                <h1><a href="${pageContext.request.contextPath}/MainPage.me">서울병원</a></h1>
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
                            <li><a href="newreservation.jsp">예약확인/취소</a></li>
                            <li><a href="profilechange.jsp">개인정보수정</a></li>
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
                <div class="tabTypeCol2">
                    <ul class="clearFix">
                        <li style=" list-style:none; left: 17px;">
                            <a href="${pageContext.request.contextPath}/PasswordChange.me" style="text-decoration-line: none;">비밀번호 변경</a>
                        </li>
                        <li class="current" style=" list-style:none;  right: 50px;">
                            <a href="${pageContext.request.contextPath}/ProfileChange.me" style="text-decoration-line: none;">기본정보 변경</a>
                        </li>
                    </ul>
                </div>
                <form id="memberInfochange" name="memberInfochange" action="${pageContext.request.contextPath}/ProfileChangeOk.me" method="post">
                    <input id="id" name="id" type="hidden" value="${sessionScope.list.getId()}">
                    <fieldset style="padding-top: 65px; border: 0 solid black;">
                        <legend>개인정보</legend>
                        <div class="boardTypeForm">
                            <table>
                                <caption>개인정보 변경</caption>
                                <colgroup>
                                    <col style="width: 140px">
                                    <col style="width: auto">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row">이름</th>
                                        <td><c:out value="${sessionScope.list.getName()}"/></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">아이디</th>
                                        <td><c:out value="${sessionScope.list.getId()}"/></td>
                                    </tr>
                                  <!--   <tr>
                                        <th scope="row">환자번호</th>
                                        <td>00000000</td>
                                    </tr> -->
                                    <tr>
                                        <th scope="row">회원유형</th>
                                        <td>진료회원</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <span class="required">*</span>
                                            이메일
                                        </th>
                                        <td>
                                            <input type="text" name="email1" id="email1" value="" class="inputText" title="이메일아이디">
                                            <span class="txtWrap">@</span>
                                            <input type="text" name="email2" id="email2" value="" class="inputText" title="도메인주소">
                                            <label class="feForm feFoSelect emailSelect" for="feFoSelectIdx1">
                                                <span id="emaildomain">직접입력</span>
                                                <span style="left: 133px; top: -1px; position: absolute;">
                                                    <img src="https://www.snubh.org/front/images/member/img_select.gif">
                                                </span>
		                                        <input id="email" name="email" type="hidden" value="">
                                                <select class="selectTypeE" title="이메일 도메인" id="feFoSelectIdx1" data-fe-idx="feFoSelectIdx1" style="opacity: 0;">
                                                    <option value="default">직접입력</option>
                                                    <option value="hanmail.net">hanmail.net</option>
                                                    <option value="gmail.com">gmail.com</option>
                                                    <option value="naver.com">naver.com</option>
                                                </select>
                                            </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="verTop">
                                            <span class="required">*</span>
                                            주소
                                        </th>
                                        <td>
                                            <input id="sample6_address" name="address" title="기본주소" class="inputAddress"  type="text" value="${sessionScope.list.getAddress()}">
                                            <button type="button" class="btnType01" id="findaddress" onclick="">주소찾기</button>
                                            <br>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="verTop">
                                            <span class="reqired">*</span>
                                            연락처    
                                        </th>
                                        <td>
                                            <div class="innerRow">
                                                <em style="font-style: normal;">휴대전화</em>
                                                <span>${sessionScope.list.getPhoneNum()}</span>
                                            </div>
                                            <div class="innerRow" style="margin-top: 10px; margin-bottom: 10px;">
                                                <em style="font-style: normal;">추가연락처</em>
                                                <input id="tel_no" name="tel_no" type="hidden" value="${sessionScope.list.getAddPhoneNum()}">
                                                <label class="feForm feFoSelect selectSamll" for="tell">
                                                    <span id="te1span">선택</span>
                                                    <span style="left: 77px; top: -1px; position: absolute;">
                                                        <img src="https://www.snubh.org/front/images/member/img_select.gif">
                                                    </span>
                                                    <input id="tel1input" name="addphone1" type="hidden" value="">
                                                    <select id="tel1" title="추가연락처 첫번째 자리" style="opacity: 0;" class data-fe-idx="feFoSelectIdx3">
                                                        <option value>선택</option>
                                                        <option value="02">02</option>
                                                        <option value="031">031</option>
                                                        <option value="032">032</option>
                                                    </select>
                                                </label>
                                                <span class="txtWrap">-</span>
                                                <input type="tel" id="tel2" name="addphone2" class="inputTextSamll"title="추가연락처 두번째 자리" maxlength="4" >
                                                <span class="txtWrap">-</span>
                                                <input type="tel" id="tel3" name="addphone3" class="inputTextSamll" title="추가연락처 세번째 자리"maxlength="4">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">생년월일</th>
                                        <td><c:out value="${sessionScope.list.getBirth()}"/></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">성별</th>
                                        <c:set var="gender" value="${sessionScope.list.getGender()}"/>
                                        <td>
                                        	<c:if test="${gender eq 'M'}">남자</c:if>
                                        	<c:if test="${gender eq 'W'}">여자</c:if>
                                         </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">국적</th>
                                        <td>대한민국</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="btnWrap" style="padding-bottom: 86px;">
                            <a id="confirmBtn" role="button" class="btnType03">저장</a>
                        </div>
                    </fieldset>
                </form>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	let AddphoneNum = "${sessionScope.list.getAddPhoneNum()}";
	let pn1 = AddphoneNum.substring(0, AddphoneNum.indexOf("-"));
	let pn2 = AddphoneNum.substring(AddphoneNum.indexOf("-") + 1, AddphoneNum.lastIndexOf("-"));
	let pn3 = AddphoneNum.substring(AddphoneNum.lastIndexOf("-") + 1);
	
	$("#te1span").text(pn1);
	$("#tel1input").val(pn1);
	$("#tel2").val(pn2);
	$("#tel3").val(pn3);
	
	
	console.log(AddphoneNum);
	let Email = "${sessionScope.list.getEmail()}";
	
	let Email1 = Email.substring(0, Email.indexOf("@"));
	let Email2 = Email.substring(Email.indexOf("@") + 1);
	
	$("#email1").val(Email1);
	$("#email2").val(Email2);
	
	
	$("#tel1").on('change', function(){
		$(this).val($("#tel1 option:checked").text());
		$("#tel1input").val($("#tel1 option:checked").text());
		$("#te1span").text($("#tel1 option:checked").text());
	})
	
	
	$(".selectTypeE").on('change', function(){
		$("#emaildomain").text($(".selectTypeE option:checked").text());
		$("#email2").val($(".selectTypeE option:checked").text());
			
		
	})
	
	$("#email2").on('keyup', function(){
	 	if($("#emaildomain").text("")){
			$("#emaildomain").text("직접입력");
		}		
	})
	 
	
	function addressmake() {
		let text =
				$("#sample6_address").val() 

		$("#add")
				.html(
						"<input type='text' id='address' name='address' value='"+text+"'>")
	}
	
	window.onload = function(){
	    document.getElementById("findaddress").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("sample6_address").value = data.address; // 주소 넣기
	            }
	        }).open();
	    });
	}
	
	function addrSearch() {
		var pop = window.open("./addrPopup.do", "pop","width=570,height=420, scrollbars=yes, resizable=yes");
	}

	new daum.Postcode({
	    onclose: function(state) {
	        //state는 우편번호 찾기 화면이 어떻게 닫혔는지에 대한 상태 변수 이며, 상세 설명은 아래 목록에서 확인하실 수 있습니다.
	        if(state === 'FORCE_CLOSE'){
	            //사용자가 브라우저 닫기 버튼을 통해 팝업창을 닫았을 경우, 실행될 코드를 작성하는 부분입니다.

	        } else if(state === 'COMPLETE_CLOSE'){
	            //사용자가 검색결과를 선택하여 팝업창이 닫혔을 경우, 실행될 코드를 작성하는 부분입니다.
	            //oncomplete 콜백 함수가 실행 완료된 후에 실행됩니다.
	        }
	    }
	});

	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
			, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
		document.form.addr1.value = roadAddrPart1 + roadAddrPart2;
		document.form.addr2.value = addrDetail;
		document.form.zipcode.value = zipNo;
		document.form.dorocode.value = rnMgtSn;
		document.form.sanyn.value = mtYn;
		document.form.mainjibun.value = lnbrMnnm;
		document.form.subjibun.value = lnbrSlno;
		document.form.buildingno.value = bdMgtSn;
		document.form.admcd.value = admCd;
	}
	
	
	$("#confirmBtn").click(function(){
		alert("회원정보가 변경되었습니다. 다시 로그인 해주세요.")
		memberInfochange.submit();
		
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