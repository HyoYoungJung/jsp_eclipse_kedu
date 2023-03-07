<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿼리 스트링</title>
<script type="text/javascript" src=param.js></script>
</head>
<body>
	<form name="frm" method="get" action="ParamServlet">
		아이디 : <input type="text" name="id"><br>
		나이 : <input type="text" name="age"><br>
		<input type="submit" value="전송" onclick="return check()">
	</form>
	
	<form name="frm1" method="post" action="ParamServlet">
		아이디 : <input type="text" name="id"><br>
		나이 : <input type="text" name="age"><br>
		<input type="submit" value="전송" onclick="return check1()">
	</form>
	
</body>
</html>