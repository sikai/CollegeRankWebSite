package com.vess.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vess.mapper.TalentMapper;
import com.vess.model.Talent;

@Service("talentService")
public class TalentServiceImpl implements TalentService{
	@Autowired
	private TalentMapper talentMapper;
	
	public Talent getTalentById(int college_id){
		Talent talent = talentMapper.getTalentById(college_id);
		
		if(talent != null) {
			return talent;
		}
		return null;
	}
	
	public Talent getOtherById(int college_id){
		Talent talent = talentMapper.getOtherById(college_id);
		
		if(talent != null) {
			return talent;
		}
		return null;
	}
	
	public Talent getPaperByName(String tablename){
		Talent talent = talentMapper.getPaperByName(tablename);
		
		if(talent != null) {
			return talent;
		}
		return null;
	}
	
	public Talent getPatentByName(String tablename){
		Talent talent = talentMapper.getPatentByName(tablename);
		
		if(talent != null) {
			return talent;
		}
		return null;
	}
	
	public List<Talent> getPaperByYear(String tablename, String psname){
		List<Talent> talent = talentMapper.getPaperByYear(tablename, psname);
		if(talent != null) {
			return talent;
		}
		return null;
	}

}
