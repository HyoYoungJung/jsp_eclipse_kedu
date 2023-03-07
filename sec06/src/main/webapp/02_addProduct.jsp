<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%!
	Connection conn = null;
	PreparedStatement pstmt = null;
	String url = "jdbc:mysql://localhost:3306/keduit?serverTimezone=UTC";
	String uid = "root";
	String pass = "0000";
	String sql = "insert into item values(?, ?, ?)";
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String price = request.getParameter("price");
String description = request.getParameter("description");

try{
	//1단계 : JDBC 드라이버 로드
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	//2단계 : 데이터베이스 연결 객체인 Connection 생성
	conn = DriverManager.getConnection(url, uid, pass);
	
	//3단계 : Statement 객체 생성
	pstmt = conn.prepareStatement(sql);
	
	//4단계 : 바인딩 변수를 채워줌.
	pstmt.setString(1, name);
	pstmt.setString(2, price);
	pstmt.setString(3, description);
	
	//** 5단계 : SQL문을 실행하고 결과를 처리 **
	pstmt.executeUpdate();
	
} catch (Exception e) {
	e.printStackTrace();
} finally {
	//6단계 : 사용할 자원(리소스)를 반납(해제)
	try {
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>
<h3>상품 정보가 추가되었습니다.</h3>
<a href="02_allProduct.jsp">결과 보기</a>
</body>
</html>