<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Radio Button 처리</title>
</head>
<body>
	<form method="get" action="RadioServlet">
		<lable for="gender">성별 : </lable>
		<input type="radio" id="gender" name="gender" value="남자" checked> 남자
		<input type="radio" id="gender" name="gender" value="여자"> 여자 <br><br>
		
		<lable for="chk_mail">메일 수신 여부 : </lable>
		<input type="radio" id="chk_mail" name="chk_mail" value="yes" checked> 수신
		<input type="radio" id="chk_mail" name="chk_mail" value="no"> 거부 <br><br>
		
		<lable for="content"> 간단한 가입인사를 적어주세요.</lable>
		<textarea id="content" name="content" rows="3" cols="45"></textarea> <br><br>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>