<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
	<div id="wrap" align="center">
		<h1>정보 수정</h1>
		<form name="frm" method="POST" action="EmployeesServlet">
			<input type="hidden" name="command" value="employees_update">
			<input type="hidden" name="id" value="${employees.id}">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" readonly="readonly" value="${employees.id}"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" value="${employees.name}"></td>
				</tr>
				
				<tr>
					<th>입사일</th>
					<td>
						<input type="text" name="enter" value="${employees.enter}" readonly="readonly">
					</td>
				</tr>
				
				<tr>
					<th>직급</th>
					<td><select name="lev">
							<option value="A" selected="selected">일반사원</option>
							<option value="B">팀장</option>
							<option value="D">임원</option>
							<option value="E">대표</option>
					</select></td>
				</tr>

				<tr>
					<th>성별</th>
					<td><select name="gender">
							<option value="1" selected="selected">여자</option>
							<option value="2">남자</option>
					</select></td>
				</tr>

				<tr>
					<th>전화번호</th>
					<td><input type="text" name="phone"></td>
				</tr>
			</table>
			<br>
			<br> 
			<input type="submit" value="확인" onclick="return employeesCheck()">
			<input type="reset" value="다시작성">
			<input type="button" value="목록" onclick="location.href='EmployeesServlet?command=employees_list'">			
		</form>
	</div>
</body>
</html>