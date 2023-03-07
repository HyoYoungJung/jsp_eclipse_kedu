package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CheckboxServlet")
public class CheckboxServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String items[] = request.getParameterValues("item");
		out.println("<html><head><body>");
		
		if (items == null) {
			out.println("선택한 항목이 없습니다.");
		} else {
			out.println("<b>당신이 선택한 항목입니다.</b><br>");
			for (String item : items) {
				out.print(item + " ");
			}
		}
		out.println("<hr>");
		
		String job = request.getParameter("job");
		out.println("<b>당신이 선택한 직업 : </b>");
		out.println(job);
		out.println("<hr>");
		
		String[] interests = request.getParameterValues("interest");
		if (interests == null) {
			out.println("선택한 관심분야가 없습니다.");
		} else {
			out.println("<b>당신이 선택한 관심분야입니다.</b><br>");
			for (String interest : interests) {
				out.print(interest + " ");
			}
		}
		out.println("<hr>");
		
		out.println("<br><a href='javascript:history.go(-1)'>다시</a>");
		out.print("</body></head></html>");
		out.close();
		}
	}