<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>환자관리</title>
<link rel="stylesheet" href="asset/css/employee01.css">

</head>
<body>
	<c:set var="search_name" value="${name}" />
	<c:set var="files" value="${files}" />

	<div id="wrap">
		<aside>
			<div class="list">
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
								<a href="http://localhost:8090/midterm_Project/PatientOk.do">
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
								<a href="http://localhost:8090/midterm_Project/mainpage.jsp">
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
					<div>
						<div class="title">
							<h3>환자관리</h3>
							<div class="home">
								<a href="http://localhost:8090/midterm_Project/PatientOk.do">Home</a>
								/ 환자관리
							</div>
						</div>
					</div>
					<div class="body_wrap_table1">
						<div>
							<form method="post" action="PatientOk.do">
								<table class="table1">
									<tr>
										<th class="table1_th">환자상태</th>
										<td><select name="patient_state" id="state">
												<option value="all">전체</option>
												<option value="normal">-</option>
										</select></td>
										<th class="table1_th">환자명</th>
										<td><input type="text" name="name" placeholder="환자명"
											id="name"></td>
									</tr>
									<tr>
										<th class="table1_th">입원일자</th>
										<td><input type="date" value="2022-05-01"
											name="hospitalDate" id="hospitalDate"></td>
										
									</tr>
								</table>
							</form>
							<input id="btn_Search" type="button" class="search" value="검색"
								style="margin-left: 20px; width: 60px" onclick="view()" />
							<button class="search"
								onclick="location.href='Patientadd.do'"
								style="margin-left: 20px; width: 100px">신규 환자 추가</button>
							<%-- <c:choose>
								<c:when test="${name}" >
									<table class="table2">
										<tr>
											<th>환자번호</th>
											<th>환자명</th>
											<th>성별</th>
											<th>나이</th>
											<th>호실</th>
											<th>입원일자</th>
											<th>상태</th>
											<th>관리</th>
										</tr>
										<c:forEach var="patient" items="${d}">
											<tr>
												<td><c:out value="${patient.getPatientNum()}" /></td>

												<td><c:out value="${patient.getName()}" /></td>

												<td><c:out value="${patient.getGender()}" /></td>

												<td><c:out value="${patient.getAge()}" /></td>

												<td><c:out value="${patient.getHospitalRoom()}" /></td>

												<td><c:out value="${patient.getHospitalDate()}" /></td>

												<td><c:out value="${patient.getSymptom()}" /></td>

												<td><button type="button"
														onclick="location.href='PatientDetail.do';">관리</button></td>

											</tr>
										</c:forEach>
									</table>
								</c:when>
								<c:otherwise>
									
								</c:otherwise>
							</c:choose> --%>
						</div>
					</div>
				</div>
				<div class="body_wrap_table2">
					<div></div>
					<div>


						<form action="PatientDetail.do" method="post">
							<table class="table2">
								<tr>
									<th>환자번호</th>
									<th>환자명</th>
									<th>성별</th>
									<th>나이</th>
									<th>호실</th>
									<th>입원일자</th>
									<th>상태</th>
									<th>관리</th>
								</tr>

								<c:forEach var="patient" items="${patientList}">
									<tr>
										<td name="patientNum"><c:out
												value="${patient.getPatientNum()}" /></td>

										<td><c:out value="${patient.getName()}" /></td>

										<td><c:out value="${patient.getGender()}" /></td>

										<td><c:out value="${patient.getAge()}" /></td>

										<td><c:out value="${patient.getHospitalRoom()}" /></td>

										<td><c:out value="${patient.getHospitalDate()}" /></td>

										<td><c:out value="${patient.getSymptom()}" /></td>


										<td><button type="submit"
												onclick="location.href='PatientDetail.do';">관리</button></td>

									</tr>
								</c:forEach>

							</table>
						</form>
					</div>

				</div>
			</div>
		</section>

	</div>


</body>

<script src="jquery-3.4.1.min.js"></script>
<script>
	let patientNum = "${patient.getPatientNum()}";
	let name = "${patient.getName()}";
	let hospitalDate = "${patient.getHospitalDate()}";
</script>
<script src="/asset/js/patient.js"></script>
</html>