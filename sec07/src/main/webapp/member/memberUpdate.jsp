<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h2>회원 수정</h2>
<form action="memberUpdate.do" method="POST" name="frm">
<table>
		<tr>
			<td>이&ensp;름</td>
			<td>
				<input type="text" name="name" size="20" 
						value="${mVO.name}" readonly>
			</td>
		</tr>
		<tr>
			<td>아&nbsp;이&nbsp;디</td>
			<td>
				<input type="text" name="userid" size="20" 
						value="${mVO.userid}" readonly> 
			</td>
		</tr>
		<tr>
			<td>암&ensp;호</td>
			<td><input type="password" name="pwd" size="20"> *</td>
		</tr>
		<tr>
			<td>암호 확인</td>
			<td><input type="password" name="pwd_chk" size="20"> *</td>
		</tr>
		<tr>
			<td>이&nbsp;메&nbsp;일</td>
			<td>
				<input type="email" name="email" size="20"
						value="${mVO.email}">
			</td>
		</tr>				
		<tr>
			<td>전화 번호</td>
			<td>
				<input type="text" name="phone" size="20"
						value="${mVO.phone}">
			</td>
		</tr>				
		<tr>
			<td>등&ensp;급</td>
			<td>
				<c:choose>
					<c:when test="${mVO.admin == 0}">
						<input type="radio" name="admin"value="0" checked="checked">일반회원
						<input type="radio" name="admin" value="1">관리자
					</c:when>
					<c:otherwise>
						<input type="radio" name="admin"value="0">일반회원
						<input type="radio" name="admin" value="1" checked="checked">관리자
					</c:otherwise>
				</c:choose>
			</td>
		</tr>		
		<tr>
			<td></td>
			<td>
				<input type="submit" value="확인" onclick="return joinCheck()">&nbsp;&nbsp;
				<input type="reset" value="취소"> &nbsp;&nbsp;
			</td>
		</tr>
	</table>
</form>

</body>
</html>