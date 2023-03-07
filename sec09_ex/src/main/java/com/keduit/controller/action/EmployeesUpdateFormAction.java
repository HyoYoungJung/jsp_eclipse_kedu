package com.keduit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.EmployeesDAO;
import com.keduit.dto.EmployeesVO;

public class EmployeesUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/employees/employeesUpdate.jsp";
		String id = request.getParameter("id");
		
		EmployeesDAO eDAO = EmployeesDAO.getInstance();
		
		EmployeesVO eVO = eDAO.selectOneEmployeesById(id);
		request.setAttribute("employees", eVO);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
