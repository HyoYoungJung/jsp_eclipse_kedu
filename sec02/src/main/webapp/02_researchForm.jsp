<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사</title>
</head>
<body>
	<form action="02_research.jsp">
	<h2>설문 조사</h2>
	<lable for="name">이름 : </lable>
	<input type="text" name="name">
	<br>
	<lable for="gender">성별 : </lable>
	<input type="radio" name="gender" value="여자" checked>여자
	<input type="radio" name="gender" value="남자">남자
	<br>
	<lable for="season">좋아하는 계절 : </lable>
	<input type="checkbox" name="season" value="1">봄
	<input type="checkbox" name="season" value="2">여름
	<input type="checkbox" name="season" value="3">가을
	<input type="checkbox" name="season" value="4">겨울
	<br><br>
	<input type="submit" value="전송">
	<input type="reset" value="취소">
	</form>
</body>
</html>