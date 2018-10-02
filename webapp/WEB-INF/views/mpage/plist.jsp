<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/plist.css"/>
 

</head>
<body>
	<div style="margin-top:30px;">
		<h2>개인신상조회</h2>
		<div style="display:flex;">
		<table style="align-self:flex-end">
			<tr>
				<td><div class="Unum">교번</div></td>
				<td><input type="text" class="Unum_input" /></td>
			</tr>
		</table>
				 <img  class="img" src="img/noname01.png"/>
		</div>
		<table>
			<h3>◈ 재직사항</h3>
			<tr>
				<td><div class="div1">성명</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">성별</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">재직상태</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">국적</div></td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td><div class="div1">변동일자</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">소속부서</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">주민등록번호</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">임용구분</div></td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td><div class="div1">세부조직</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">학부</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">전공</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">휴/퇴직일자</div></td>
				<td><input type="text" /></td>
			</tr>
		</table>
		<table>
			<h3>◈ 부서사항</h3>
			<tr>
				<td><div class="div1">부서명</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">소속</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">직종</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">직급</div></td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td><div class="div1">계급</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">직군</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">부서번호</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">현직급발령일자</div></td>
				<td><input type="text" /></td>
			</tr>
		</table>
<!-- 		<table>
			<h3>◈ 신청사항</h3>
			<tr>
				<td><div class="div1">구분</div></td>
				<td><div class="div1">신청구분</div></td>
				<td><div class="div1">신청일자</div></td>
				<td><div class="div1">이수여부</div></td>
				
				<td><div class="div1">구분</div></td>
				<td><div class="div1">신청일자</div></td>
				<td><div class="div1">이수여부</div></td>
				
			</tr>
			<tr>
				<td><div class="div1">부전공</div></td>
				<td><input type="text" /></td>
				<td><input type="text" /></td>
				<td><input class="div1" type="checkbox" /></td>
				<td><div class="div1">교직</div></td>
				<td><input type="text" /></td>
				<td><input class="div1" type="checkbox" /></td>
			</tr>
			<tr>
				<td><div class="div1">복수전공</div></td>
				<td><input type="text" /></td>
				<td><input type="text" /></td>
				<td><input class="div1" type="checkbox" /></td>
				<td><div class="div1">평생교육</div></td>
				<td><input type="text" /></td>
				<td><input class="div1" type="checkbox" /></td>
			</tr>
			<tr>
				<td><div class="div1">연계전공</div></td>
				<td><input type="text" /></td>
				<td><input type="text" /></td>
				<td><input class="div1" type="checkbox" /></td>
				<td><div class="div1">조기졸업</div></td>
				<td><input type="text" /></td>
				<td><input class="div1"  type="checkbox" /></td>
			</tr>
		</table> -->
		<table>
			<h3>◈ 기타사항</h3>
			<tr>
				<td><div class="div1">병역</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">ROTC</div></td>
				<td><input class="blank" type="checkbox" /></td>
				<td><div class="div1">출신고교</div></td>
				<td><input type="text" /></td>
				<td><div class="div1"></div></td>
				<td><div class="div1"></div></td>
			</tr>
			<tr>
				<td><div class="div1">수료구분</div></td>
				<td><input class="blank" type="checkbox" /></td>
				<td><div class="div1">수료날짜</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">관할병무청</div></td>
				<td><input type="text" /></td>
				<td><div class="div1"></div></td>
				<td><div class="div1"></div></td>
			</tr>
		</table>
		<table>
		 <h3>◈ 특이사항</h3>
			<tr>
				<td><div class="div1">성별</div></td>
				<td><input  type="radio" name="gender" value="남" checked/>남
				<input  type="radio" name="gender" value="여"/>여</td>
				<td><div class="div1">결혼여부</div></td>
				<td><input  type="radio" name="wedding" value="기혼" checked/>기혼
				<input  type="radio" name="wedding" value="미혼"/>미혼</td>
				<td><div class="div1">외국인여부</div></td>
				<td><input class="blank" type="checkbox" /></td>
				<td><div class="div1">외국인번호</div></td>
				<td><input class="blank" type="text"/></td>

			</tr>
		</table>
		<table>
			<h3>◈ 교원</h3>
			<tr>
				<td><div class="div1">전화번호</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">휴대전화</div></td>
				<td><input  type="text" /></td>
				<td><div class="div1">우편번호</div></td>
				<td><input type="text" /></td>
				<td><div class="div1"></div></td>
				<td><div class="blank"></div></td>
			</tr>
			<tr>
				<td><div class="div1">주소</div></td>
				<td colspan="7"><input class="address" type="text" /></td>
			</tr>
		</table>
		<table>
			<tr>
			   <input type="button" value="확인">
			</tr>
		</table>
	</div>

</body>
</html>