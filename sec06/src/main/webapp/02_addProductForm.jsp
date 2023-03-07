<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 관리</title>
</head>
<body>
<h2>정보 입력 폼</h2>
<form method="POST" action="02_addProduct.jsp">
	상품명 
	<input type="text" name="name"><br>
	가격&nbsp&nbsp&nbsp
	<input type="text" name="price"><br>
	설명&nbsp&nbsp&nbsp
	<textarea rows="8" cols="60" name="description">
	</textarea><br>
	<br>
	<input type="submit" value="전송">
	<input type="reset" value="취소">

</form>

</body>
</html>