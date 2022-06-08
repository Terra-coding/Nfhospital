<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>


<!-- Then include bootstrap js -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="asset/css/regi2.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="asset/css/KDHfooter.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>

<body>
	
	<div id="wrap">
	
	<header id="header">
            <div class="innerwrap">
                <h1><a href="${pageContext.request.contextPath}/MainPage.me">서울 병원</a></h1>
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
                    <a href="${pageContext.request.contextPath}/MainPage.me" class="bcHomeBtn hideTxt">HOME</a>
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



		<!-- //contTopBar -->

		<!-- content -->

		<main id="content" class="memJoinContent">
		<div class="contHeadingWrap">
			<h2>회원가입</h2>
		</div>
		<ul class="stepWrap clearFix">

			<li><b>STEP 01</b>약관동의/본인인증</li>
			<li class="current"><b>STEP 02</b>회원정보</li>
			<li><b>STEP 03</b>가입완료</li>
		</ul>
		<form id="memberVo" name="form" action="JoinOk.me" method="post">
			<input id="join_type" name="join_type" type="hidden" value="TG">
			<input id="cert_type" name="cert_type" type="hidden" value="J">
			<input id="pt_no" name="pt_no" type="hidden" value="17804457">
			<input type="hidden" id="mail" name="mail" value=""> 
			<inputtype="hidden" id="dupKey" name="dupKey" value=""> 
				<input type="hidden" id="birthday" name="birthday" value=""> 
				<input type="hidden" id="hpNo" name="hpNo" value=""> 
				<input type="hidden" id="vi" name="vi" value=""> 
				<input type="hidden" id="gender_1" name="gender_1" value="F"> 
				<input type="hidden" id="rpst_tel" name="rpst_tel" value=""> 
				<input type="hidden" id="jumin1" name="jumin1" value=""> 
				<input type="hidden" id="jumin2" name="jumin2" value="2"> 
				<input type="hidden" id="jumin3" name="jumin3" value="2057012"> 
				<input type="hidden" id="authkeyChk" name="authkeyChk"
				value="q6b/I8qkPKuFmP8/dtsC0/GAEDrTTqHptlCORuvTZDU=">

			<fieldset>
				<legend>회원가입</legend>
				<p class="supText">
					<span class="required">*</span> 표기 항목은 필수 입력 항목입니다.
				</p>
				<div class="boardTypeForm">
					<table>
						<caption>회원가입(아이디, 비밀번호, 비밀번호 확인, 이름, 이메일, 주소, 휴대전화, 추가
							연락처, 생년월일, 국적, 성별, 개인정보 보관기한 설정)</caption>
						<colgroup>
							<col style="width: 150px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>

							<tr>
								<th scope="row"><span class="required">*</span> 아이디</th>
								<td><input id="id" name="id" title="아이디" class="inputText"
									type="text" value="" maxlength="12">
								<button type="button" class="btnType01" id="idChkBtn"
										data-layer="layerIdCheck">중복확인</button>
									<span class="desc">한글(3자 이상), 영문 + 숫자 혼용 6~12자</span>
									<span id="result" style="color: #ff3b00; vertical-align: middle; margin-left: 18px;"></span>
									</td>
							</tr>
							<tr>
								<th scope="row"><span class="required">*</span> 비밀번호</th>
								<td><input id="pass" name="password" title="비밀번호" class="inputText" type="password" value=""><span class="desc">영문, 숫자, 특수문자(!@#$%^&amp;*(),.;) 3가지 이상 조합으로 9~16자 이여야 합니다.</span></td>
							</tr>
							<tr>
								<th scope="row"><span class="required">*</span> 비밀번호 확인</th>
								<td><input type="password" id="passConfirm"
									name="passConfirm" class="inputText" title="비밀번호" required="">
								<p class="error" role="alert"></p></td>
							</tr>



							<tr>
								<th scope="row"><span class="required">*</span> 이름</th>
								<td><input id="name" name="name" style="ime-mode: active;"
									class="inputText" value="${param.name }" type="text" readonly="readonly"></td> <!-- readonly!!추가해야함 -->
							</tr>



							<tr>
								<th scope="row"><span class="required">*</span> 이메일</th>
								<td><input id="email" name="email" type="hidden" value="">
									<input type="text" name="email1" id="email1" class="inputText"
									title="이메일 아이디" required=""> <span class="txtWrap">@</span>
									<input type="text" name="email2" id="email2" class="inputText"
									title="도메인 주소" required=""> <label
									class="feForm feFoSelect emailSelect" for="feFoSelectIdx1">
									<span>직접입력</span>
									<select class="selectTypeE" title="이메일 도메인" required="" id="feFoSelectIdx1" data-fe-idx="feFoSelectIdx1" style="opacity: 0;">
									<option value="default">직접입력</option>
									<option value="chollian.net">chollian.net</option>
									<option value="dreamwiz.com">dreamwiz.com</option>
									<option value="empal.com">empal.com</option>
									<option value="freechal.com">freechal.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanafos.com">hanafos.com</option>
									<option value="hananet.net">hananet.net</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="hanmir.com">hanmir.com</option>
									<option value="hitel.net">hitel.net</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="intizen.com">intizen.com</option>
									<option value="kebi.com">kebi.com</option>
									<option value="korea.com">korea.com</option>
									<option value="kornet.net">kornet.net</option>
									<option value="lycos.co.kr">lycos.co.kr</option>
									<option value="msn.com">msn.com</option>
									<option value="nate.com">nate.com</option>
									<option value="naver.com">naver.com</option>
									<option value="netian.com">netian.com</option>
									<option value="netsgo.com">netsgo.com</option>
									<option value="orgio.net">orgio.net</option>
									<option value="paran.com">paran.com</option>
									<option value="sayclub.com">sayclub.com</option>
									<option value="shinbiro.com">shinbiro.com</option>
									<option value="unitel.co.kr">unitel.co.kr</option>
									</select>
									</label>
									</td>
							</tr>
							<tr>
								
								<th class="regiTitle"><span class="required">*</span>주소</th>
								<td id="add"><input type="text" id="sample4_postcode"
									placeholder="우편번호"> <input id="postFind" type="button"
									onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
									<input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="address">
									<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
									<span id="guide" style="color: #999; display: none"></span> <input
									type="text" id="sample4_detailAddress" placeholder="상세주소" name="addressDetail">
									<input type="text" id="sample4_extraAddress" placeholder="참고항목">
									<input type="button" id="makeAddr" onclick="addressmake()"
									value="주소만들기"></td>
									
							</tr>
							<tr>
								<th scope="row"><span class="required">*</span> 휴대전화</th>
								<td><input id="hp_no" name="phoneNum1" type="hidden" value="">
									<label class="feForm feFoSelect selectSmall" for="hp1"><span>${param.phone1}</span><select
										title="휴대전화 첫번째 자리" id="hp1" name="" class="selectTypeM"
										data-fe-idx="feFoSelectIdx2" disabled="" style="opacity: 0;"><option
												value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option></select></label> <span class="txtWrap">-</span>
									<input type="tel" id="hp2" name="phoneNum2" class="inputTextSmall"
									title="휴대전화 두번째 자리" maxlength="4" required=""
									onkeydown="return onlyNumber();" disabled="" value="${param.phone2}" > <span
									class="txtWrap">-</span> <input type="tel" id="hp3" name="phoneNum3"
									class="inputTextSmall" title="휴대전화 세번째 자리" maxlength="4"
									required="" onkeydown="return onlyNumber();" disabled="" value="${param.phone3}">
									</td>
							</tr>
							<tr>
								<th scope="row">추가연락처</th>
								<td><input id="tel_no" name="tel_no" type="hidden" value="">
									<label class="feForm feFoSelect selectSmall" for="tel1"><span>02</span><select
										title="추가연락처 첫번째 자리" id="tel1" name="addphone1" class="selectTypeP"
										data-fe-idx="feFoSelectIdx3" style="opacity: 0;"><option
												value="02">02</option>
											<option value="031">031</option>
											<option value="032">032</option>
											<option value="033">033</option>
											<option value="041">041</option>
											<option value="042">042</option>
											<option value="043">043</option>
											<option value="051">051</option>
											<option value="052">052</option>
											<option value="053">053</option>
											<option value="054">054</option>
											<option value="055">055</option>
											<option value="061">061</option>
											<option value="062">062</option>
											<option value="063">063</option>
											<option value="064">064</option>
											<option value="070">070</option>
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option></select></label> <span class="txtWrap">-</span>
									<input type="tel" id="tel2" name="addphone2" class="inputTextSmall"
									title="추가연락처 두번째 자리" maxlength="4"
									onkeydown="return onlyNumber();"> <span class="txtWrap">-</span>
									<input type="tel" id="tel3" name="addphone3" class="inputTextSmall"
									title="추가연락처 세번째 자리" maxlength="4"
									onkeydown="return onlyNumber();"></td>
							</tr>
							<tr>
								<th scope="row"><span class="required">*</span> 생년월일</th>
								<td><input id="birth" name="birth" type="hidden" value="">
										<input id="residentNum" name="residentNum" type="hidden" value="${param.citizen1}-${param.citizen2}">
									<label class="feForm feFoSelect dateYY" for="year"><span></span>
									<select title="생년월일 연도" id="year" name="year" class="dateYY" data-fe-idx="feFoSelectIdx4" style="opacity: 0;" value="">
											<option value="">연도</option>
											<option value="2022">2022</option>
											<option value="2021">2021</option>
											<option value="2020">2020</option>
											<option value="2019">2019</option>
											<option value="2018">2018</option>
											<option value="2017">2017</option>
											<option value="2016">2016</option>
											<option value="2015">2015</option>
											<option value="2014">2014</option>
											<option value="2013">2013</option>
											<option value="2012">2012</option>
											<option value="2011">2011</option>
											<option value="2010">2010</option>
											<option value="2009">2009</option>
											<option value="2008">2008</option>
											<option value="2007">2007</option>
											<option value="2006">2006</option>
											<option value="2005">2005</option>
											<option value="2004">2004</option>
											<option value="2003">2003</option>
											<option value="2002">2002</option>
											<option value="2001">2001</option>
											<option value="2000">2000</option>
											<option value="1999">1999</option>
											<option value="1998">1998</option>
											<option value="1997">1997</option>
											<option value="1996">1996</option>
											<option value="1995">1995</option>
											<option value="1994">1994</option>
											<option value="1993">1993</option>
											<option value="1992">1992</option>
											<option value="1991">1991</option>
											<option value="1990">1990</option>
											<option value="1989">1989</option>
											<option value="1988">1988</option>
											<option value="1987">1987</option>
											<option value="1986">1986</option>
											<option value="1985">1985</option>
											<option value="1984">1984</option>
											<option value="1983">1983</option>
											<option value="1982">1982</option>
											<option value="1981">1981</option>
											<option value="1980">1980</option>
											<option value="1979">1979</option>
											<option value="1978">1978</option>
											<option value="1977">1977</option>
											<option value="1976">1976</option>
											<option value="1975">1975</option>
											<option value="1974">1974</option>
											<option value="1973">1973</option>
											<option value="1972">1972</option>
											<option value="1971">1971</option>
											<option value="1970">1970</option>
											<option value="1969">1969</option>
											<option value="1968">1968</option>
											<option value="1967">1967</option>
											<option value="1966">1966</option>
											<option value="1965">1965</option>
											<option value="1964">1964</option>
											<option value="1963">1963</option>
											<option value="1962">1962</option>
											<option value="1961">1961</option>
											<option value="1960">1960</option>
											<option value="1959">1959</option>
											<option value="1958">1958</option>
											<option value="1957">1957</option>
											<option value="1956">1956</option>
											<option value="1955">1955</option>
											<option value="1954">1954</option>
											<option value="1953">1953</option>
											<option value="1952">1952</option>
											<option value="1951">1951</option>
											<option value="1950">1950</option>
											<option value="1949">1949</option>
											<option value="1948">1948</option>
											<option value="1947">1947</option>
											<option value="1946">1946</option>
											<option value="1945">1945</option>
											<option value="1944">1944</option>
											<option value="1943">1943</option>
											<option value="1942">1942</option>
											<option value="1941">1941</option>
											<option value="1940">1940</option>
											<option value="1939">1939</option>
											<option value="1938">1938</option>
											<option value="1937">1937</option>
											<option value="1936">1936</option>
											<option value="1935">1935</option>
											<option value="1934">1934</option>
											<option value="1933">1933</option>
											<option value="1932">1932</option>
											<option value="1931">1931</option>
											<option value="1930">1930</option>
											<option value="1929">1929</option>
											<option value="1928">1928</option>
											<option value="1927">1927</option>
											<option value="1926">1926</option>
											<option value="1925">1925</option>
											<option value="1924">1924</option>
											<option value="1923">1923</option>
											<option value="1922">1922</option>
											<option value="1921">1921</option>
											<option value="1920">1920</option>
											<option value="1919">1919</option>
											<option value="1918">1918</option>
											<option value="1917">1917</option>
											<option value="1916">1916</option>
											<option value="1915">1915</option>
											<option value="1914">1914</option>
											<option value="1913">1913</option>
											<option value="1912">1912</option>
											<option value="1911">1911</option>
											<option value="1910">1910</option>
									</select></label><span class="txtWrap">-</span> <label
									class="feForm feFoSelect dateMM" for="month">
									<input type="hidden" id="month" name="month"<c:set var="submonth" value="${fn:substring(param.citizen1, 2, 4)}"/>  value="${submonth}">
									<span><c:out value="${submonth}"/></span><select
										title="생년월일 월" class="dateMM " required=""
										data-fe-idx="feFoSelectIdx5" disabled="" style="opacity: 0;" >
											<option value="">월</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
									</select></label><span class="txtWrap">-</span> <label
									class="feForm feFoSelect dateDD" for="date">
									<input type="hidden" id="date" name="date" <c:set var="subday" value="${fn:substring(param.citizen1, 4, 6)}"/>  value="${subday}">	
									<span><c:out value="${subday}"/></span><select
										title="생년월일 일"  class="dateDD"
										required="" data-fe-idx="feFoSelectIdx6" disabled=""
										style="opacity: 0;">
											<option value="">일</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
									</select></label></td>
							</tr>
							<tr>
								<th scope="row"><span class="required">*</span> 국적</th>
								<td><label class="feForm feFoSelect" for="nation"><span>대한민국</span><select
										title="국적" required="" name="nation" id="nation"
										data-fe-idx="feFoSelectIdx7" style="opacity: 0;">

											<option value="001">가나</option>

											<option value="002">가봉</option>

											<option value="003">가이아나</option>

											<option value="004">감비아</option>

											<option value="174">과델로프</option>

											<option value="005">과테말라</option>

											<option value="175">괌</option>

											<option value="176">교황청</option>

											<option value="006">그레나다</option>

											<option value="177">그루지아</option>

											<option value="007">그리스</option>

											<option value="178">그린랜드</option>

											<option value="008">기니</option>

											<option value="009">기니비사우</option>

											<option value="164">기타</option>

											<option value="179">나미비아</option>

											<option value="010">나우루</option>

											<option value="011">나이지리아</option>

											<option value="012">남아프리카공화국</option>

											<option value="180">남조지아 &amp; 남샌드위치 군도</option>

											<option value="013">네덜란드</option>

											<option value="181">네덜란드 열도</option>

											<option value="014">네팔</option>

											<option value="015">노르웨이</option>

											<option value="182">노폴크 아일랜드</option>

											<option value="183">뉴 칼레도니아</option>

											<option value="016">뉴질랜드</option>

											<option value="184">니우에</option>

											<option value="017">니제르</option>

											<option value="018">니카라과</option>

											<option value="159">대만</option>

											<option value="165" selected="">대한민국</option>

											<option value="019">덴마크</option>

											<option value="020">도미니카공화국</option>

											<option value="021">도미니카연방</option>

											<option value="022">독일</option>

											<option value="023">라오스</option>

											<option value="024">라이베리아</option>

											<option value="185">라트비아</option>

											<option value="032">러시아</option>

											<option value="025">레바논</option>

											<option value="026">레소토</option>

											<option value="027">루마니아</option>

											<option value="029">룩셈부르크</option>

											<option value="028">르완다</option>

											<option value="030">리비아</option>

											<option value="186">리투아니아</option>

											<option value="031">리히텐슈타인</option>

											<option value="033">마다가스카라</option>

											<option value="187">마샬군도</option>

											<option value="188">마세도니아</option>

											<option value="189">마이너 아우틀링 합중국 군도</option>

											<option value="190">마이크로네시아</option>

											<option value="191">마카오</option>

											<option value="192">마티니크</option>

											<option value="035">말라위</option>

											<option value="036">말레이시아</option>

											<option value="034">말리</option>

											<option value="193">메요트</option>

											<option value="038">멕시코</option>

											<option value="039">모나코</option>

											<option value="040">모로코</option>

											<option value="041">모리셔스</option>

											<option value="042">모리타니</option>

											<option value="043">모잠비크</option>

											<option value="194">몬트세라트</option>

											<option value="195">몰도바</option>

											<option value="037">몰디브</option>

											<option value="044">몰타</option>

											<option value="045">몽골</option>

											<option value="046">미국</option>

											<option value="196">미령 버진군도</option>

											<option value="052">미얀마</option>

											<option value="197">바누아투</option>

											<option value="047">바레인</option>

											<option value="048">바베이도스</option>

											<option value="049">바하마</option>

											<option value="050">방글라데시</option>

											<option value="198">버뮤다</option>

											<option value="054">베냉</option>

											<option value="053">베네수엘라</option>

											<option value="055">베트남</option>

											<option value="056">벨기에</option>

											<option value="170">벨라루스</option>

											<option value="199">벨리제</option>

											<option value="200">보빗군도</option>

											<option value="201">보스니아-헤르체고비나</option>

											<option value="057">보츠와나</option>

											<option value="058">볼리비아</option>

											<option value="059">부룬디</option>

											<option value="099">부르키나파소</option>

											<option value="060">부탄</option>

											<option value="202">북마리아나 군도</option>

											<option value="051">북한</option>

											<option value="061">불가리아</option>

											<option value="203">불령 가이아나</option>

											<option value="204">불령 남부지역</option>

											<option value="205">불령 리유니온,코모도 제도</option>

											<option value="206">불령 폴리네시아</option>

											<option value="062">브라질</option>

											<option value="063">브루나이</option>

											<option value="064">사우디아라비아</option>

											<option value="207">산마리노</option>

											<option value="065">상투메. 프린시페</option>

											<option value="066">서사모아</option>

											<option value="208">서사하라</option>

											<option value="067">세네갈</option>

											<option value="068">세이셀</option>

											<option value="209">세인트 키츠 네비스</option>

											<option value="210">세인트 피레 미켈론</option>

											<option value="211">세인트 헬레나</option>

											<option value="069">세인트루시아</option>

											<option value="070">세인트빈센트그레나딘</option>

											<option value="073">소말리아</option>

											<option value="071">솔로몬</option>

											<option value="072">수단</option>

											<option value="212">수리남</option>

											<option value="074">스리랑카</option>

											<option value="213">스발비드 군도</option>

											<option value="075">스와질란드</option>

											<option value="076">스웨덴</option>

											<option value="077">스위스</option>

											<option value="161">스코틀랜드</option>

											<option value="090">스페인</option>

											<option value="172">슬로바키아</option>

											<option value="162">슬로베니아</option>

											<option value="078">시리아</option>

											<option value="079">시에라리온</option>

											<option value="080">싱가포르</option>

											<option value="081">아랍에미리트</option>

											<option value="214">아루바</option>

											<option value="215">아르메니아</option>

											<option value="082">아르헨티나</option>

											<option value="216">아메리칸 사모아</option>

											<option value="083">아이슬란드</option>

											<option value="084">아이티</option>

											<option value="091">아일랜드</option>

											<option value="171">아제르바이잔</option>

											<option value="085">아프가니스탄</option>

											<option value="086">안도라</option>

											<option value="217">안타티카</option>

											<option value="218">안티가 바부다</option>

											<option value="087">알바니아</option>

											<option value="088">알제리</option>

											<option value="089">앙골라</option>

											<option value="219">앙귈라</option>

											<option value="105">에디오피아</option>

											<option value="220">에리트리아</option>

											<option value="221">에스토니아</option>

											<option value="092">에콰도르</option>

											<option value="093">엘살바도르</option>

											<option value="094">영국</option>

											<option value="222">영령 버진군도</option>

											<option value="223">영령 인도양</option>

											<option value="224">영령 캐이맨 군도</option>

											<option value="095">예멘</option>

											<option value="096">오만</option>

											<option value="098">오스트리아</option>

											<option value="100">온두라스</option>

											<option value="225">왈라스 &amp; 퓨투나 군도</option>

											<option value="101">요르단</option>

											<option value="102">우간다</option>

											<option value="103">우루과이</option>

											<option value="158">우즈베키스탄</option>

											<option value="169">우크라이나</option>

											<option value="104">유고슬라비아</option>

											<option value="106">이라크</option>

											<option value="107">이란</option>

											<option value="108">이스라엘</option>

											<option value="109">이집트</option>

											<option value="110">이탈리아</option>

											<option value="112">인도</option>

											<option value="111">인도네시아</option>

											<option value="113">일본</option>

											<option value="000">입력안됨(누락)</option>

											<option value="114">자메이카</option>

											<option value="226">자이레</option>

											<option value="116">잠비아</option>

											<option value="117">적도기니</option>

											<option value="119">중국</option>

											<option value="118">중앙아프리카공화국</option>

											<option value="120">지부티</option>

											<option value="227">지브랄타</option>

											<option value="228">짐바브웨</option>

											<option value="121">차드</option>

											<option value="122">체코</option>

											<option value="123">칠레</option>

											<option value="124">카메룬</option>

											<option value="136">카보베르데</option>

											<option value="163">카자흐스탄</option>

											<option value="125">카타르</option>

											<option value="126">캄보디아</option>

											<option value="127">캐나다</option>

											<option value="128">케냐</option>

											<option value="130">코모르</option>

											<option value="229">코스 군도</option>

											<option value="131">코스타리카</option>

											<option value="129">코트디부아르</option>

											<option value="132">콜롬비아</option>

											<option value="133">콩고공화국</option>

											<option value="115">콩고민주공화국</option>

											<option value="134">쿠바</option>

											<option value="135">쿠웨이트</option>

											<option value="230">쿡 아일랜드</option>

											<option value="167">크로아티아</option>

											<option value="231">크리스마스 아일랜드</option>

											<option value="168">키르기스스탄</option>

											<option value="232">키리바티</option>

											<option value="137">키프로스</option>

											<option value="138">타이</option>

											<option value="173">타지키스탄</option>

											<option value="139">탄자니아</option>

											<option value="140">터키</option>

											<option value="141">토고</option>

											<option value="233">토켈라우</option>

											<option value="142">통가</option>

											<option value="234">투르크 &amp; 카이코스 군도</option>

											<option value="235">투르크멘</option>

											<option value="143">투발루</option>

											<option value="144">튀니지</option>

											<option value="145">트리니나드토바고</option>

											<option value="236">티모르</option>

											<option value="146">파나마</option>

											<option value="147">파라과이</option>

											<option value="237">파로에 군도</option>

											<option value="148">파키스탄</option>

											<option value="149">파푸아뉴기니</option>

											<option value="238">팔라우</option>

											<option value="239">팔레스타인</option>

											<option value="150">페루</option>

											<option value="151">포르투칼</option>

											<option value="240">포클랜드 군도</option>

											<option value="152">폴란드</option>

											<option value="160">푸에르토리코</option>

											<option value="153">프랑스</option>

											<option value="154">피지</option>

											<option value="241">피트카이른</option>

											<option value="155">핀란드</option>

											<option value="156">필리핀</option>

											<option value="157">헝가리</option>

											<option value="097">호주</option>

											<option value="166">홍콩</option>

									</select></label></td>
								</tr>
								<c:if test="${(fn:substring(param.citizen2, 0, 1) eq '1') || (fn:substring(param.citizen2, 0, 1) eq '3')}">
									<tr>
										<th scope="row"><span class="required">*</span> 성별</th>
										<td><label class="feForm feFoRadio checked" for="male"><input
												type="radio" name="gender" id="male" value="M"
												data-fe-idx="feFoRadioIdx1" 
												style="opacity: 0;" checked="checked"></label><label for="male" class="lblTxt">남자</label>
											<label class="feForm feFoRadio" for="female"><input
												type="radio" name="gender" id="female" value="W"
												data-fe-idx="feFoRadioIdx2" 
												 style="opacity: 0;"></label><label
											for="female" class="lblTxt">여자</label> <span class="desc">정확히
												선택해 주십시오.</span></td>
									</tr>
								</c:if>
								<c:if test="${(fn:substring(param.citizen2, 0, 1) eq '2') || (fn:substring(param.citizen2, 0, 1) eq '4')}">
									<tr>
										<th scope="row"><span class="required">*</span> 성별</th>
										<td><label class="feForm feFoRadio" for="male"><input
												type="radio" name="gender" id="male" value="M"
												data-fe-idx="feFoRadioIdx1" 
												style="opacity: 0;" ></label><label for="male" class="lblTxt">남자</label>
											<label class="feForm feFoRadio checked" for="female"><input
												type="radio" name="gender" id="female" value="W"
												data-fe-idx="feFoRadioIdx2" 
												 style="opacity: 0;" checked="checked"></label><label
											for="female" class="lblTxt">여자</label> <span class="desc">정확히
												선택해 주십시오.</span></td>
									</tr>
								</c:if>
							
							
							<tr>
								<th scope="row" class="verTop"><span class="required">*</span>
											
									자동가입방지
									
									</th>
								<td>
									<div class="autoJoin">
										<div class="img">
											<img src="https://www.snuh.org/asset/img/member/img_mem2.png"
												alt="2"> <img
												src="https://www.snuh.org/asset/img/member/img_mem5.png"
												alt="5"> <img
												src="https://www.snuh.org/asset/img/member/img_mem4.png"
												alt="4"> <img
												src="https://www.snuh.org/asset/img/member/img_mem9.png"
												alt="9"> <img
												src="https://www.snuh.org/asset/img/member/img_mem2.png"
												alt="2"> <img
												src="https://www.snuh.org/asset/img/member/img_mem3.png"
												alt="3"> <img
												src="https://www.snuh.org/asset/img/member/img_mem1.png"
												alt="1"> <img
												src="https://www.snuh.org/asset/img/member/img_mem8.png"
												alt="8">

										</div>
										<div class="info">
											<p>
												자동가입을 방지하기 위해 보안절차를 거치고 있습니다.<br> 위쪽 이미지를 보이는 대로
												입력해주세요.
											</p>
											<input type="text" name="prevent" id="prevent" maxlength="8"
												onkeydown="return onlyNumber();">
										</div>
									</div>
								</td>
							</tr>

						</tbody>
					</table>
				</div>
				<!-- //boardTypeForm -->
			</fieldset>
		</form>
		<div class="btnWrap" style="padding-left: 999px;">
			<button type="button" class="btnType03 btnBig" id="nextBtn" >다음단계</button>
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
	function validateOp(){
		var re = /^[0-9]+$/;
		try {
	 	if( $('#tel_cl02').val() == '' || $('#tel_cl03').val() == ''  || $('#email_cl01').val() == ''  || $('#email_cl02').val() == ''  || $('#title_cl').val() == ''  || $('#contents_cl').val() == ''){
				alert('*(필수)항목은 반드시 입력해주세요'); return false;
			}
	
			if(! (re.test($('#tel_cl02').val()) && re.test($('#tel_cl03').val())) ){
				alert("전화번호는 숫자만 입력가능합니다.");return false;
			}
	
			if(!$('#agree').is(':checked')){
				alert('개인정보 처리방침에 동의해주세요.'); return false;
			}
			return true;
		}catch (e) {
			console.log(e);
			return false;
		}
	}

</script>
		<!-- <script type="text/javascript" src="/asset/js/www_bs.js"></script> -->
		<!-- www.snuh.org 본원 홈페이지 -->
		<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-3227935-1"></script>
<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	
	  gtag('config', 'UA-3227935-1');
  
  
  
  
  
  
  
  
  function addressmake() {
		let text = $("#sample4_postcode").val() + " "
				+ $("#sample4_roadAddress").val() + " "
				+ $("#sample4_detailAddress").val();

		$("#add")
				.html(
						"<input type='text' id='address' name='address' value='"+text+"'>")
	}
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== ''
								&& /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== ''
								&& data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							guideTextBox.innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}
	
	//email select Event
	$(".selectTypeE").on('change', function(){
		$(".emailSelect").children('span').text($(this).val());
		$("#email2").val($(this).val());
	})
	
	
	//plusTel Event
	$("#tel1").on('change', function(){
		$(this).prev('span').text($("#tel1 option:checked").text());
	})
	
	//nation Event
	$("#nation").on('change', function(){
		$("label[for='nation']").children('span').text($("#nation option:checked").text()); 
	})
	
	$("#year").on('change', function(){
		$(this).prev('span').text($("#year option:checked").text());
		$(this).val($("#year option:checked").text());
			if($('#year').val() != "" && $('#month').val() != "" && $('#date').val() != "") {
				let birthday = $('#year').val() + "-" + $('#month').val() + "-" + $('#date').val();
				$('#birth').val(birthday);
			}
	})
	
	
	
	
	
</script>
<script type="text/javascript">
		let contextPath = "${pageContext.request.contextPath}";
		
		
		
		var idPass = false;
		var idCheck=/^[가-힣A-Za-z0-9+]*$/ ;
		var idKorCheck=/^[가-힣0-9]*$/ ;
		var idNumCheck=/^[0-9]*$/ ;
		var passCheck=/^(?=.*[0-9])(?=.*[!@#$%^&*(),.;])[a-zA-Z0-9!@#$%^&*(),.;]{9,16}$/;
		var blankCheck=/[\s]/g;
	
		
		//아이디 중복확인 버튼 클릭 
		//환자번호 사용을 방지하기 위해 숫자만 입력되지 않도록 체크 추가 2017-11-12 SEMI ADD
		//한글이름 + 숫자는 가능하도록 처리 2017-11-12 SEMI ADD
			$('#idChkBtn').click(function() {
				if($('#id').val() == "") {
					alert("아이디를 입력하신 후 중복체크를 해주세요.");
					$('#id').focus();
						return false;
					} else {
							var id = $('#id').val();
									
							if(blankCheck.test(id)) {
								alert('아이디에 공백이 입력되어 있습니다. 수정해 주십시오.');
							$('#id').focus();
						}
								
								//idPass = true;
								if(idKorCheck.test(id)) {
									if(id.length < 3 || id.length > 12) {
										alert("한글아이디는 3자 ~ 12자까지 가능합니다.");
										$('#id').focus();
									} else if(idNumCheck.test(id)) {
										alert("1자 이상 문자를 사용해야 합니다.");
										$('#id').focus();
									} else {
										idPass = true;
									} 
								} else if(idCheck.test(id)) {
									if(id.length < 6 || id.length > 12) {
										alert("아이디는 6자 ~ 12자까지 가능합니다.");
										$('#id').focus();
									} else {
										idPass = true;
									}
								}else if(idNumCheck.test(id)) {
									alert("1자 이상 문자를 사용해야 합니다.");
									$('#id').focus();
								} else {
									alert("아이디는 한글, 영문, 숫자만 가능합니다.");
									$('#id').focus();
								}
							
								/* 아이디 중복검사 */
										if(idPass){
										
										$.ajax({
										url: contextPath + "/Nfhospital/CheckIdOk.me",
										type: "get",
										data: {id: $("input[name='id']").val()},
										contentType: "application/json; charset=utf-8",
										dataType: "json",
										success: function(result){
											console.log(result.check);
											if(result.check){
												$("span#result").text("중복된 아이디입니다.");
												$("#result").css("color", "red")
											}else{
												$("span#result").text("사용가능한 아이디입니다.");
												$("#result").css("color", "blue")
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
								}
								return idPass;
							});

		$('#passConfirm').blur(function() {
			if($('#pass').val() != $('#passConfirm').val()) {
				$(".error").text("입력하신 비밀번호가 일치하지 않습니다.");
				//$('#passConfirm').focus();
				return false;
			} else {
				$(".error").text("");
			}
		});
		
		//20200504 아이디 검사 후 변경 하면 다시 검사
		$('#id').change(function() {
			idPass = false;
		});

		//다음단계 버튼 클릭
		$('#nextBtn').click(function() {
			if($('#id').val() == "") {
				alert("아이디를 입력해주세요.");
				$('#id').focus();
				return false;
			}

			if(!idPass) {
				alert("아이디 중복체크를 해주세요.");
				return false;
			}

			if($('#pass').val() == "") {
				alert("비밀번호를 입력해주세요.");
				$('#pass').focus();
				return false;
			}

			if($('#passConfirm').val() == "") {
				alert("비밀번호확인을 입력해주세요.");
				$('#passConfirm').focus();
				return false;
			}

			if($('#pass').val() != "" && $('#pass').length > 0) {
				var pass = $('#pass').val();
				if(!passCheck.test(pass)) {
					alert("비밀번호 규칙을 확인해주시기 바랍니다.\n*영문, 숫자, 특수문자(!@#$%^&*(),.;) 3가지 이상 조합 9 ~ 16자 이내");
					$('#pass').focus();
					return false;
				}
			}

			if($('#name').val() == "") {
				alert("이름을 입력해주세요.");
				$('#name').focus();
				return false;
			}

			if($('#email1').val() == "") {
				alert("이메일 아이디를 입력해주세요.");
				$('#email1').focus();
				return false;
			}

			if($("#email2").val() == "") {
				alert("이메일 도메인을 입력해주세요.");
				$('#email2').focus();
				return false;
			}

			if($('#email1').val() != "" && $('#email2').val() != "") {
				var email = $('#email1').val() + "@" + $('#email2').val();
				$('#email').val(email);
			}

			if($('#zipcode').val() == "") {
				alert("우편번호를 입력해주세요.");
				$('#zipcode').focus();
				return false;
			}

			if($('#addr1').val() == "") {
				alert("주소를 입력해주세요.");
				$('#addr1').focus();
				return false;
			}

			if($('#addr2').val() == "") {
				alert("상세주소를 입력해주세요.");
				$('#addr2').focus();
				return false;
			}

			if($('#hp1').val() == "" ) {
				alert("휴대전화 첫번쨰 자리를 입력해주세요.");
				$('#hp1').focus();
				return false;
			}

			if($('#hp2').val() == "" ) {
				alert("휴대전화 두번째 자리를 입력해주세요");
				$('#hp2').focus();
				return false;
			}

			if($('#hp3').val() == "" ) {
				alert("휴대전화 세번째 자리를 입력해주세요.");
				$('#hp3').focus();
				return false;
			}

			if($('#hp1').val() != "" && $('#hp2').val() != "" && $('#hp3').val() != "") {
				var hpNo = $('#hp1').val() + "-" + $('#hp2').val() + "-" + $('#hp3').val();
				$('#hp_no').val(hpNo);
			}

			if($('#tel1').val() != "" && $('#tel2').val() != "" && $('#tel3').val() != "") {
				var telNo = $('#tel1').val() + "-" + $('#tel2').val() + "-" + $('#tel3').val();
				$('#tel_no').val(telNo);
			}

			if($('#year').val() == "") {
				alert("연도를 선택해 주세요.");
				$('#year').focus();
				return false;
			}



			if($('#prevent').val() == "") {
				alert("자동가입방지를 입력해주세요.");
				$('#prevent').focus();
				return false;
			}

			if($('#prevent').val() != 25492318) {
				alert("자동가입방지가 일치하지 않습니다.");
				return false;
			}

			$('#memberVo').submit();
		});

		
		

	function addrSearch() {
		var pop = window.open("./addrPopup.do", "pop","width=570,height=420, scrollbars=yes, resizable=yes");
	}

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

	//숫자만 입력 가능
	function onlyNumber() {
		if ((window.event.keyCode == 8) || (window.event.keyCode == 9)
				|| (window.event.keyCode == 46)) {
			window.event.returnValue = true;
		} else if ((window.event.keyCode >= 96) && (window.event.keyCode <= 105)) {
			window.event.returnValue = true;
		} else if ((window.event.keyCode < 48) || (window.event.keyCode > 57)) {
			window.event.returnValue = false;
		}
	}
	
	
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


