package com.leanerAcademy.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leanerAcademy.dao.EntityDao;
import com.leanerAcademy.entity.ClassRoom;
import com.leanerAcademy.entity.Course;
import com.leanerAcademy.entity.Student;
import com.leanerAcademy.entity.Teacher;


@WebServlet("/registerStudent")
public class StudentController extends HttpServlet{
	
	private EntityDao entityDao;

	public void init() {
		entityDao = new EntityDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		register(request, response);
		
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		

		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		
		String classroom = request.getParameter("classroom");
		
		String teacherP = request.getParameter("teacher");
		
		

		Student student = new Student();
		student.setFirstName(firstName);
		student.setLastName(lastName);
		student.setAge(age);
		student.setEmail(email);
		student.setGender(gender);
		
		Teacher teacher=new Teacher(teacherP);
		student.addTeacher(teacher);
	

		
		ClassRoom classRoom=new ClassRoom();
		classRoom.setClassRoomName(classroom);
		student.setClassRoom(classRoom);
		entityDao.saveClassRoom(classRoom);
		
		String[] courses = request.getParameterValues("department");

		
		

		
		Course tempCourse=null;
		//student.setCourses(courlist);
		if(courses!=null) {
			for (int a=0; a<courses.length;a++) {
				tempCourse=new Course(courses[a]);
				student.addCourse(tempCourse);
				//entityDao.saveCourse(tempCourse);
				
			}
					
		}

		entityDao.saveStudent(student);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
		dispatcher.forward(request, response);
	}
	


}
