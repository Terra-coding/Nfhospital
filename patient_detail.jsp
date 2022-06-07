<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>환자 상세 정보</title>
<link rel="stylesheet" href="asset/css/patient_detail.css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
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
								<a href="employee01.jsp">
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
					<table class="table1">
					<c:forEach var="patient" items="${patientList}">
					
						<tr>
							<th>치료센터</th>
							<td>0000치료센터</td>
							<th>입원일시</th>
							<td><c:out value="${patient.getHospitalDate()}" /></td>
						</tr>
						<tr>
							<th>병동번호</th>
							<td><c:out value="${patient.getHospitalRoom()}" /></td>
							<th>이름</th>
							<td><c:out value="${patient.getName()}" /></td>
						</tr>
						<tr>
							<th>성별</th>
							<td><c:out value="${patient.getGender()}" /></td>
							<th>생년월일</th>
							<td></td>
						</tr>
						<tr>
							<th>연락처</th>
							<td><c:out value="${patient.getPhoneNum()}" /></td>
							<th>보호자 연락처</th>
							<td><c:out value="${patient.getAddPhoneNum()}" /></td>
						</tr>
						</c:forEach>
					</table>
					<table class="table2">
						<c:forEach var="patient" items="${patientList}">
						<tr>
							<th>최근 약복용<br>(최근 24시간 이내)
							</th>
							<td colspan="3"><c:out value="${patient.getMedication()}" /></td>
						</tr>
						<tr>
							<th rowspan="2">기저질환 여부</th>
							<td colspan="3"><c:out value="${patient.getDisease()}" /></td>
						</tr>
						<tr>
						</tr>
						<tr>
							<th>현재 증상</th>
							<td colspan="3"><c:out value="${patient.getSymptom()}" /></td>
						</tr>
						<tr>
							<th>체온</th>
							<td><c:out value="${patient.getTemperature()}" /></td>
							<th>혈압</th>
							<td><c:out value="${patient.getBloodPressure()}" /></td>
						</tr>
						</c:forEach>
					


					</table>
					<button type="button" onclick="location.href='PatientUpdate.do'">수정</button>
					<button type="button" onclick="location.href='PatientDetailDelete.do'">삭제</button>
					<button type="button" onclick="location.href='PatientOk.do'">확인</button>


				</div>
			</div>
		</section>
	</div>

<script src="/asset/js/patient.js"></script>
<script>
	//let patientNum="${PatientNum}"
	
</script>

</body>
</html>