package com.keduit;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberBean member = new MemberBean();

		request.setCharacterEncoding("UTF-8"); //한글 깨짐 해결
		//		response.setCharacterEncoding("UTF-8");
		//		response.setContentType("text/html; charset=utf-8");
		
		member.setName(request.getParameter("name")); 
		member.setUserid(request.getParameter("userid")); 
		member.setNickname(request.getParameter("nickname")); 
		member.setPwd(request.getParameter("pwd")); 
		member.setEmail(request.getParameter("email")); 
		member.setPhone(request.getParameter("phone"));
		
//		request.setAttribute("member", member);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("09_el.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
