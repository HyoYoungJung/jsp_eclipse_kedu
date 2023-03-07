<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 이 페이지는 에러페이지입니다. --%> <%-- 화면에 표시 안하는 주석 --%>
<!-- error.jsp에 표시해야 함 --> <%-- 화면에 표시되는 html 주석 --%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러PAGE</title>
</head>
<body>
다음과 같이 에러가 발생했습니다.
<%= exception.getMessage() %>
	
</body>
</html>