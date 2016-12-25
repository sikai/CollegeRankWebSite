package com.vess.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vess.mapper.StudentMapper;
import com.vess.model.Student;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentMapper studentMapper;
	
	@Transactional
	public void insertStudent(Student student) {
		studentMapper.insertStudent(student);
	}

	public boolean getStudentByLogin(String userName, String password) {
		Student student = studentMapper.getStudentByUserName(userName);
		
		if(student != null && student.getPassword().equals(password)) {
			return true;
		}
		
		return false;
	}

	public boolean getStudentByUserName(String userName) {
		Student student = studentMapper.getStudentByUserName(userName);
		
		if(student != null) {
			return true;
		}
		
		return false;
	}
	public Student getStudent(String userName){
		Student student = studentMapper.getStudentByUserName(userName);
		
		if(student != null) {
			return student;
		}
		return null;
	}

}
