	`	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>환자 상세 정보</title>
    <link rel="stylesheet" href="asset/css/patient_detail.css">
</head>
<body>
    <div id="wrap">
      <aside>
        <div id="topic_list" class="list">
          <div id="aside_blank">
            <img src="asset/img/hospital_logo.png"><div style="padding-right:48px;background-color: #627f9b;">서울 병원</div>	
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
           <div class="home"><a href="https://www.snuh.org/main.do">Home</a> / 환자관리 / 환자정보 조회</div>
         </div>
        </div>
        <div class="wrap_table">
         <table class="table1">
          <tr>
           <th>치료센터</th>
           <td>0000치료센터</td>
           <th>입원일시</th>
           <td>2022-05-01</td>
          </tr>
          <tr>
           <th>병동번호</th>
           <td>11호실</td>
           <th>이름</th>
           <td>윤요정</td>
          </tr>
          <tr>
           <th>성별</th>
           <td>여</td>
           <th>생년월일</th>
           <td>1947년 6월 19일</td>
          </tr>
          <tr>
           <th>연락처</th>
           <td>010-5555-7777</td>
           <th>보호자 연락처</th>
           <td>010-3334-4499</td>
          </tr>
         </table>
         <table class="table2">
          <tr>
           <th>최근 약복용<br>(최근 24시간 이내)</th>
           <td colspan="3">복용</td>
          </tr>
          <tr>
           <th rowspan="2">기저질환 여부</th>
           <td colspan="3">유</td>
          </tr>
          <tr>
           <td colspan="3">고혈압, 장기이식(신장), 당뇨, 호흡기질환, 수술(수술1)</td>
          </tr>
          <tr>
           <th>현재 증상</th>
           <td colspan="3">기침, 복통, 구토, 두통, 호흡곤란(숨가쁨)</td>
          </tr>
          <tr>
           <th>체온</th>
           <td>37℃</td>
           <th>혈압</th>
           <td>수축기 140mmHg/이완기 89mmHg</td>
          </tr>
         </table>
         <button><a href="clinic_management.jsp">확인</a></button>
        </div>
      </div>
     </section>
    </div>
</body>
</html>