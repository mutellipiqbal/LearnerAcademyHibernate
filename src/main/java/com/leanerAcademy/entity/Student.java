package com.leanerAcademy.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="student")
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="email")
	private String email;
	
	@Column(name="age")
	private int age;
	
	@Column(name="gender")
	private String gender;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="classRoom_id")
	private ClassRoom classRoom;
	
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="student_id")
	private List<Course> courses;
	
	

	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="student_id")
	private List<Teacher> teachers;
	
	public void addCourse(Course course) {
		if (courses==null) {
			courses=new ArrayList();		
		}
		
		courses.add(course);
		course.setStudent(this);
	}
	
	public void addTeacher(Teacher teacher) {
		if (teachers==null) {
			teachers=new ArrayList();		
		}
		
		teachers.add(teacher);
		teacher.setStudent(this);
	}
	
	

	public Student() {
		super();
	}

	public Student(String firstName, String lastName, String email, int age, String gender) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.age = age;
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public ClassRoom getClassRoom() {
		return classRoom;
	}

	public void setClassRoom(ClassRoom classRoom) {
		this.classRoom = classRoom;
	}

	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public List<Teacher> getTeachers() {
		return teachers;
	}

	public void setTeachers(List<Teacher> teachers) {
		this.teachers = teachers;
	}
	

}
