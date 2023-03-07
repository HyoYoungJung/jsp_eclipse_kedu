<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 예제</title>
</head>
<body>
<!-- JSTL 코어 쓰는법 -->

<c:set var="msg" value="Hello"></c:set>
\${msg} = ${msg}<br>
<c:set var="age">
30
</c:set>
\${age} = ${age}<hr>
<c:set var="member" value=
	"<%= new com.keduit.MemberBean() %>"></c:set>
<c:set target="${member}" property="name" value="홍길동"></c:set>
<c:set target="${member}" property="userid">gildong</c:set>
\${member} = ${member}<hr>
<c:set var="add" value="${10+5}"></c:set>
\${add} = ${add}<br>
<c:set var="flag" value="${10>5}"></c:set>
\${flag} = ${flag}<br>


</body>
</html>
