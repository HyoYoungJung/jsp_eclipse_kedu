<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 예외처리</title>
</head>
<body>

<c:set var="age" value="30" scope="page" />
나이 : <c:out value="${age }">10</c:out><br>
<!-- 태그 사이에 뭘 줘도 set된 값(30)이 출력된다 -->

<c:remove var="age" scope="page" />
나이 : <c:out value="${age }"	>10</c:out><br>
<!-- age value가 삭제돼 없으면 태그 사잇값(10)이 출력된다 -->

<c:catch var="errmsg">
	예외 발생 전<br>
	<%=1/0 %><br> <!--  오류 발생 시킴  -->
	예외 발생 후<br> <!-- 에러가 발생되는 바람에 "예외 발생 후" 부분은 실행이 못됨 -->
</c:catch>

<c:out value="${errmsg }"/>

</body>
</html>