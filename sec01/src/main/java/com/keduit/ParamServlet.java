package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));
		//무조건 넘어오는건 String으로 넘어옴. 숫자는 parseInt로 바꿔서 써야함.
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><body>");
		out.println("당신이 입력한 자료입니다.");
		out.println("<br>아이디 : ");
		out.println(id);
		out.println("<br>나이 : ");
		out.println(age);
		out.println("<br><a href='javascript:history.go(-1)'>다시입력</a>");
		out.println("</body></head></html>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		doGet(request, response); //아래 처럼 해도되고, goGet을 호출해도 됨
		
//		String id = request.getParameter("id");
//		int age = Integer.parseInt(request.getParameter("age"));
//		
//		PrintWriter out = response.getWriter();
//		out.println("<html><head><body>");
//		out.println("당신이 입력한 자료입니다.");
//		out.println("<br>아이디 : ");
//		out.println(id);
//		out.println("<br>나이 : ");
//		out.println(age);
//		out.println("<br><a href='javascript:history.go(-1)'>다시입력</a>");
//		out.println("</body></head></html>");
	}
}
