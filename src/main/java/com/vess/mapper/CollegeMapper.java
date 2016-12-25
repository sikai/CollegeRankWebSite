package com.vess.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.vess.model.College;

public interface CollegeMapper {
	@Select("Select college_id AS college_id , college_city_lvl1 AS college_city_lvl1, "
			+ "college_city_lvl2 AS college_city_lvl2, "
			+ "college_title AS college_title, college_type AS college_type, "
			+ "college_grade  AS college_grade "
	        + "from College where college_id = #{college_id}")
	public College getCollegeById(int college_id);
	
	@Select("SELECT DISTINCT college_city_lvl1 as college_city_lvl1 "
			+ "FROM College ")
	public List<College> getCity1();
	
	@Select("SELECT DISTINCT college_city_lvl2 as college_city_lvl2 "
			+ " FROM College "
			+ " WHERE college_city_lvl1 = #{college_city_lvl1}")
	public List<College> getCity2(  @Param("college_city_lvl1") String college_city_lvl1);
	
	@Select("SELECT a.college_id as college_id, a.college_city_lvl1 as college_city_lvl1, "
			+ "a.college_city_lvl2 as college_city_lvl1, a.college_title as college_title, "
			+ "a.college_type as college_type, a.college_grade as college_grade  "
			+ " FROM College a INNER JOIN DBinfo b ON a.college_id = b.college_id "
			+ " WHERE a.college_city_lvl2 = #{college_city_lvl2}")
	public List<College> getCollegeByCity2(  @Param("college_city_lvl2") String college_city_lvl2);
	
	@Select("SELECT a.college_id as college_id, a.college_city_lvl1 as college_city_lvl1, "
			+ "a.college_city_lvl2 as college_city_lvl1, a.college_title as college_title, "
			+ "a.college_type as college_type, a.college_grade as college_grade  "
			+ " FROM College a INNER JOIN DBinfo b ON a.college_id = b.college_id "
			+ " WHERE a.college_city_lvl1 = #{college_city_lvl1}")
	public List<College> getCollegeByCity1(  @Param("college_city_lvl1") String college_city_lvl1);
	
	@Select("SELECT a.college_id as college_id, a.college_city_lvl1 as college_city_lvl1, "
			+ "a.college_city_lvl2 as college_city_lvl1, a.college_title as college_title, "
			+ "a.college_type as college_type, a.college_grade as college_grade  "
			+ " FROM College a INNER JOIN DBinfo b ON a.college_id = b.college_id "
			+ " WHERE a.college_title = #{college_name}")
	public College getCollegeByUserInput(  @Param("college_name") String college_name);
}
