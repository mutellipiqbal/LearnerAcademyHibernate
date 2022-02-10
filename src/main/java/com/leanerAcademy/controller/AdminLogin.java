package com.leanerAcademy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uName");
		String password=request.getParameter("pass");

	
		HttpSession session;
		

			if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
				
				
				session=request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("password", password);

				response.sendRedirect("dashBoard.jsp");
			}else {
				response.sendRedirect("adminLogin.jsp");
				
			}

		
		
	}

}
