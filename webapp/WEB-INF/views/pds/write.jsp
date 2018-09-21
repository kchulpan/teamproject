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
	<h2 style="text-align:center">새글쓰기</h2>
	<!-- 메뉴영역 -->
	<%@include file="/WEB-INF/include/menus.jspf" %>
	<br/>
	<br/>
	
	<!-- 자료입력 -->
	<form action="/PDS/Write?menu_id=${map.menu_id}" method="POST" enctype="multipart/form-data">
	<table border="1" width="500" cellpadding="0" cellspacing="0" align="center">
		<tr>
			<td width="100" align="center">
				작성자
			</td>
			<td width="400">
				<input type="text" name="writer" size="15" value="${map.user_id}"/>
				<!-- value="${map.userid}" 로그인한 사용자 아이디 처리 -->		
			</td>
		</tr>
		<tr>
			<td width="100" align="center">
				글제목
			</td>
			<td width="400">
				<input type="text" name="title" size="15" value=""/>
			</td>
		</tr>
		<tr>
			<td width="100" align="center">
				글내용
			</td>
			<td width="400">
				<textarea name="cont" style="width:400px; height:150px" size="15" value=""></textarea>
			</td>
		</tr>
		<tr>
			<td width="100" align="center">
				파일
			</td>
			<td width="400">
				<input type="file" name="upFile" id="orgFile" size="50" class="upload-hidden"></textarea>
				<input type="file" name="upFile2" id="orgFile2" size="50" class="upload-hidden"></textarea>
				<input type="file" name="upFile3" id="orgFile3" size="50" class="upload-hidden"></textarea>
				<input type="file" name="upFile4" id="orgFile4" size="50" class="upload-hidden"></textarea>
			</td>
		</tr>
		<tr>
			<td width="500" align="center" colspan="2">
				<input type="submit" value="확인"/>
			</td>
		</tr>
		<tr>
			<td width="500" align="right" colspan="2">
				<a href="/PDS/List?menu_id=<c:out value='${map.menu_id}'/>&nowpage=1&pagecount=5&pagegrpnum=1">목록</a>
			</td>
		</tr>
	</table>
	<input type="hidden" name="menu_id"	value="<c:out value='${map.menu_id}'/>"/>
	<input type="hidden" name="bnum"	value="<c:out value='${map.bnum}'/>"/>
	<input type="hidden" name="lvl"	value="<c:out value='${map.lvl}'/>"/>
	<input type="hidden" name="step"	value="<c:out value='${map.step}'/>"/>
	<input type="hidden" name="nref"	value="<c:out value='${map.nref}'/>"/>
	
	<input type="hidden" name="nowpage"	value="<c:out value='${map.nowpage}'/>"/>
	<input type="hidden" name="pagegrpnum"	value="<c:out value='${map.pagegrpnum}'/>"/>
	</form>
</body>
</html>