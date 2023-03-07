<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%! //선언부는 첫 방문자에 의해 단 한번 수행.
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:mysql://localhost:3306/keduit?serverTimezone=UTC";
	String uid = "root";
	String pass = "0000";
	String sql = "select * from item";
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
<h3>입력 완료된 정보</h3>
	<table border="1">
		<tr>
			<th>상품제목</th>
			<th>가격</th>
			<th>상품설명</th>
		</tr>
		<%
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, uid, pass);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				while(rs.next()) {
					out.println("<tr>");
					out.println("<td>" + rs.getString("name") + "</td>");
					out.println("<td>" + rs.getString("price") + "</td>");
					out.println("<td>" + rs.getString("description") + "</td>");
					out.println("</tr>");
				} //while의 끝
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(rs != null)
						rs.close();
					if(stmt != null)
						stmt.close();
					if(conn != null)
						conn.close();
				}	catch (Exception e) {
					e.printStackTrace();
				}
			} //finally의 끝
		%>
	</table>
</body>
</html>