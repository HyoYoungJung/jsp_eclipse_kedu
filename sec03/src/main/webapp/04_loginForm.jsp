<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="04_testLogin.jsp">
		<lable for="userid">아이디 : </lable>
		<input type="text" name="id" id="userid"><br>
		<label for="passwd">비밀번호 : </label>
		<input type="password" name="pwd" id="passwd"><br>
		
		<input type="submit" value="로그인">
	</form>
	
</body>
</html>