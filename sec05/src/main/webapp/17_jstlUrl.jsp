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

<%-- 방법 1 --%>
<c:import url="http://localhost:8080/sec01/index.jsp" />

<%-- 방법 2 --%>
<c:import url="http://localhost:8080/sec05/04_el.jsp" var="data"/>
${data }

</body>
</html>