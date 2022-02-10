package com.leanerAcademy.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.leanerAcademy.entity.ClassRoom;
import com.leanerAcademy.entity.Course;
import com.leanerAcademy.entity.Student;
import com.leanerAcademy.entity.Teacher;
import com.leanerAcademy.hibernateUtil.HibernateUtil;

public class EntityDao {
	
	
	
	
	public void saveStudent(Student student) {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// save the student object
			session.save(student);
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	
	
	public void saveClassRoom(ClassRoom classRoom) {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// save the student object
			session.save(classRoom);
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	
	
	public List<Student> getStudentList() {
		
		Transaction transaction = null;
		List<Student> studentList=null;
		
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();

//			// delete the student object
//			session.delete(student);
			
			studentList=session.createQuery("from Student", Student.class).getResultList();
			
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		
		
		return studentList;
	}
	
	public List<Teacher> getTeacherList() {
		
		Transaction transaction = null;
		List<Teacher> teacherList=null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();

//			// delete the student object
//			session.delete(student);
			
			teacherList=session.createQuery("from Teacher", Teacher.class).getResultList();
			
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		
		
		return teacherList;
	}

}
