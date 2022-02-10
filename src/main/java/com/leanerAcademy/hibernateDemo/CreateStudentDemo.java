package com.leanerAcademy.hibernateDemo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.leanerAcademy.entity.ClassRoom;
import com.leanerAcademy.entity.Course;
import com.leanerAcademy.entity.Student;
import com.leanerAcademy.entity.Teacher;

public class CreateStudentDemo {

//
//	public static void main(String[] args) {
//
//		// create session factory
//		SessionFactory factory = new Configuration()
//								.configure("hibernate.cfg.xml")
//								.addAnnotatedClass(Student.class)
//								.addAnnotatedClass(ClassRoom.class)
//								.addAnnotatedClass(Course.class)
//								.addAnnotatedClass(Teacher.class)
//								.buildSessionFactory();
//		
//		// create session
//		Session session = factory.getCurrentSession();
//		
//		try {			
//			
//			// create the objects			
//			Student tempStudent= new Student();
//			
//			ClassRoom tempClassRoom =new ClassRoom();		
//			
//			// associate the objects
//
//			
//			// start a transaction
//			session.beginTransaction();
//			
//	
//			//
//			System.out.println("Saving student");
//			session.save();					
//			
//			// commit transaction
//			session.getTransaction().commit();
//			
//			System.out.println("Done!");
//		}
//		finally {
//			
//			// add clean up code
//			session.close();
//			
//			factory.close();
//		}
//	}

}
