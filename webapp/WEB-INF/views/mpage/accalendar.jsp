<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/accalendar.css"/>
<script type="text/javascript">

</script>
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
	<div>
		<table class="long">
			<tr>
				<td><div class="reg3">학년도</div></td>
				<td><input type="number" min="1980" max="2030" value="2018" class="reg3"></td>
				<td><div class="reg3">학기</div></td>
				<td><select>
					 <option value="전체">전체</option>
					 <option value="1학기">1학기</option>
					 <option value="여름계절학기">여름계절학기</option>
					 <option value="2학기">2학기</option>
					 <option value="겨울계절학기">겨울계절학기</option>
				</select></td>
				<td><div class="reg3">학부/대학원</div></td>
				<td><select>
					 <option value="학부">학부</option>
					 <option value="대학원">대학원</option>
				</select></td>
				<td><div class="reg3">학사업무구분</div></td>
				<td><select>
					 <option value="전체">전체</option>
					 <option value="학사공통">학사공통</option>
					 <option value="학적">학적</option>
					 <option value="수업">수업</option>
					 <option value="수강">수강</option>
				</select></td>
				<td><div class="reg3">일정구분</div></td>
				<td><select>
					 <option value="전체">전체</option>
					 <option value="교육비결과조회">교육비결과조회</option>
					 <option value="강의평가기간">강의평가기간</option>
					 <option value="재수강신청기간">재수강신청기간</option>
					 <option value="학위수여일자">"학위수여일자"</option>
				</select></td>
			</tr>
		</table>
	</div>
	
	<div class="chart2">
		<table class="long">
			<div>
				<tr>
				 	<td colspan="6"><div class="left">● 학사일정목록</div></td>
				 	<td colspan="4"><input type="button" class="reg3" value="조회"/>
				 	<input type="button" class="reg3" value="추가" onclick=""/>
				 	<input type="button" class="reg3" value="삭제" onclick=""/>
				 	<input type="button" class="reg3" value="저장" onclick=""/>
				 	<input type="button" class="reg3" value="닫기" onclick=""/></td>
				</tr>
				<tr>
					<td ><div class="reg3">구분</div></td>
					<td><div class="reg3">학년도</div></td>
					<td ><div class="reg3">학기</div></td>
					<td ><div class="reg1">학부/대학원</div></td>
					<td ><div class="reg1">학사업무구분</div></td>
					<td ><div class="reg1">일정구분</div></td>
					<td ><div class="reg3">시작일자</div></td>
					<td ><div class="reg3">종료일자</div></td>
					<td ><div class="reg3">등록자</div></td>
					<td ><div class="reg3">등록일자</div></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
				</tr>
				<tr>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg3"></div></td>
					<td ><div class="reg1"></div></td>
					<td ><div class="reg1"></div></td>
				</tr>
			</div>
		</table>
	</div>

</body>
</html>