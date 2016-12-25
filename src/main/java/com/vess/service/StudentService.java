package com.vess.service;

import com.vess.model.Student;

public interface StudentService {
	void insertStudent(Student student);
	boolean getStudentByLogin(String userName, String password);
	boolean getStudentByUserName(String userName);
	Student getStudent(String userName);
}