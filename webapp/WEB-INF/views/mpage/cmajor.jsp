<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/cmajor.css"/>
</head>
<body>
<div>
   	<table>
		<h2>전과/복수전공신청</h2>

	</table>
</div>
<div>
	<table>
			<h3>◈ 부,복수전공신청</h3>
			<input type="button" value="신청"/>
			&nbsp;&nbsp;&nbsp;
			<tr>
				<td><div class="div1">소속진행상황</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">신청진행상황</div></td>
				<td><input type="text" /></td>
				<td><div class="div1" >전공확정구분</div></td>
				<td colspan="3"><input type="text"  /></td>
				
			</tr>
			<tr>
				<td><div class="div1">신청학년도</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">신청학기</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">신청일자</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">전공구분</div></td>
				<td>
					<select> 
						<option value="선택">선택</option>
						<option value="복수전공">복수전공</option>
						<option value="부전공">부전공</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><div class="div1">과정</div></td>
				<td colspan="3"><select class="select" >
						<option value="선택">선택</option>
						<option value="학사">학사</option>
						<option value="석사">석사</option>
						<option value="박사">박사</option>
				</select></td>
				<td><div class="div1">대학(원)</div></td>
				<td colspan="3"><select class="select">
						<option value="선택">선택</option>
						<option value="상경대학">상경대학</option>
						<option value="사회대학">사회대학</option>
						<option value="인문대학">인문대학</option>
				</select></td>
			</tr>
			<tr>
				<td><div class="div1">학과(부)</div></td>
				<td colspan="3"><select class="select" >
						<option value="선택">선택</option>
						<option value="경영학과">경영학과</option>
						<option value="회계학과">회계학과</option>
						<option value="무역학과">무역학과</option>
				</select></td>
				<td><div class="div1">전공</div></td>
				<td colspan="3"><select class="select">
						<option value="선택">선택</option>
						<option value="경영학전공">경영학전공</option>
						<option value="회계학전공">회계학전공</option>
						<option value="무역학전공">무역학전공</option>
				</select></td>
		</table>
	</div>
		&nbsp;&nbsp;&nbsp;
	<div>
		<table>
 			<tr>
				<td><div class="div1">핸드폰번호</div></td>
				<td><input type="text" class="select" /></td>
			</tr> 
		</table>
	</div>
	<div>	
		<table>
			<h3>◈ 전과신청</h3>
			<input type="button" value="신청"/>
			<h4>전과신청</h4>
			<tr>
				<td><div class="div1">전과학년도</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">전과학기</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">신청전공</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">신청일자</div></td>
				<td><input type="text" /></td>
			</tr>
	</table>
</div>
<div>
	<table class="long">
		<h4>전과신청이력</h4>
		<tr>
		<td ><div>번호</div></td>
		<td ><div>학년도</div></td>
		<td ><div>학기</div></td>
		<td ><div>신청전공</div></td>
		<td ><div>신청일자</div></td>
		<td ><div>처리상태</div></td>
		</tr>
	</table>
</div>		
</body>
</html>