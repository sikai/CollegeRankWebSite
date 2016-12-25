package com.vess.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.vess.model.Talent;

public interface TalentService {

	public Talent getTalentById(int college_id);
	public Talent getOtherById(int college_id);
	public Talent getPaperByName(String tablename);
	public Talent getPatentByName(String tablename);
	public List<Talent> getPaperByYear(String tablename, String psname);
}
