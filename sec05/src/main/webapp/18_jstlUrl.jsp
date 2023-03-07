<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL URL, import</title>
</head>
<body>

<!-- 그냥 value값을 출력하면 파일 경로(?)가 나오고 -->
<c:url value="pizza.jpg" var="data"/>
<h3> ${data }</h3>

<!-- 이미지태그에 넣어줘야만 이미지 자체로 나온다 -->
<img src="${data }" width="150" height="150">

</body>
</html>