<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 보기</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/employees.js"></script>
</head>
<body>
	<div id="wrap" align="center">
		<h1>정보 보기</h1>

		<table>
			<tr>
				<th>아이디</th>
				<td>${employees.id}</td>
			</tr>

			<tr>
				<th>비밀번호</th>
				<td>${employees.pass}</td>
			</tr>

			<tr>
				<th>이름</th>
				<td>${employees.name}</td>
			</tr>

			<tr>
				<th>입사일자</th>
				<td>${employees.enter}</td>
			</tr>

			<tr>
				<th>권한</th>

				<td><c:choose>
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
					</c:choose></td>

			</tr>

			<tr>
				<th>성별</th>
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
			</tr>

			<tr>
				<th>전화번호</th>
				<td>${employees.phone}</td>
			</tr>
		</table>
		<br> <br> <input type="button" value="수정"
			onclick="open_win('EmployeesServlet?command=employees_check_pass_form&id=${employees.id}','update')">
		<input type="button" value="삭제"
			onclick="open_win('EmployeesServlet?command=employees_check_pass_form&id=${employees.id}','delete')">
		<input type="button" value="목록"
			onclick="location.href='EmployeesServlet?command=employees_list'">
		<input type="button" value="등록"
			onclick="location.href='EmployeesServlet?command=employees_write_form'">

	</div>
</body>
</html>