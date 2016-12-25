package com.vess.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vess.mapper.SubjectMapper;
import com.vess.model.Subject;

@Service("subjectService")
public class SubjectServiceImpl implements SubjectService{
	@Autowired
	private SubjectMapper subjectMapper;
	
	public List<String> getSubject1(String tablename) {
		List<String> list = subjectMapper.getSubject1(tablename);		
		return list;
	}
	
	public List<String> getSubject2(String tablename, String sub1){
		List<String> list = subjectMapper.getSubject2(tablename, sub1);
		return list;
	}
	
	public List<Subject> getSub1Num(String tablename){
		List<Subject> list = subjectMapper.getSub1Num(tablename);
		return list;
	}
	
	public List<Subject> getSubject2BySub1(String tablename, String sub1){
		System.out.println("2 gere "+sub1);
		List<Subject> list = subjectMapper.getSubject2BySub1(tablename, sub1);
		return list;
	}
	
}
