<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름 출력</title>
</head>
<body>
<!-- 방법1 -->
<%-- <% request.setCharacterEncoding("UTF-8"); %> --%>
<%-- 이름 : <%= request.getParameter("name") %> --%>

<!-- 방법2 -->
<fmt:requestEncoding value="UTF-8" />
이름 : <c:out value="${param.name }" />

</body>
</html>