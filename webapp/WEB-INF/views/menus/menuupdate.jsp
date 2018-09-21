<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴 수정</title>
</head>
<body>
	<form method="POST" action="/Menus/Update">
		
		<table border="1" cellpadding="0" cellspacing="0"
			width="500" align="center">
		<caption><h2>메뉴수정</h2></caption>
			<tr>
				<td width="100" height="30" align="center">메뉴아이디</td>
				<td width="150" height="30" align="center">
					<input type="text" name="menu_id" size="15" value="${menu_id}" readonly/>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">내용</td>
				<td width="400" colspan="3">
					<input type="text" name="menu_name" size="15" value="${menu_name}"/>
				</td>
			</tr>
			<tr>
				<td width="100" height="30" align="center">메뉴순번</td>
				<td width="150" height="30" align="center">
					<input type="text" name="menu_seq" size="15" value="${menu_seq}"/>
				</td>
			</tr>
			<tr>
				<td width="500" height="30">
					<input type="submit" value="확인"/>
					<a href ="/Menus/List">목록</a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>