<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<form action="10_testLogin.jsp" method="post">
	<lable for = "userid"> 아이디 : </lable>
	<input type = "text" name="id" id="userid"><br>
	<lable for = "pwd"> 비밀번호 : </lable>
	<input type = "password" name="pwd" id="pwd"><br>
	<input type = "submit" value="로그인">
</form>
</body>
</html>