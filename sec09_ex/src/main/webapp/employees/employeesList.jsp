<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 관리</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
	<div id="wrap" align="center">
		<h1 id="title">리스트</h1>

		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right"><a
					href="EmployeesServlet?command=employees_write_form">정보 등록</a></td>
			</tr>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>권한</th>
				<th>성별</th>
				<th>전화번호</th>
			</tr>

			<%-- 			<c:forEach var="employees" items="${employeesList}"> --%>
			<!-- 				<tr> -->
			<%-- 					<td>${employees.id}</td> --%>
			<!-- 					<td> -->
			<%-- 						<a href="EmployeesServlet?command=employees_view&id=${employees.id}"> --%>
			<%-- 							${employees.name} --%>
			<!-- 						</a> -->
			<!-- 					</td> -->
			<%-- 					<td>${employees.lev}</td> --%>
			<%-- 					<td>${employees.gender}</td> --%>
			<%-- 					<td>${employees.phone}</td> --%>
			<!-- 				</tr> -->
			<%-- 			</c:forEach> --%>

			<c:forEach var="employees" items="${employeesList}">
				<tr>
					<td>${employees.id}</td>
					<td>
						<a href="EmployeesServlet?command=employees_view&id=${employees.id}">
							${employees.name} 
						</a>
					</td>
					<td>
						<c:choose>
							<c:when test="${employees.lev == 'A'}">
								일반사원
							</c:when>
							<c:when test="${employees.lev == 'B'}">
								팀장
							</c:when>
							<c:when test="${employees.lev == 'D'}">
								임원
							</c:when>
							<c:when test="${employees.lev == 'E'}">
								대표
							</c:when>
						</c:choose>
					</td>
					<td>
						<c:choose>
							<c:when test="${employees.gender == '1'}">
								여자
							</c:when>
							<c:when test="${employees.gender == '2'}">
								남자
							</c:when>					
						</c:choose>
					</td>
					<td>${employees.phone}</td>
				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>