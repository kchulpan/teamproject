<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/js/WriteForm.js"></script>
</head>
<body>
	<form id="frmWrite" method="POST" action="/Board/Write">
 		<input type="hidden" name="menu_id" value="${vo.menu_id}"/>
		<input type="hidden" name="bnum"    value="${vo.bnum}"/>
		<input type="hidden" name="lvl"     value="${vo.lvl}"/>
		<input type="hidden" name="step"    value="${vo.step}"/>
		<input type="hidden" name="nref"    value="${vo.nref}"/>
		<table border="1" cellpadding="0" cellspacing="0"
			width="500" align="center">
		<caption><h2>글쓰기</h2></caption>
			<tr>
				<td width="100" height="30" align="center">메뉴아이디</td>
				<td width="150" height="30">
					<input type="text" value="${vo.menu_id}" size="15" readonly/>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">작성자</td>
				<td width="150" height="30">
					<input id="writer" type="text" name="writer" size="15"/>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">제목</td>
				<td width="400" height="30">
					<input id="title" type="text" name="title" size="50"/>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">내용</td>
				<td width="400">
					<textarea id="cont" name="cont" style="width:400px; height:150px"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" width="500" height="30">
					<input id="btn1" type="submit" value="확인"/>
					<input id="btn2" type="image" src=""/><!-- image도 submit됨 -->
					<button id="btn3">확인</button>
					<input id="btn4" type="button" value="확인"/>
					<a id="btn5" href="/Board/Write">목록</a>
					<a href ="/Board/List?menu_id=${vo.menu_id}">목록</a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>