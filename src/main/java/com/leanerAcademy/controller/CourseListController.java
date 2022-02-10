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
import com.leanerAcademy.entity.Course;
import com.leanerAcademy.entity.Student;
import com.leanerAcademy.entity.Teacher;

@WebServlet("/courseList")
public class CourseListController extends HttpServlet {
	
	EntityDao entityDao= new EntityDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		getCourse(request, response);

		
	}
	
    public void getCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Course> courseList=entityDao.getCourseList();


		 request.setAttribute("courseList", courseList);
		 

	        RequestDispatcher dispatcher = request.getRequestDispatcher("courseList.jsp");
	        dispatcher.forward(request, response);
	       	
	}
   
	
}
