package com.vess.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.vess.model.DBinfo;

public interface DBinfoMapper {
		
	@Select("SELECT college_id as college_id, db_name as db_name, "
			+ "db_patent_name as db_patent_name, paper_score_name as paper_score_name "
			+ "FROM DBinfo WHERE college_id = #{college_id}")
	public DBinfo getDBinfoById(int college_id);


}
