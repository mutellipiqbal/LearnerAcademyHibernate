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
import com.leanerAcademy.entity.ClassRoom;
import com.leanerAcademy.entity.Student;
import com.leanerAcademy.entity.Teacher;

@WebServlet("/classroomList")
public class ClassroomListController extends HttpServlet {
	
	EntityDao entityDao= new EntityDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		getClassRoom(request, response);

		
	}
	
    public void getClassRoom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ClassRoom> classRoomList=entityDao.getClassRoom();


		 request.setAttribute("classRoomList", classRoomList);
		 

	        RequestDispatcher dispatcher = request.getRequestDispatcher("classroomList.jsp");
	        dispatcher.forward(request, response);
	       	
	}
   
	
}
