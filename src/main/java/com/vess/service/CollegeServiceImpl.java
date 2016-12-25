package com.vess.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.vess.mapper.CollegeMapper;
import com.vess.model.College;


@Service("collegeService")
public class CollegeServiceImpl implements CollegeService{
	@Autowired
	private CollegeMapper collegeMapper;
	
	public College getCollege(int college_id){
		College clg = collegeMapper.getCollegeById(college_id);
		
		if(clg!= null) {
			return clg;
		}else{
			System.out.println("!!!!!!!!!!!!!!!!!!!NULL");
		}
		return null;
	}
	
	public List<College> getCity1(){
		List<College> list = collegeMapper.getCity1();
		return list;
	}
	public List<College> getCity2(String college_city_lvl1){
		List<College> list = collegeMapper.getCity2(college_city_lvl1);
		return list;
	}
	
	public List<College> getCollegeByCity2(String college_city_lvl2){
		List<College> list = collegeMapper.getCollegeByCity2(college_city_lvl2);
		return list;
	}
	
	public List<College> getCollegeByCity1(String college_city_lvl1){
		List<College> list = collegeMapper.getCollegeByCity1(college_city_lvl1);
		return list;
	}
	
	public College getCollegeByUserInput(String college_name){
		College list = collegeMapper.getCollegeByUserInput(college_name);
		return list;
	}
}
