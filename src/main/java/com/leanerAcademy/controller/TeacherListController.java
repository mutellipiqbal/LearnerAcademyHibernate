package com.leanerAcademy.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leanerAcademy.dao.EntityDao;
import com.leanerAcademy.entity.Student;
import com.leanerAcademy.entity.Teacher;

@WebServlet("/teacherList")
public class TeacherListController extends HttpServlet {
	
	EntityDao entityDao= new EntityDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	    getTeacher(request, response);

		
	}
	
    public void getTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Teacher> teacherList=entityDao.getTeacherList();


		 request.setAttribute("teacherList", teacherList);
		 

	        RequestDispatcher dispatcher = request.getRequestDispatcher("teacherList.jsp");
	        dispatcher.forward(request, response);
	       	
	}
   
	
}
