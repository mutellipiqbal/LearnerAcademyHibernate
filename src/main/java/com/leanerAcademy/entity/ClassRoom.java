package com.leanerAcademy.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="classRoom")
public class ClassRoom {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="classRoom_name")
	private String classRoomName;
	
	@OneToOne(mappedBy="classRoom", 
			cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST,
						CascadeType.REFRESH})
	private Student student;
	
	

	public ClassRoom() {
		super();
	}



	public ClassRoom(String classRoomName) {
		super();
		this.classRoomName = classRoomName;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getClassRoomName() {
		return classRoomName;
	}



	public void setClassRoomName(String classRoomName) {
		this.classRoomName = classRoomName;
	}



	public Student getStudent() {
		return student;
	}



	public void setStudent(Student student) {
		this.student = student;
	}



	@Override
	public String toString() {
		return "ClassRoom [id=" + id + ", classRoomName=" + classRoomName + ", student=" + student + "]";
	}
	
	
	
	
	


}
