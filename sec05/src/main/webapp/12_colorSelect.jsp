<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%
String[] movieList ={"올빼미", "아바타2", "범죄도시", "샌과치히로의행방불명"}; 
pageContext.setAttribute("movieList", movieList);
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>color select</title>
</head>
<body>
<c:if test="${param.color == 1}">
	<h1 style="color:red;">빨강</h1>
</c:if>
<c:if test="${param.color == 2}">
	<h1  style="color:purple;">보라</h1>
</c:if>
<c:if test="${param.color == 3}">
	<span style="color:green;">초록</span>
</c:if>

<c:choose>
	<c:when test = "${param.fruit == 1}">
		<h2 style="color:red;">딸기</h2>
	</c:when>
	<c:when test = "${param.fruit == 2}">
		<h2 style="color:lightgreen;">메론</h2>
	</c:when>
	<c:when test = "${param.fruit == 3}">
		<h2 style="color:yellow;">망고</h2>
	</c:when>
</c:choose>

<c:forEach var="movie" items="${movieList}" varStatus="status">
<%-- 	${status.index}<br> 인덱스는 0번부터 카운팅 --%>
<%-- 	${status.count}<br> 카운트는 1번부터 카운팅 --%>
<%-- 	${movie }<br> --%>
	${status.count }
	${movie }
</c:forEach>

</body>
</html>