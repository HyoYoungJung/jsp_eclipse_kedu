<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 예제(if)</title>
</head>
<body>
<form action="12_colorSelect.jsp">
	<lable for="color">색상을 선택하세요.</lable><br>
	<select id="color" name="color">
		<option value="1">빨강</option>
		<option value="2">보라</option>
		<option value="3">초록</option>
	</select>
	<br>
	
	<lable for="fruit">과일을 선택하세요.</lable><br>
	<select id="fruit" name="fruit">
		<option value="1">딸기</option>
		<option value="2">메론</option>
		<option value="3">망고</option>
	</select>
	<input type="submit" value="전송">
	<br>
	
	
	
</form>
</body>
</html>