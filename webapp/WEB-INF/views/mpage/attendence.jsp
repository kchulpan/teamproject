<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/attendence.css"/>
</head>
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
				<td><div class="reg3">소속부서</div></td>
				<td><input type="text" class="reg3"></td>
				</tr>
		</table>
	</div>
	<div class="chart2">
		<h2>출결관리</h2>
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
					<input type="text" placeholder="이름/학번"/>
				</td>   
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
					<td ><div class="no1">연번</div></td>
					<td ><div class="reg3">학번</div></td>
					<td ><div class="reg3">이름</div></td>
					<td ><div class="reg3">대학</div></td>
					<td ><div class="reg3">학과</div></td>
					<td ><div class="reg3">과목</div></td>
					<td ><div class="reg3">학년</div></td>
					<td ><div class="reg3">수업일수</div></td>
					<td ><div class="reg3">출석일수</div></td>
					<td ><div class="reg3">결석일수</div></td>
					<td ><div class="reg3">출석률일(%)</div></td>
					<td ><div class="reg3">출석률분(%)</div></td>
					<td ><div class="reg3"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3">1</div></td>
					<td ><div class="reg3">18300000</div></td>
					<td ><div class="reg3">신학생</div></td>
					<td ><div class="reg3">공과대학</div></td>
					<td ><div class="reg3">융합디스플레이</div></td>
					<td ><div class="reg3">공학계산</div></td>
					<td ><div class="reg3">4</div></td>
					<td ><div class="reg3">150</div></td>
					<td ><div class="reg3">129</div></td>
					<td ><div class="reg3">1</div></td>
					<td ><div class="reg3">86</div></td>
					<td ><div class="reg3">85.8</div></td>
					<td><input type="button" value="월별조회"></td>
				</tr>
				<tr>
					<td ><div class="reg3">2</div></td>
					<td ><div class="reg3">18300001</div></td>
					<td ><div class="reg3">박공부</div></td>
					<td ><div class="reg3">상경대학</div></td>
					<td ><div class="reg3">회계학과</div></td>
					<td ><div class="reg3">회계원리</div></td>
					<td ><div class="reg3">2</div></td>
					<td ><div class="reg3">150</div></td>
					<td ><div class="reg3">117</div></td>
					<td ><div class="reg3">13</div></td>
					<td ><div class="reg3">78</div></td>
					<td ><div class="reg3">81.2</div></td>
					<td><input type="button" value="월별조회"></td>
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
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td><input type="button" value="월별조회"></td>
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
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td><input type="button" value="월별조회"></td>
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
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
				<td><input type="button" value="월별조회"></td>
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
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td><input type="button" value="월별조회"></td>
				</tr>
			</div>	
		</table>
	</div>
	<div class="chart2">
		<h2>월별조회</h2>
		<table class="long">
			<div>
				<tr>
				 	<td colspan="6"><div class="reg1" >2018년 10월</div></td>
				</tr>
				<tr>
					<td ><div class="reg3">날짜</div></td>
					<td ><div class="reg3">출석여부</div></td>
					<td ><div class="reg3">입실시간</div></td>
					<td ><div class="reg3">퇴실시간</div></td>
					<td ><div class="reg3">비고</div></td>
					<td ><div class="no1"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3">1</div></td>
					<td ><div class="reg3">○</div></td>
					<td ><div class="reg3">16:00</div></td>
					<td ><div class="reg3">18:30</div></td>
					<td ><div class="reg3"></div></td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td ><div class="reg3">2</div></td>
					<td ><div class="reg3">X</div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3">행사참여</div></td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
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
				<td><input type="button" value="수정"></td>
				</tr>
				<tr>
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
</body>
</html>