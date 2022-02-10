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

@WebServlet("/studentList")
public class StudentListController extends HttpServlet {
	
	EntityDao entityDao= new EntityDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    getStudent(request, response);
		
	}
	
    
    public void getStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Student> studentList=entityDao.getStudentList();


		 request.setAttribute("studentList", studentList);
		 

	        RequestDispatcher dispatcher = request.getRequestDispatcher("studentList.jsp");
	        dispatcher.forward(request, response);
	       	
	}
	
}
