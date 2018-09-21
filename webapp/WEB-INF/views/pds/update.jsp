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
	<h2 align="center">자료실 수정하기</h2>
	
	<!-- 메뉴목록 -->
	<%@include file="/WEB-INF/include/menus.jspf" %>
	
	<form action="/PDS/Update" method="POST">
	<input type="hidden" name="idx" value="${pdsCont.idx}"/>
	<input type="hidden" name="menu_id" value="${pdsCont.menu_id}"/>
	<input type="hidden" name="nowpage"	value="<c:out value='${nowpage}'/>"/>
	<input type="hidden" name="pagegrpnum"	value="<c:out value='${pagegrpnum}'/>"/>
	
	<table border="1" width="500" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td width="100" height="30" align="center">작성자</td>
		<td width="150" height="30" align="center">
			<input type="text" value="${pdsCont.writer}"/>
		</td>
		<td width="100" height="30" align="center">작성일</td>
		<td width="150" height="30" align="center">
			<input type="text" value="${pdsCont.regdate}"/>
		</td>
	</tr>
	<tr>
       <td width="100" height="30" align="center">
         글번호
       </td>
       <td width="150" height="30" align="center">
         <input type="text" value="${pdsCont.bnum}" />         
       </td>
       <td width="100" height="30" align="center">
         조회수
       </td>
       <td width="150" height="30" align="center">
         <input type="text" value="${pdsCont.readcount}" />        
       </td>
    </tr>
	<tr>
		<td width="100" height="30" align="center">글제목</td>
		<td colspan="3" width="400" height="30" align="center">
			<input type="text" name="title" value="${pdsCont.title}"/>
		</td>
	</tr>
	<tr>
		<td width="100" height="30" align="center">내 용</td>
		<td colspan="3" width="400" height="300" align="center">
			<textarea name="cont" style="height:300px; width:400px;">${pdsCont.cont}</textarea>
		</td>
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
			<input type="submit" value="수정완료"/>&nbsp;&nbsp;
			<a href="/PDS/List?menu_id=${menu_id}&nowpage=1&pagecount=5&pagegrpnum=1">목록</a>
		</td>
	</tr>
	</table>
	</form>
</body>
</html>