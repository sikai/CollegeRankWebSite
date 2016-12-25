package com.vess.mapper;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.vess.model.CollegePaperAndPatentScore;
import com.vess.model.Student;
public interface CollegePaperAndPatentScoreMapper {
	@Insert("INSERT INTO CollegePaperAndPatentScore(college_id, create_date, ref_score,"
			+ "funds_score, record_score, source_score, paper_score, patent_score ) VALUES"
			+ "(#{college_id},#{create_date}, #{ref_score}, #{funds_score},"
			+ "#{record_score}, #{source_score}, #{paper_score}, #{patent_score})")
	//@Options(useGeneratedKeys=true, keyProperty="id", flushCache=true, keyColumn="id")
	public void insertCollegePaperAndPatentScore(CollegePaperAndPatentScore collegePaperAndPatentScore);
		
	@Select("SELECT college_id as college_id, create_date as create_date, "
			+ "ref_score as ref_score, funds_score as funds_score, "
			+ "record_score as record_score, source_score as source_score, "
			+ "paper_score as paper_score, patent_score as patent_score "
			+ "FROM CollegePaperAndPatentScore WHERE college_id = #{college_id} "
			+ "group by create_date DESC LIMIT 1")
	public CollegePaperAndPatentScore getCollegePaperAndPatentScoreById(int college_id);
}
