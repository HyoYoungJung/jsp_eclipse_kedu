package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String name = request.getParameter("name");
		String idnum1 = request.getParameter("idnum1");
		String idnum2 = request.getParameter("idnum2");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String mail1 = request.getParameter("mail1");
		String mail2 = request.getParameter("mail2");
		String postnum = request.getParameter("postnum");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String phone = request.getParameter("phone");
		String job = request.getParameter("job");
		String chk_mail = request.getParameter("chk_mail");
		String[] interests = request.getParameterValues("item");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><body>");
		out.println("이름 : " + name + "<br>");
		out.println("주민번호 : " + idnum1 + "-" + idnum2 + "<br>");
		out.println("아이디 : " + id + "<br>");
		out.println("비밀번호 : " + pw + "<br>");
		out.println("이메일 : " + mail1 + "@" + mail2 + "<br>");
		out.println("우편번호 : " + postnum + "<br>");
		out.println("주소 : " + addr1 + addr2 + "<br>");
		out.println("휴대폰번호 : " + phone + "<br>");
		out.println("직업 : " + job + "<br>");
		out.println("메일수신 : " + chk_mail + "<br>");
		
		out.print("관심분야 : ");
		if (interests == null) {
			out.print("선택한 항목이 없습니다.");
		} else {
			for (String interest : interests) {
				out.print(interest + " ");
			}
		}
		out.print("<br>");		
		out.println("<br><a href='javascript:history.go(-1)'>다시</a>");
		out.println("</body></head></html>");
		out.close();
	}
}
