<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 입력 폼</title>
</head>
<body>

<h3>회원 정보 입력 폼</h3>
<form action="MemberServlet" method="POST"> 
<!-- action="MemberServlet2" 는 useBean방법!!   -->
	<lable for = "name"> 이름 : </lable>
	<input type = "text" name="name" id="name"><br>

	<lable for = "userid"> 아이디 : </lable>
	<input type = "text" name="userid" id="userid"><br>
	
	<lable for = "nickname"> 별명 : </lable>
	<input type = "text" name="nickname" id="nickname"><br>

	<lable for = "pwd"> 비밀번호 : </lable>
	<input type = "password" name="pwd" id="pwd"><br>

	<lable for = "email"> 이메일 : </lable>
	<input type = "text" name="email" id="email"><br>

	<lable for = "phone"> 전화번호 : </lable>
	<input type = "text" name="phone" id="phone"><br>

	<input type = "submit" value="로그인">
	<input type = "reset" value="취소">

</form>

</body>
</html>