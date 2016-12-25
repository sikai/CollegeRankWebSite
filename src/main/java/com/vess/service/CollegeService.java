package com.vess.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.vess.model.College;

public interface CollegeService {
	public College getCollege(int college_id);
	public List<College> getCity1();
	public List<College> getCity2(String college_city_lvl1);
	public List<College> getCollegeByCity2(String college_city_lvl2);
	public List<College> getCollegeByCity1(String college_city_lvl1);
	public College getCollegeByUserInput(String college_name);
}
