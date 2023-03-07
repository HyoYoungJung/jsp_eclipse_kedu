package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RadioServlet")
public class RadioServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String gender = request.getParameter("gender");
		String chk_mail = request.getParameter("chk_mail");
		String content = request.getParameter("content");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><body>");
		out.println("당신이 선택한 내용입니다.<br>");
		out.println("성별 : ");
		out.println(gender);
		out.println("<br>메일 수신 : ");
		out.println(chk_mail);
		out.println("<br>가입 인사 : ");
		out.println(content);
		out.println("</body></head></html>");
		
	}

}
