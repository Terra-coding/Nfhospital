<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="asset/css/patient_detail.css">
<style>
input {
	width: 400px;
	font-size: 16px;
}
</style>
</head>
<body>
	<div id="wrap">
		<aside>
			<div id="topic_list" class="list">
				<div id="aside_blank">
					<img src="asset/img/hospital_logo.png">
					<div style="padding-right: 48px; background-color: #627f9b;">서울
						병원</div>
				</div>
				<div class="employee_page">관리자</div>
				<nav class="sub_nav">
					<ul id="topic_list_tree" class="tree">
						<li id="list1" class="list">
							<div class="label">
								<a href="http://localhost:9000/Nfhospital/com.patient.cPatientOk.do">
									<div>환자관리</div>
								</a>
							</div>
						</li>
						<li id="list2" class="list">
							<div class="label">
								<a href="clinic_management.jsp">
									<div>진료관리</div>
								</a>
							</div>
						</li>
						<li id="list3" class="list">
							<div class="label">
								<a href="https://www.snuh.org/main.do">
									<div>로그아웃</div>
								</a>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</aside>
		<header style="background-color: #627f9b82;">
			<div id="doc_name">
				<b>장준혁 님(jjh1234)</b>
			</div>
		</header>



		<section>
			<div id="body">
				<div>
					<div class="title">
						<h3>환자정보</h3>
						<div class="home">
							<a href="https://www.snuh.org/main.do">Home</a> / 환자관리 / 환자정보 조회
						</div>
					</div>
				</div>
				<div class="wrap_table">
					<form action="${pageContext.request.contextPath}/PatientaddOk.do" name="patientRegi" method="post"
						id="patientRegi">
						<table class="table1">
							<tr>
								<th>입원 건물</th>
								<td>제1병동</td>
								<th>입원일시</th>
								<td><input type="text" name="hospitalDate"></td>
							</tr>
							<tr>
								<th>병동번호</th>
								<td><input type="text" name="hospitalRoom"></td>
								<th>이름</th>
								<td><input type="text" name="name"></td>
							</tr>
							<tr>
								<th>성별</th>
								<td><input type="text" name="gender"></td>
								<th>생년월일</th>
								<td><input type="text" name="birth"></td>
							</tr>
							<tr>
								<th>연락처</th>
								<td><input type="text" name="phoneNum"></td>
								<th>보호자 연락처</th>
								<td><input type="text" name="addPhoneNum"></td>
							</tr>
						</table>
						<table class="table2">
							<tr>
								<th>최근 약복용<br>(최근 24시간 이내)
								</th>
								<td colspan="3"><input type="text" name="taking"></td>
							</tr>
							<tr>
								<th rowspan="2">기저질환 여부</th>
								<td colspan="3"><input type="text" name="disease"></td>
							</tr>
							<tr>
							</tr>
							<tr>
								<th>현재 증상</th>
								<td colspan="3"><input type="text" name="symptom"></td>
							</tr>
							<tr>
								<th>체온</th>
								<td><input type="text" name="temperature" id="temperature"></td>
								<th>혈압</th>
								<td><input type="text" name="bloodPressure"></td>
							</tr>


						</table>
						<input type="button" value="추가" id="checkbtn" onClick="join()">


					</form>
				</div>
			</div>
		</section>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
function join(){
	patientRegi.submit();
}
</script>
<script src="${pageContext.request.contextPath}/assets/js/patient.js"></script>

</html>