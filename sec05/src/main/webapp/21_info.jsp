<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 한글처리</title>
</head>
<body>
<h3>POST방식에서 한글 깨짐 방지</h3>

<form method="POST" action="22_jstlFmt.jsp">
	이름 : <input type="text" name="name">
	<input type="submit" value="전송">
</form>

</body>
</html>