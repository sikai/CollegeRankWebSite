package com.vess.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.vess.model.*;

public interface SubjectService {
	public List<String> getSubject1(String tablename);
	public List<String> getSubject2(String tablename, String sub1);
	public List<Subject> getSub1Num(String tablename);
	public List<Subject> getSubject2BySub1(String tablename, String sub1);
}
