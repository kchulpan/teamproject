<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">자료실 내용보기</h2>
	
	<!-- 메뉴목록 -->
	<%@include file="/WEB-INF/include/menus.jspf" %>
	
	<table border="1" width="500" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td width="100" height="30" align="center">작성자</td>
		<td width="150" height="30" align="center">${pdsCont.writer}</td>
		<td width="100" height="30" align="center">작성일</td>
		<td width="150" height="30" align="center">${pdsCont.regdate}</td>
	</tr>
	<tr>
		<td width="100" height="30" align="center">글제목</td>
		<td colspan="3" width="400" height="30" align="center">${pdsCont.title}</td>
	</tr>
	<tr>
		<td width="100" height="30" align="center">내 용</td>
		<td colspan="3" width="400" height="300" align="center">${pdsCont.cont}</td>
	</tr>
	<tr>
		<td width="100" height="30" align="center">파 일</td>
		
		<td colspan="3" width="400" height="30" align="center">
			<c:forEach var="file" items="${fileList}">
				<div><a href="<c:out value='/download/external/${file.sfilename}'/>">${file.filename};</a></div>
			</c:forEach>
		</td>
	</tr>
	<tr>
		<td width="500" colspan="4" height="30" align="center">
			<a href="/PDS/List?menu_id=${pdsCont.menu_id}&nowpage=${nowpage}&pagegrpnum=${pagegrpnum}">목록</a>&nbsp;&nbsp;
			<a href="/PDS/WriteForm?menu_id=${pdsCont.menu_id}&bnum=0&lvl=0&step=0&nref=0&nowpage=${nowpage}&pagegrpnum=${pagegrpnum}">새글쓰기</a>&nbsp;&nbsp;
			<a href="/PDS/WriteForm?menu_id=${pdsCont.menu_id}&bnum=${pdsCont.bnum}&lvl=${pdsCont.lvl}&step=${pdsCont.step}&nref=${pdsCont.nref}&nowpage=${nowpage}&pagegrpnum=${pagegrpnum}">답글쓰기</a>&nbsp;&nbsp;
			<a href="/PDS/UpdateForm?menu_id=${pdsCont.menu_id}&idx=${pdsCont.idx}&nowpage=${nowpage}&pagegrpnum=${pagegrpnum}">수정</a>&nbsp;&nbsp;
			<a href="/PDS/Delete?menu_id=${pdsCont.menu_id}&idx=${pdsCont.idx}&nowpage=${nowpage}&pagegrpnum=${pagegrpnum}">삭제</a>
		</td>
	</tr>
	</table>
</body>
</html>