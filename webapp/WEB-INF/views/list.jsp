<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
</head>
<body>
	<table border="1" cellpadding="0" cellspacing="0" width="700" align="center">
		<tr>
			<c:forEach var="menu" items="${menuList}">
				<td width="100" height="30" align="center">
					<a href="/Board/List?menu_id=${menu.menu_id}">
						${menu.menu_name}
					</a>
				</td>
			</c:forEach>
		</tr>
	</table>

	<table border="1" cellpadding="0" cellspacing="0"
		align="center" width="600">
	<caption><h2>${menu.menu_name}&nbsp;&nbsp;게시판</h2></caption>
		<tr>
			<td width="50"  align="center">번호</td>
			<td width="250" align="center">글제목</td>
			<td width="100" align="center">글쓴이</td>
			<td width="100" align="center">작성일</td>
			<td width="100" align="center">조회수</td>
		</tr>
		<tr>
			<td colspan="5" align="right">
			<a href="/Board/WriteForm?bnum=0&lvl=0&step=0&nref=0&menu_id=${menu_id}">새글 쓰기</a>
			<input type="hidden" name="bnum" value="${brd.bnum}"/>
			<input type="hidden" name="lvl"  value="${brd.lvl}"/>
			<input type="hidden" name="step" value="${brd.step}"/>
			<input type="hidden" name="nref" value="${brd.nref}"/>
			</td>
		</tr>
		<c:forEach var="brd" items="${boardList}">
		<tr>
			<td width="50" align="center">
				<c:choose>
					<c:when test="${brd.lvl eq 0}"> 
					${brd.bnum}
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
			</td>
			<td width="250" style="padding-left:${brd.lvl*30}px">
			<c:choose>
				<c:when test="${brd.lvl eq 0}">
				<c:choose>
					<c:when test="${brd.delnum eq 0}">
						<a href="/Board/Content?idx=${brd.idx}">${brd.title}</a>
					</c:when>
					<c:otherwise>
						<s>삭제된글입니다</s>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${brd.delnum eq 0}">
							<a href="/Board/Content?idx=${brd.idx}">[답변]${brd.title}</a>
						</c:when>
						<c:otherwise>
							[답변]<s>삭제된글입니다</s>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
			</td>
			<td width="100" align="center">${brd.writer}</td>
			<td width="100" align="center">${brd.regdate}</td>
			<td width="100" align="center">${brd.readcount}</td>		
		</tr>
		</c:forEach>
	</table>
</body>
</html>