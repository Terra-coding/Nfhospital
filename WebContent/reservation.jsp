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
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="asset/css/reservation.css">
    <link rel="stylesheet" href="asset/css/KDHfooter.css">
    <title>인터넷 진료 예약</title>
</head>
<body>
    <div id="wrap">
        <a href="#content" class="skipToContent">본문으로 바로가기</a>
        <header id="header">
            <div class="innerwrap">
                <h1><a href="mainpage.jsp">서울병원</a></h1>
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

                    <button class="totMenuBtn hideTxt" type="button" aria-controls="totMenu">전체 메뉴 열기</button>
                    <ul class="gnbList clearFix">
                        <li>
                            <a href="medicalInfo.jsp">진료안내</a>
                        </li>
                        <li>
                            <a href="allFAQ.jsp">이용안내</a>
                        </li>
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
                    <a href="mainpage.jsp" class="bcHomeBtn hideTxt">HOME</a>
                    <span class="hideEl">&gt;</span>
                    
                    <div class="">
                        <em>진료안내</em>
                        <button type="button" class="bcLinkLayerBtn hideTxt">주 메뉴 목록 열기</button>
                        <!-- bcLinkLayer -->
                        <ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;">
                                
                            <li><a href="">진료안내</a></li>
                            <li><a href="">이용안내</a></li>
                            <li><a href="">건강안내</a></li>
                            <li><a href="">건강정보</a></li>
                            <li><a href="">고객참여</a></li>
                            
                                
                        </ul>
                        <!-- //bcLinkLayer -->
                    </div>
                    <span class="hideEl">&gt;</span>
                    <div class="">
                        <em>인터넷진료예약</em>
                        <button type="button" class="bcLinkLayerBtn hideTxt">서브 메뉴 목록 열기</button>
                        <!-- bcLinkLayer -->
                        <ul class="bcLinkLayer" role="region" aria-hidden="true" aria-expanded="false" style="display: none;" tabindex="0">
					
                            <li><a href="">진료과/의료진</a></li>
                            <li><a href="reservation.jsp">인터넷진료예약</a></li>
                            <li><a href="newreservation.jsp">예약확인/취소</a></li>
                            <li><a href="">외래진료안내</a></li>
                            <li><a href="">입/퇴원안내</a></li>
                            <li><a href="">가정간호 안내</a></li>
                            <li><a href="">응급의료센터</a></li>
                            <li><a href="">건강증진센터</a></li>
                            <li><a href="">공단건강증진센터</a></li>
                            
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
                <h2>인터넷 진료예약</h2>
            </div>
            <div class="rsvContainer clearFix">
            	<div class="rsvClinicWrap current">
            		<div class="boardInfo clearFix">
            			<ul class="contTabWrap feTab" role="tablist">
            				<li class="current">
            					<a onclick="detpList('1','');" aria-selected="true">진료과</a>
            				</li>
            			</ul>
            			<div class="boardSearch">
            				<button type="button" class="btnType01 oneclick">
            					검색
            				</button>
            			</div>
            		</div>
	            	<div class="arrow prev">&lt;</div>
	            	<div class="arrow next">&gt;</div>
            		<div id="pub" class="rsvClinicList feTabcont slldeWrap feslide" role="tabpnel" aria-hidden="false" data-tab-group="feTab1Gr0" style="display: block;">
            			<div class="feSlMask">
            				<div class="feSlWrap">
            					<div class="feSlItem current" id="feSlItem-pub1" style="float: left; top: 0px; left: 0px; visibility: visible;">
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx3">
            							<input type="radio" name="clinic" value="IMR" onclick="doctorList('1','IMR');" title="호흡기내과" id="feFoRadioIdx3" data-fe-idx="feFoRadioIdx3" style="opacity:0;">
            							<span>호흡기내과</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx4">
            							<input type="radio" name="clinic" value="IMC" onclick="doctorList('1','IMC');" title="순환기내과" id="feFoRadioIdx4" data-fe-idx="feFoRadioIdx4" style="opacity:0;">
            							<span>순환기내과</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx5">
            							<input type="radio" name="clinic" value="IMG" onclick="doctorList('1','IMG');" title="소화기내과" id="feFoRadioIdx5" data-fe-idx="feFoRadioIdx5" style="opacity:0;">
            							<span>소화기내과</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx6">
            							<input type="radio" name="clinic" value="IMH" onclick="doctorList('1','IMH');" title="혈액종양내과" id="feFoRadioIdx6" data-fe-idx="feFoRadioIdx6" style="opacity:0;">
            							<span>혈액종양내과</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx7">
            							<input type="radio" name="clinic" value="IME" onclick="doctorList('1','IME');" title="내분비대사내과" id="feFoRadioIdx7" data-fe-idx="feFoRadioIdx7" style="opacity:0;">
            							<span>내분비대사내과</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx8">
            							<input type="radio" name="clinic" value="IMA" onclick="doctorList('1','IMA');" title="알레르기내과" id="feFoRadioIdx8" data-fe-idx="feFoRadioIdx8" style="opacity:0;">
            							<span>알레르기내과</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx9">
            							<input type="radio" name="clinic" value="IMN" onclick="doctorList('1','IMN');" title="신장내과" id="feFoRadioIdx9" data-fe-idx="feFoRadioIdx9" style="opacity:0;">
            							<span>신장내과</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx10">
            							<input type="radio" name="clinic" value="IMI" onclick="doctorList('1','IMI');" title="감염내과" id="feFoRadioIdx10" data-fe-idx="feFoRadioIdx10" style="opacity:0;">
            							<span>감염내과</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx11">
            							<input type="radio" name="clinic" value="IMJ" onclick="doctorList('1','IMJ');" title="류마티스내과" id="feFoRadioIdx11" data-fe-idx="feFoRadioIdx11" style="opacity:0;">
            							<span>류마티스내과</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx12">
            							<input type="radio" name="clinic" value="IMZ" onclick="doctorList('1','IMZ');" title="내과(일반)" id="feFoRadioIdx12" data-fe-idx="feFoRadioIdx12" style="opacity:0;">
            							<span>내과(일반)</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx13">
            							<input type="radio" name="clinic" value="IM" onclick="viewInformation('DP','1','IM', '','Y');" title="내과" id="feFoRadioIdx13" data-fe-idx="feFoRadioIdx13" style="opacity:0;">
            							<span>내과</span>
            						</label>
            						<label class="feForm feFoRadio checked" for="feFoRadioIdx14">
            							<input type="radio" name="clinic" value="GS" onclick="doctorList('1','GS');" title="외과" id="feFoRadioIdx14" data-fe-idx="feFoRadioIdx14" style="opacity:0;">
            							<span>외과</span>
            						</label>
            					</div>
            					<div class="feSlItem" id="feSlItem-pub2" style="float: left; visibility: hidden; top: 0px; left: -678px;">
            						<label class="feForm feFoRadio" for="feFoRadioIdx15">
            							<input type="radio" name="clinic" value="HBPS" onclick="doctorList('1','HBPS');" title="간담췌외과" id="feFoRadioIdx15" data-fe-idx="feFoRadioIdx15" style="opacity:0;">
            							<span>간담췌외과</span>
            						</label>
            						<label class="feForm feFoRadio" for="feFoRadioIdx16">
            							<input type="radio" name="clinic" value="GIS" onclick="doctorList('1','GIS');" title="위장관외과" id="feFoRadioIdx16" data-fe-idx="feFoRadioIdx16" style="opacity:0;">
            							<span>위장관외과</span>
            						</label>
            						<label class="feForm feFoRadio" for="feFoRadioIdx17">
            							<input type="radio" name="clinic" value="CRS" onclick="doctorList('1','CRS');" title="대장항문외과" id="feFoRadioIdx17" data-fe-idx="feFoRadioIdx17" style="opacity:0;">
            							<span>대장항문외과</span>
            						</label>
            						<label class="feForm feFoRadio" for="feFoRadioIdx18">
            							<input type="radio" name="clinic" value="BEN" onclick="doctorList('1','BEN');" title="유방내분비외과" id="feFoRadioIdx18" data-fe-idx="feFoRadioIdx18" style="opacity:0;">
            							<span>유방내분비외과</span>
            						</label>
            						<label class="feForm feFoRadio" for="feFoRadioIdx19">
            							<input type="radio" name="clinic" value="TVS" onclick="doctorList('1','TVS');" title="이식혈관외과" id="feFoRadioIdx19" data-fe-idx="feFoRadioIdx19" style="opacity:0;">
            							<span>이식혈관외과</span>
            						</label>
            						<label class="feForm feFoRadio" for="feFoRadioIdx20">
            							<input type="radio" name="clinic" value="TRS" onclick="viewInformation('DP','1','TRS', '','Y');" title="외상외과" id="feFoRadioIdx20" data-fe-idx="feFoRadioIdx20" style="opacity:0;">
            							<span>외상외과</span>
            						</label>
            						<label class="feForm feFoRadio" for="feFoRadioIdx21">
            							<input type="radio" name="clinic" value="GSZ" onclick="doctorList('1','GSZ');" title="외과(일반)" id="feFoRadioIdx21" data-fe-idx="feFoRadioIdx21" style="opacity:0;">
            							<span>외과(일반)</span>
            						</label>
            						<label class="feForm feFoRadio" for="feFoRadioIdx22">
            							<input type="radio" name="clinic" value="OG" onclick="doctorList('1','OG');" title="산부인과" id="feFoRadioIdx22" data-fe-idx="feFoRadioIdx22" style="opacity:0;">
            							<span>산부인과</span>
            						</label>
            						<label class="feForm feFoRadio" for="feFoRadioIdx23">
            							<input type="radio" name="clinic" value="FM" onclick="doctorList('1','FM');" title="가정의학과" id="feFoRadioIdx23" data-fe-idx="feFoRadioIdx23" style="opacity:0;">
            							<span>가정의학과</span>
            						</label>
            						<label class="feForm feFoRadio" for="feFoRadioIdx24">
            							<input type="radio" name="clinic" value="HPC" onclick="doctorList('1','HPC');" title="건강증진센터" id="feFoRadioIdx24" data-fe-idx="feFoRadioIdx24" style="opacity:0;">
            							<span>건강증진센터</span>
            						</label>
            						<label class="feForm feFoRadio" for="feFoRadioIdx25">
            							<input type="radio" name="clinic" value="AN" onclick="viewInformation('DP','1','AN', '','Y');" title="마취통증의학과" id="feFoRadioIdx25" data-fe-idx="feFoRadioIdx25" style="opacity:0;">
            							<span>마취통증의학과</span>
            						</label>
            						
            					</div>
            				</div>
            			</div>
            		</div>
            	</div>
            	
            	<div class="rsvInfoWrap" style="margin-left: 10px;">
            	<form action="${pageContext.request.contextPath }/ReservationOk.re" name="reservationForm" method="post" style="color:white; margin-left:22px;">
            		<div class="user">
            			<h3>예약하실 정보확인</h3>
            			<dl>
            				<input type="hidden" id="name" name="name" value="">
            				<dt>환자명 :<c:out value="${sessionScope.list.getName()}"/></dt>
            				<!-- 여기는 로그인된 이름값 가져오기 -->
            				<dd></dd>
            			</dl>
            			<div class="btnWrap">
            				<button type="button" class="btnType01 layerBtn" data-layer="layerInfoCheck">환자정보확인</button>
            				<button type="button" class="btnType01" onclick="setFastRsv();">최근예약</button>
            			</div>
            		</div>
            		<div class="info">
            			<ul style="padding: 0; margin: 0;">
            				<li>
            					병원/진료과
            					<input type="hidden" id="medicalDept" name="medicalDept" value=""> 
            					<i style="font-style: normal;"> : </i>
            					<em class="select1"></em>
            				</li>
            				<li>
            					의료진
            					<input type="hidden" id="doctor" name="doctor" value="">
            					<i style="font-style: normal;"> : </i>
            					<em class="select2"></em>
            					<!-- &nbsp;&nbsp;
            					<span style="display: none">선택진료</span> -->
            				</li>
            				<li>
            					진료일시
            					<i style="font-style: normal;"> : </i>
            					<input type="date" name="scheduleDate"  style="border: none; background-color: #2763ba; color: white; font-size: 16px;" ><br>
            					
            				</li>
            				<li>
            					진료시간 
            					<i style="font-style: normal;"> : </i>
            					<input type="time" name="scheduleDate" min="09:00" max="17:00" step="900" required style="border: none; background-color: #2763ba; color: white; font-size: 16px;" >
            				</li>
            				<li>
            					<input type="button" id="confirmBtn" value="예약 확정" class="btnType03" onclick="send()"
            			style="border: 1px solid #2263bb; color: #fff; background-color: #2263bb; padding: 5px 103px 15px 78px; text-align: center; font-size: 19px; cursor: pointer;">
            				</li>
            			</ul>
            		</div>
            		</form>
            	</div>
            	
            	<div class="rsvDoctorWrap current">
            		<div class="contTitleWrap">
            			<h3>
            				의료진 목록
            			</h3>
            			<div>
            				<ul>
            					<li style="list-style: none;">
            						<button type="button" class="btnType01" onclick="itrstDoctorList();">담당의료진</button>
            					</li>
            				</ul>
            			</div>
            		</div>
            		<div class="rsvDoctorList">
            			<p class="noResult">
            				위에서
    						<strong>진료과 선택</strong>
    						또는 질병병 /
    						<strong>의료진명 검색</strong>
    						을 먼저해주세요.
            			</p>
            			<ul id="doctorList">
            				<li style="list-style: none;">
            					<div class="rsvDoctorInfo">
									<div class="thumb">
										<img src="https://www.snuh.org/upload/med/dr/d3f79eb6206a422ca01934f15ed98ea4.jpg" alt="조상현">
									</div>           
									<div class="info">
										<em class="name">
											조상현
										</em>
										<em>알레르기내과</em>
										<p>
											<span>세부전공 :</span>
											천식, 만성기침, 알레르기, 알레르기비염, 면역성폐질환, 기타알레르기질환, 면역치료
										</p>
									</div> 
									<button id="doctorbutton1" type="button" onclick="setDoctor">선택</button>						
            					</div>
            				</li>
            				<li style="list-style: none;">
            					<div class="rsvDoctorInfo">
									<div class="thumb">
										<img src="https://www.snuh.org/upload/med/dr/1029516_01017_01.jpg" alt="강혜련">
									</div>           
									<div class="info">
										<em class="name">
											강혜련
										</em>
										<em>알레르기내과</em>
										<p>
											<span>세부전공 :</span>
											천식, 약물 알레르기, 만성기침, 두드러기, 혈관부종, 아나필락시스, 탈감작치료, 알레르기비염
										</p>
									</div> 
									<button id="doctorbutton2" type="button" data-docid="01017" onclick="setDoctor(this, 'IMA', '01017', '강혜련', 'N', '알레르기내과');">선택</button>						
            					</div>
            				</li>
            				<li style="list-style: none;">
            					<div class="rsvDoctorInfo">
									<div class="thumb">
										<img src="https://www.snuh.org/upload/med/dr/1027863_65379_01.jpg" alt="박흥우">
									</div>           
									<div class="info">
										<em class="name">
											박흥우
										</em>
										<em>알레르기내과</em>
										<p>
											<span>세부전공 :</span>
											알레르기, 알레르기비염, 천식, 만성기침, 두드러기
										</p>
									</div> 
									<button id="doctorbutton3" type="button" data-docid="01136" onclick="setDoctor(this, 'IMA', '01136', '박흥우', 'N', '알레르기내과');">선택</button>						
            					</div>
            				</li>
            				<li style="list-style: none;">
            					<div class="rsvDoctorInfo">
									<div class="thumb">
										<img src="https://www.snuh.org/upload/med/dr/0aa2f1329dcd48eca53d675fe71b6ef6.jpg" alt="이서영">
									</div>           
									<div class="info">
										<em class="name">
											이서영
										</em>
										<em>알레르기내과</em>
										<p>
											<span>세부전공 :</span>
											천식, 만성기침, 두드러기, 비염, 면역치료, 아니필락시스, 음식물알레르기, 약물알레르기, 아토피피부염, 면역치료
										</p>
									</div> 
									<button id="doctorbutton4" type="button" data-docid="65870" onclick="setDoctor(this, 'IMA', '65870', '이서영', 'N', '알레르기내과');">선택</button>						
            					</div>
            				</li>
            				<li style="list-style: none;">
            					<div class="rsvDoctorInfo">
									<div class="thumb">
										<img src="	https://www.snuh.org/upload/med/dr/b4ee6599263c4094b5e4a3f2e5a7a6b6.jpg" alt="서장호">
									</div>           
									<div class="info">
										<em class="name">
											서장호
										</em>
										<em>알레르기내과</em>
										<p>
											<span>세부전공 :</span>
											천식, 알레르기, 알레르기비염, 약물 알레르기, 음식물알레르기, 피부 알레르기, 두드러기, 아토피 피부염
										</p>
									</div> 
									<button id="doctorbutton5" type="button" data-docid="83485" onclick="setDoctor(this, 'IMA', '83485', '서장호', 'N', '알레르기내과');">선택</button>						
            					</div>
            				</li>
            				
            			</ul>
            		</div>
            		
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
<script src="asset/js/reservation.js"></script>
<script>
function reservation(){
	reservationForm.submit();
}

$(document).ready(function() {
	$('.noResult').show(); //페이지를 로드할 때 표시할 요소
	$('.rsvDoctorInfo').hide(); //페이지를 로드할 때 숨길 요소
	$('.feForm').click(function(){
	$ ('.noResult').hide(); //클릭 시 첫 번째 요소 숨김
	$ ('.rsvDoctorInfo').show(); //클릭 시 두 번째 요소 표시
	return false;
	});
	});
	
   $(document).ready(function(){
	  $(".feForm").click(function(){
		  $("#medicalDept").val($(".select1").text());
	  $(".select1").text("알레르기내과");
	  $("#medicalDept").val($(".select1").text());
	  });
	  
	});
   
   $(document).ready(function(){
	  $("#doctorbutton1").click(function(){
	  $(".select2").text("조상현");
	  $("#doctor").val($(".select2").text()); 
	  });
	});

   $(document).ready(function(){
	  $("#doctorbutton2").click(function(){
	  $(".select2").text("강혜련");
	  $("#doctor").val($(".select2").text()); 
	  });
	});

   $(document).ready(function(){
	  $("#doctorbutton3").click(function(){
	  $(".select2").text("박흥우");
	  $("#doctor").val($(".select2").text()); 
	  });
	});
   
   $(document).ready(function(){
	  $("#doctorbutton4").click(function(){
	  $(".select2").text("이서영");
	  $("#doctor").val($(".select2").text()); 
	  });
	});
   
   $(document).ready(function(){
	  $("#doctorbutton5").click(function(){
	  $(".select2").text("서장호");
	  $("#doctor").val($(".select2").text()); 
	  });
	  
	});
   
   $("#name").val($("#named").text());
   
   function send(){	   
	   reservationForm.submit();
   }
</script>
</html>