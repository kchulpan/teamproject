<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학적 휴/복학</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<!-- css -->
	<link rel="stylesheet" href="/css/subpage/subpage.css" />
	<link rel="stylesheet" href="/css/mpage/admreglist.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- js -->
	<script src="js/subpage/adm_subpage.js"></script>
<script>



</script>
</head>
<!-------------------------------- body ---------------------------------------->
<body>
<div id="wrapper">
<!-- header -->
  <header>
    <%@ include file="adm_common_layout/adm_header.jspf" %>
  </header>
  
  <div id="main_templet">
  <div id="slide_btn"></div>
<!-- side_menu -->
  <nav class="nav">
  	<%@ include file="adm_common_layout/adm_nav.jspf" %>
  </nav>

<!-- main -->
  <article>
   	<div class="tabs">
    </div>
    	
    <div class="sections">
    	<!-- 상세 페이지~~ -->	
   	수강관리 과목별 조회
    	<body>
	<div class="chart1">
		<table class="long">
				<tr>
				<td><div class="no1">교번</div></td>
				<td><input type="text" class="reg3"></td>
				<td><div class="reg3">이름</div></td>
				<td><input type="text" class="reg3"></td>
				<td><div class="reg3">직급</div></td>
				<td><input type="text" class="reg3"></td>
				<td><div class="reg3">소속학과</div></td>
				<td><input type="text" class="reg3"></td>
				</tr>
		</table>
	</div>
	<div class="chart2">
		<h2>과목별수강조회</h2>
		<table class="long">
			<div>
				<tr>
				<td >
				 	<select>
					 <option value="대학">대학</option>
					 <option value="상경대학">상경대학</option>
					 <option value="사회대학">사회대학</option>
					 <option value="인문대학">인문대학</option>
					 <option value="공과대학">공과대학</option>
				   </select></td>
				<td>
				 	<select>
					 <option value="학과">학과</option>
					 <option value="경영학과">경영학과</option>
					 <option value="사회복지학과">사회복지학과</option>
					 <option value="국문학과">국문학과</option>
					 <option value="기계공학과">기계공학과</option>
				   </select></td>
				<td>
				 	<select>
					 <option value="과목">과목</option>
					 <option value="경영원리">경영원리</option>
					 <option value="재무관리">재무관리</option>
					 <option value="노동관계법">노동관계법</option>
					 <option value="경영학개론">경영학개론</option>
				   </select>
				</td>
				<td><input type="button" value="조회"></td>
				<tr>
					<td ><div class="reg3">교과번호</div></td>
					<td ><div class="reg3">교과목명</div></td>
					<td ><div class="reg3">학년</div></td>
					<td ><div class="reg3">학점</div></td>
					<td ><div class="reg3">구분</div></td>
					<td ><div class="reg3">담당교수</div></td>
					<td ><div class="reg3">강의시간/강의실</div></td>
					<td ><div class="reg3">현재신청인원</div></td>
					<td ><div class="reg3">정원</div></td>
					<td ><div class="reg3"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3">SUB001</div></td>
					<td ><div class="reg3">러시아문법</div></td>
					<td ><div class="reg3">3</div></td>
					<td ><div class="reg3">3</div></td>
					<td ><div class="reg3">전공</div></td>
					<td ><div class="reg3">정연우</div></td>
					<td ><div class="reg3">월요일 3,4(1301)</div></td>
					<td ><div class="reg3">30</div></td>
					<td ><div class="reg3">40</div></td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
				<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
				<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
				    <td><input type="button" value="수정"></td>
				</tr>
			</div>	
		</table>
	</div>
    </div>
      
  </article>
  
  </div>
  
</div>
<script>

</script>
</body>

</html>