<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h2>회원의 정보 입력 폼</h2>
	<form method="POST" action="01_addMember.jsp">
		이름 &nbsp&nbsp&nbsp&nbsp&nbsp 
		<input type="text" name="name">
		<br>
		아이디 &nbsp&nbsp 
		<input type="text" name="userid">
		<br>
		비밀번호  
		<input type="password" name="pwd">
		<br>
		이메일 &nbsp&nbsp 
		<input type="text" name="email">
		<br>
		전화번호  
		<input type="text" name="phone">
		<br>
		등급 <input type="radio" id="admin" name="admin" value="1">관리자
			<input type="radio" id="admin" name="admin"value="0" checked>일반회원<br>
			
		<input type="submit" value="전송">
		<input type="reset" value="취소">
	</form>
</body>
</html>