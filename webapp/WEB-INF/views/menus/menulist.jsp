<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴리스트</title>
</head>
<body>
	<table border="1" cellpadding="0" cellspacing="0"
		align="center" width="500">
		<caption><h2>메뉴목록</h2></caption>
		<tr>
			<td colspan="5" align="right">
				<a href="/Menus/WriteForm">메뉴만들기</a>
			</td>
		</tr>
		<tr>
			<td width="100" height="30" align="center">메뉴아이디</td>
			<td width="200" height="30" align="center">메뉴이름</td>
			<td width="100" height="30" align="center">메뉴순번</td>
			<td width="50"  height="30" align="center"></td>
			<td width="50"  height="30" align="center"></td>
		</tr>
		<c:forEach var="menu" items="${menuList}">
			<tr>
				<td width="100" height="30" align="center">${menu.menu_id}</td>
				<td width="200" height="30" align="center">${menu.menu_name}</td>
				<td width="100" height="30" align="center">${menu.menu_seq}</td>
				<td width="50"  height="30" align="center">
					<a href="/Menus/UpdateForm?menu_id=${menu.menu_id}&menu_name=${menu.menu_name}&menu_seq=${menu.menu_seq}">수정</a>
				</td>
				<td width="50"  height="30" align="center">
					<a href="/Menus/Delete?menu_id=${menu.menu_id}">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>	
</body>
</html>