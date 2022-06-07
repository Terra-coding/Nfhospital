<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/thankyouwrite.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/KDHfooter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/aside.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <title>감사합니다 | 서울병원</title>
</head>
<body>
    <div id="wrap">
        <a href="#content" class="skipToContent">본문으로 바로가기</a>
        <header id="header">
            <div class="innerwrap">
                <h1><a href="mainpage.jsp">서울 병원</a></h1>
                <div class="topLeftWrap">
                    <a href="mainpage.jsp">
	                	<img src="${pageContext.request.contextPath}/asset/img/hospital_logo.png" style="width: 30px; height: 30px;">
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
                            <a>건강정보</a>
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
				<em>감사합니다</em>
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
            <div class="boxTypeGray boxVtical">
                <strong class="boxTit">참고</strong>
                <div class="txtWrap">
                    <p>게시판 주제와 관계없는 글은 관리자에 의해 삭제될 수 있습니다.</p>
                    <p>
                        진료과 및 의료진 선택이나 진료일정 문의는 진료 예약센터로 전화해 주십시오.
                        <br>
                        <strong class="colorPoint">예약센터 : 1588-5700</strong>
                    </p>
                </div>
            </div>
            <form id="joinClientVo" name="writeForm" action="${pageContext.request.contextPath }/write/ThankyouWriteOk.wr" method="post" enctype="multipart/form-data">
                <fieldset>
                    <legend>감사합니다 등록</legend>
                    <div class="persInforWrap">
                        <div class="contTextWrap">
                            <h3>개인정보 수집 이용 목적</h3>
                        </div>
                        <div class="scrollBox">
                            <div class="innerScroll">
                                <div class="terms">
                                    <p>
                                        1. 수집/이용 목적: 병원 이용자의 감사 글 작성<br>
                                        2. 수집하는 항목: 환자이름, 환자등록번호, 작성자 이름, 휴대전화번호, 환자와의 관계, 제목, 작성내용<br>
                                        3. 개인정보의 보유 및 이용기간 : 2년<br>
                                        4. 동의를 거부할 권리가 있으며, 고객상담실(본원/어린이: 02-2072-2002, 암병원: 02-2072-7457)로 전화상담을 이용하실 수 있습니다. (운영시간: 평일 : 오전 9시 ~ 오후 5시)
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="checkWrap">
                            <label class="feForm feFoCheck" for="checkbox04">
                                <input id="checkbox04" type="checkbox" title="개인정보 수집 및 이용안내에 동의합니다. " data-fe-idx="feFoCheckIdx1" style="opacity: 0;">
                            </label>
                            <label for="checkbox04">개인정보 수집 및 이용안내에 동의합니다. </label>
                        </div>
                    </div>
                    <div class="boardTypeForm">
                        <table>
                            <caption>칭찬합시다(환자성함, 환자번호, 작성자 성함, 상담유형, 휴대전화, 이메일주소, 정보수신 동의, 환자와의 관계, 제목, 내용, 첨부파일)</caption>
                            <colgroup>
                                <col style="width: 140px;">
                                <col style="width: 240px;">
                                <col style="width: 140px;">
                                <col style="width: auto;">
                            </colgroup>
                            
	                            <tbody>
									<tr>
	                                    <th scope="row">환자성함</th>
	                                    <td><input id="ptname" name="name" title="환자성함" type="text" class="inputText validate-require" maxlength="16"></td>
	                                    <th scope="row">환자등록정보</th>
	                                    <td><input id="ptcd" name="nameCheck" title="환자등록정보 성함" type="text" class="inputText validate-require" maxlength="8"></td>
	                                </tr>
	        
	        
	                                <tr>
	                                    <th scope="row">작성자 성함</th>
	                                    <td colspan="3">
	                                        <input id="wrtname" name="wrtname" title="작성자 성함" type="text" class="inputText validate-require" maxlength="16">
	                                        <span class="txtWrap">
	                                            <label class="feForm feFoCheck" for="checkbox01"><input id="checkbox01" type="checkbox" title="글 작성자와 환자가 동일" data-fe-idx="feFoCheckIdx2" style="opacity: 0;"></label><label for="checkbox01">글 작성자와 환자가 동일</label>
	                                        </span>
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <th scope="row" class="verTop">휴대폰번호</th>
	                                    <td colspan="3">
	                                        <label class="feForm feFoSelect selectSmall" for="tel1"><span>010</span><select id="tel1" name="tel1" title="휴대전화 첫번째 자리" class="selectTypeM validate-require" data-fe-idx="feFoSelectIdx1" style="opacity: 0;"><option value="010">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option></select></label>
	                                        <span class="txtWrap">-</span>
	                                        <input id="tel2" name="tel2" type="tel" class="inputTextSmall validate-require" title="휴대전화 두번째 자리" maxlength="4"><span class="txtWrap">-</span><input id="tel3" name="tel3" type="tel" class="inputTextSmall validate-require" title="휴대전화 세번째 자리" maxlength="4">
	                                        <p class="desc">
	                                            연락가능한 전화번호를 입력 해 주시기 바랍니다.
	                                        </p>
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <th scope="row">환자와의 관계</th>
	                                    <td colspan="3">
	                                <span class="txtWrap">환자의</span>
	                                        <label class="feForm feFoRadio" for="radio01"><input type="radio" id="radio01" name="ptrelation" value="1" data-fe-idx="feFoRadioIdx1" style="opacity: 0;"></label>
	                                        <label for="radio01" class="lblTxt">본인</label>
	                                        <label class="feForm feFoRadio" for="radio02"><input type="radio" id="radio02" name="ptrelation" value="2" data-fe-idx="feFoRadioIdx2" style="opacity: 0;"></label>
	                                        <label for="radio02" class="lblTxt">배우자</label>
	                                        <label class="feForm feFoRadio" for="radio03"><input type="radio" id="radio03" name="ptrelation" value="3" data-fe-idx="feFoRadioIdx3" style="opacity: 0;"></label>
	                                        <label for="radio03" class="lblTxt">부모</label>
	                                        <label class="feForm feFoRadio" for="radio04"><input type="radio" id="radio04" name="ptrelation" value="4" data-fe-idx="feFoRadioIdx4" style="opacity: 0;"></label>
	                                        <label for="radio04" class="lblTxt">자녀</label>
	                                        <label class="feForm feFoRadio" for="radio05"><input type="radio" id="radio05" name="ptrelation" value="5" data-fe-idx="feFoRadioIdx5" style="opacity: 0;"></label>
	                                        <label for="radio05" class="lblTxt">친척</label>
	                                        <label class="feForm feFoRadio" for="radio06"><input type="radio" id="radio06" name="ptrelation" value="6" data-fe-idx="feFoRadioIdx6" style="opacity: 0;"></label>
	                                        <label for="radio06" class="lblTxt">지인</label><br><br>
	                                        <label class="feForm feFoRadio checked0" for="radio07"><input type="radio" id="radio07" name="ptrelation" value="7" checked="checked" data-fe-idx="feFoRadioIdx7" style="opacity: 0;"></label>
	                                        <label for="radio07" class="lblTxt">기타</label>
	                                        <input id="ptrelationetc" name="ptrelationetc" title="기타" type="text" class="inputTextSmall" value="" maxlength="10">
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <th scope="row">제목</th>
	                                    <td colspan="3">
	                                        <input id="title" name="title" title="제목" style="width:475px;" type="text" class="inputTextLarge validate-require" wrap="hard" value="" maxlength="50">
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <th scope="row" class="verTop">내용</th>
	                                    <td colspan="3">
	                                        <textarea id="txtContent" name="content" title="내용" placeholder="한글 4000자 입력 가능합니다." rows="50" cols="20"></textarea>
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <th scope="row" class="verTop">첨부파일</th>
	                                    <td colspan="3"><div class="feFoFileWrap"><input type="text" title="선택된 파일" class="feFoFileInpTxt" readonly=""><label class="feForm feFoFile fileWrap" for="uploadFile"><input id="uploadFile" name="uploadFile" title="첨부파일" data-fe-label="첨부파일" type="file" accept=".png, .jpg" value="" data-fe-idx="feFoFileIdx1" tabindex="-1" style="opacity: 0;"><button type="button" class="feFoFileBtn">첨부파일</button></label></div><p class="desc">JPG, PNG 파일만 첨부 가능합니다. (5MB 이하) 파일이름은 영문으로 작성해 주시기 바랍니다.</p></td>
	                                </tr>
	                               <!--  <tr>
	                                    <th scope="row" class="verTop"><span class="required">*</span> 자동가입방지</th>
	                                    <td colspan="3">
	                                        <div class="autoJoin">
	                                            <div class="img">
	                                                <img src="http://www.snuh.org/asset/img/member/img_mem3.png" alt="3">
	                                                <img src="http://www.snuh.org/asset/img/member/img_mem4.png" alt="4">
	                                                <img src="http://www.snuh.org/asset/img/member/img_mem2.png" alt="2">
	                                                <img src="http://www.snuh.org/asset/img/member/img_mem4.png" alt="4">
	                                                <img src="http://www.snuh.org/asset/img/member/img_mem1.png" alt="1">
	                                                <img src="http://www.snuh.org/asset/img/member/img_mem6.png" alt="6">
	                                                <img src="http://www.snuh.org/asset/img/member/img_mem2.png" alt="2">
	                                                <img src="http://www.snuh.org/asset/img/member/img_mem2.png" alt="2">
	        
	                                            </div>
	                                            <div class="info">
	                                                <p>
	                                                    자동가입을 방지하기 위해 보안절차를 거치고 있습니다.<br>
	                                                    왼쪽 이미지를 보이는 대로 입력해주세요.
	                                                </p>
	                                                <input type="text" name="prevent" id="prevent" title="자동가입 방지" maxlength="8">
	                                            </div>
	                                        </div>
	                                    </td>
	                                </tr> -->
	                            </tbody>
                        </table>
                    </div>
                    <div class="btnWrap alignC">
                        <button type="button" class="btnType02 btnBig" id="btnPraiseList" onClick="location.href='allThanksView.jsp'">감사합니다 전체보기</button>
                        <input type="button" class="btnType03 btnBig" value="완료" onclick="send()"/>
                    </div>
                </fieldset>
            </form>
        </main>
        <aside id="aside" class="asideWrap" style="position: absolute; top: 180px;">
            <h2>관련 콘텐츠</h2>
            <!-- asideContList -->
            <ul class="asideContList">
        
                
        
                
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
                            <li><a href="//www.snubh.org/" target="_blank">분당서울병원</a></li>
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
                        <li class="item04 hideTxt" name="ismsTxt"><a href="#ismsTxt" class="ismsTxtBtn">서울병원 정보보호 관리체계(ISMS) 인증
                            [유효기간] 2021.02.17 ~ 2024.02.16 
                            [인증범위] 의료정보시스템(EMR,OCS),홈페이지 및 모바일 애플리케이션  운영</a></li>
                    </ul>
                </div>
            </div>
            <div class="ftIsmsTxt">
                <p>서울병원 정보보호 관리체계(ISMS) 인증<br>
                    [유효기간] 2021.02.17 ~ 2024.02.16<br> 
                    [인증범위] 의료정보시스템(EMR,OCS),홈페이지 및 모바일 애플리케이션 운영</p>
            </div>   
        </footer>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>var contextPath = "${pageContext.request.contextPath }";</script>
<script src="${pageContext.request.contextPath }/asset/js/aside.js"></script>
<script src="${pageContext.request.contextPath }/asset/js/thankyouwrite.js"></script>
</html>