<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
<div id="wrap">
<h2 style="text-align: center">상품 리스트 - 관리자 페이지</h2>
<a href="productWrite.do" id="productWrite">상품 등록</a>
<br>
<table border="1px" class="list">
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>가격</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="product" items="${productList}"> 
	<!-- productList 끝날때까지 반복됨 -->
		<tr>
			<td>${product.code}</td>
			<td>${product.name}</td>
			<td>${product.price} 원</td>
			<td>
				<a href="productUpdate.do?code=${product.code}">상품 수정</a>
			</td>
			<td>
				<a href="productDelete.do?code=${product.code}">상품 삭제</a>
			</td>
		</tr>
	</c:forEach>
</table>
</div>
</body>
</html>