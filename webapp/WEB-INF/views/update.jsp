<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${list.menu_id}게시물 수정</title>
</head>
<body>
	<form method="POST" action="/Board/Update">
		<table border="1" cellpadding="0" cellspacing="0"
			width="500" align="center">
		<caption><h2>글수정</h2></caption>
			<tr>
				<td width="100" height="30" align="center">글번호</td>
				<td height="30" align="center" colspan="3">
					<input type="text" name="idx" size="15" value="${list.idx}" readonly/>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">메뉴이름</td>
				<td height="30" align="center" colspan="3">
					<input type="text" name="menu_id" size="15" value="${list.menu_id}" readonly/>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">제목</td>
				<td width="400" height="30" colspan="3">
					<input type="text" name="title" size="50" value="${list.title}"/>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">작성자</td>
				<td width="150" height="30" align="center">
					<input type="text" name="writer" size="15" value="${list.writer}" readonly/>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">내용</td>
				<td width="400" colspan="3">
					<textarea name="cont" style="width:400px; height:150px">${list.cont}</textarea>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">작성일</td>
				<td width="150" height="30" align="center">
					<input type="text" size="15" value="${list.regdate}" readonly/>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">조회수</td>
				<td width="150" height="30" align="center">
					<input type="text" size="15" value="${list.readcount}" readonly/>
				</td>
			</tr>
			<tr>
				<td width="500" height="30">
					<input type="submit" value="확인"/>
					<a href ="mboard?command=LIST&menu_id=${list.menu_id}">목록</a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>