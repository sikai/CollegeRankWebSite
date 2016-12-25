package com.vess.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.vess.model.Subject;

public interface SubjectMapper {
		
	@Select("SELECT DISTINCT paper_class_lvl1 as sub1 "
			+ "FROM ${tablename} ")
	public List<String> getSubject1( @Param("tablename")String tablename);
	
	@Select("SELECT DISTINCT paper_class_lvl2 as sub2 "
			+ " FROM ${tablename} "
			+ " WHERE paper_class_lvl1 = #{sub1}")
	public List<String> getSubject2( @Param("tablename")String tablename, @Param("sub1") String sub1);
	
	@Select("SELECT paper_class_lvl1 as sub1, count(*) as sub1_num "
			+ " FROM ${tablename} "
			+ " GROUP BY paper_class_lvl1")
	public List<Subject> getSub1Num( @Param("tablename")String tablename);
	
	@Select("SELECT paper_class_lvl2 as sub2, count(*) as sub2_num, "
			+ " sum(paper_references) as sub2_ref "
			+ " FROM ${tablename}"
			+ " WHERE paper_class_lvl1 = #{sub1}"
			+ " GROUP BY paper_class_lvl2")
	public List<Subject> getSubject2BySub1( @Param("tablename")String tablename, @Param("sub1") String sub1);
		
}
