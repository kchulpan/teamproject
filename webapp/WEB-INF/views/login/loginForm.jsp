<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="/LoginProcess" method="POST">
		<div>
			<label for="userid">아이디</label>
			<input type="text" name="userid" id="userid" placeholder="아이디"/>
		</div>
		<div>
			<label for="userpass">암호</label>
			<input type="text" name="userpass" id="userpass" placeholder="암호"/>
		</div>
		<div>
			<input type="submit" value="로그인"/>
		</div>
	</form>
	
	
	
	
	
</body>
</html>