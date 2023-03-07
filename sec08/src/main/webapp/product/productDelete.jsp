<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete product</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
<div id="wrap">
<h2 style="text-align: center">상품 삭제 - 관리자페이지</h2>
<form method="POST" action="productDelete.do" >
	<table>
		<tr>
			<td>
				<c:choose>
					<c:when test = "${empty product.pictureurl }">
						<img src = "upload/noimg.gif">
					</c:when>
					<c:otherwise>
						<img src = "upload/${product.pictureurl }"> 
					</c:otherwise>
				</c:choose>
			</td>
			
			<td>
				<table>		
					<tr>
						<th>상 품 명</th>
						<td>
							<input type="text" name="name" size="80" value="${product.name}">
						</td>
					</tr>
					<tr>
						<th>가 격</th>
						<td>
							<input type="text" name="price" value="${product.price}"> 원
						</td>
					</tr>	
					<tr>
						<th>설 명</th>
						<td>
							<textarea rows="10" cols="80" name="description" > ${product.description} </textarea>
						</td>
					</tr>	
				</table>
			</td>
		</tr>
	</table>
	
	<br>
	<input type="hidden" name="code" value="${product.code}">
	<input type="submit" value="삭제" >
	<input type="button" value="목록" onclick="location.href='productList.do'">
</form>
</div>
</body>
</html>