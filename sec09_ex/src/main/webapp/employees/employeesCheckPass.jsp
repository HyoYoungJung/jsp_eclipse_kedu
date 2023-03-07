<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
</head>
<body>
	<div>
		<h1>비밀번호 확인</h1>
		<form action="EmployeesServlet" name="frm" method="POST">
			<input type="hidden" name="command" value="employees_check_pass">
			<input type="hidden" name="id" value="${param.id}">
			<table>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass"></td>
				</tr>
			</table>
			<br> <input type="submit" value="확인"
				onclick="return passCheck()"> <br>
			<br> ${message}
		</form>
	</div>
</body>
</html>