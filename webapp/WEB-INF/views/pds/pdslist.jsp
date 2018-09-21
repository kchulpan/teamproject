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
	<h2>자료실 List</h2>
	<!-- 메뉴영역 -->
	<%@include file="/WEB-INF/include/menus.jspf" %>
	
	<!-- 자료실영역 -->
	<table border="1" cellpadding="0" cellspacing="0" align="center" width="800">
		<tr>
			<td width="50"  align="center">글번호</td> 
			<td width="350" align="center">제 목</td> 
			<td width="100" align="center">작성자</td> 
			<td width="100" align="center">조회수</td> 
			<td width="100" align="center">파일첨부</td> 
			<td width="100" align="center">작성일</td> 
		</tr>
		<c:forEach var="pds" items="${pdsList}">
			<tr>
				<td width="50" height="30" align="center">
					<c:choose>
						<c:when test="${pds.lvl eq 0 }">
							${pds.bnum}
						</c:when>
						<c:otherwise>
						
						</c:otherwise>
					</c:choose>
				</td>
				<td width="350" height="30" align="left"  style="padding-left:${pds.lvl*30}px">
				<%--  새글 부분  --%>
				<c:choose>
					<c:when test="${pds.lvl eq 0}">
						<c:choose>
							<c:when test="${pds.delnum eq 0}">
								<a href="/PDS/Cont?idx=${pds.idx}&menu_id=${pds.menu_id}&nowpage=${pagePdsVo.nowpage}&pagegrpnum=${pagePdsVo.pagegrpnum}">${pds.title}</a>
							</c:when>
							<c:otherwise>
								<s>삭제된 글입니다</s>
							</c:otherwise>
						</c:choose>
					</c:when>
					<%--  답글 부분  --%>
					<c:otherwise>  
          				<c:choose>
              				<c:when test="${pds.delnum eq 0}">
            					<a href="/PDS/Cont?idx=${pds.idx}&menu_id=${menu_id}&nowpage=${pagePdsVo.nowpage}&pagegrpnum=${pagePdsVo.pagegrpnum}"> [답변]${pds.title}</a>        
              				</c:when>
             				<c:otherwise>
                				[답변] <s>삭제된 글입니다</s>
              				</c:otherwise>
           				</c:choose>           
         			</c:otherwise>  
				</c:choose>
				</td>
				<td width="100" height="30" align="center">
					${pds.writer}
				</td>
				<td width="100" height="30" align="center">
					${pds.readcount}
				</td>
				<td width="100" height="30" align="center">
					<c:choose>
						<c:when test="${pds.filescount eq 0}">
							
						</c:when>
						<c:otherwise>
							${pds.filescount}개
						</c:otherwise>
					</c:choose>
				</td>
				<td width="100" height="30" align="center">
					${pds.regdate}
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td width="800" colspan="6" height="30" align="center">
				<!-- 페이징영역 -->
				<%@include file="/WEB-INF/include/paging.jspf" %>
			</td>
		</tr> 
		<tr>
			<td width="800" colspan="6" height="30" align="center">
				<a href="/PDS/WriteForm?menu_id=${menu_id}&bnum=0&lvl=0&step=0&nref=0&nowpage=${nowpage}&pagegrpnum=${pagegrpnum}">새글쓰기</a>
			</td>
		</tr> 
	</table>
</body>
</html>