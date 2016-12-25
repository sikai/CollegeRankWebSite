package com.vess.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vess.mapper.DBinfoMapper;
import com.vess.model.DBinfo;

@Service("dbinfoService")
public class DBinfoServiceImpl implements DBinfoService {

	@Autowired
	private DBinfoMapper dbinfoMapper;

	public DBinfo getDBinfoById(int college_id) {
		DBinfo db = dbinfoMapper.getDBinfoById(college_id);
		if(db!= null) {
			return db;
		}else{
			System.out.println("!!!!!!!!!!!!!!!!!!!NULL");
		}
		return null;
	}
}