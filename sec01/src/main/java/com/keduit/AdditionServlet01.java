package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Add01") //'url에 괄호안 주소를 넣으면'이라고 서버에게 알려주는 것! 
public class AdditionServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdditionServlet01() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = 20;
		int num2 = 10;
		int add = num1 + num2;
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Addition</title></head>");
		out.println("<body><h1>");
		out.println("더하기 연산<br>");
		out.println(num1 + "+" + num2 + "=" + add);
		out.println("</h1></body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
