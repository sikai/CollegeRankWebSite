package com.vess.mapper;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import com.vess.model.Score;

public interface ScoreMapper {

	@Select("SELECT talent_score as talent_score, platform_score as platform_score, "
			+ "input_score as input_score, paper_score as paper_score, "
			+ "prize_score as prize_score, patent_score as patent_score, "
			+ "transform_score as transform_score, basic_score as basic_score, "
			+ "output_score as output_score, overall_score as overall_score "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public Score getScoreById(int college_id);
	
	@Select("SELECT FIND_IN_SET( overall_score, (   "
			+ "SELECT GROUP_CONCAT( overall_score "
			+ "ORDER BY overall_score DESC ) "
			+ "FROM CollegeOverallScore ) "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getScoreOverallRank(int college_id);
	
	@Select("SELECT FIND_IN_SET( overall_score, (  "
			+ "SELECT GROUP_CONCAT( overall_score "
			+ "ORDER BY overall_score DESC ) "
			+ "FROM CollegeOverallScore where college_id IN  "
			+ "(select college_id from College where college_city_lvl2 = "
			+ "(select college_city_lvl2 from College where college_id = #{college_id} )) "
			+ ") "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getScoreCityRank(int college_id);
	
	@Select("SELECT AVG(talent_score) as talent_avg, AVG(platform_score) as platform_avg, "
			+ "AVG(input_score) as input_avg, AVG(paper_score) as paper_avg, "
			+ "AVG(prize_score) as prize_avg, AVG(patent_score) as patent_avg, "
			+ "AVG(transform_score) as transform_avg, AVG(basic_score) as basic_avg, "
			+ "AVG(output_score) as output_avg, AVG(overall_score) as overall_avg "
			+ "FROM CollegeOverallScore")
	public Score getScoreAvg();
	
	@Select("SELECT count(*) "
			+ "FROM CollegeOverallScore")
	public int getNumbers();
	
	
	@Select("SELECT FIND_IN_SET( talent_score, (   "
			+ "SELECT GROUP_CONCAT( talent_score "
			+ "ORDER BY talent_score DESC ) "
			+ "FROM CollegeOverallScore ) "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getTalentRank(int college_id);
	
	@Select("SELECT FIND_IN_SET( platform_score, (   "
			+ "SELECT GROUP_CONCAT( platform_score "
			+ "ORDER BY platform_score DESC ) "
			+ "FROM CollegeOverallScore ) "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getPlatformRank(int college_id);
	
	@Select("SELECT FIND_IN_SET( input_score, (   "
			+ "SELECT GROUP_CONCAT( input_score "
			+ "ORDER BY input_score DESC ) "
			+ "FROM CollegeOverallScore ) "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getInputRank(int college_id);
	
	@Select("SELECT FIND_IN_SET( paper_score, (   "
			+ "SELECT GROUP_CONCAT( paper_score "
			+ "ORDER BY paper_score DESC ) "
			+ "FROM CollegeOverallScore ) "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getPaperRank(int college_id);
	
	@Select("SELECT FIND_IN_SET( prize_score, (   "
			+ "SELECT GROUP_CONCAT( prize_score "
			+ "ORDER BY prize_score DESC ) "
			+ "FROM CollegeOverallScore ) "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getPrizeRank(int college_id);
	
	@Select("SELECT FIND_IN_SET( patent_score, (   "
			+ "SELECT GROUP_CONCAT( patent_score "
			+ "ORDER BY patent_score DESC ) "
			+ "FROM CollegeOverallScore ) "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getPatentRank(int college_id);
	
	@Select("SELECT FIND_IN_SET( transform_score, (   "
			+ "SELECT GROUP_CONCAT( transform_score "
			+ "ORDER BY transform_score DESC ) "
			+ "FROM CollegeOverallScore ) "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getTransformRank(int college_id);
	
	@Select("SELECT FIND_IN_SET( basic_score, (   "
			+ "SELECT GROUP_CONCAT( basic_score "
			+ "ORDER BY basic_score DESC ) "
			+ "FROM CollegeOverallScore ) "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getBasicRank(int college_id);
	
	@Select("SELECT FIND_IN_SET( output_score, (   "
			+ "SELECT GROUP_CONCAT( output_score "
			+ "ORDER BY output_score DESC ) "
			+ "FROM CollegeOverallScore ) "
			+ ") AS rank "
			+ "FROM CollegeOverallScore WHERE college_id = #{college_id}")
	public int getOutputRank(int college_id);
	
	@Select("SELECT ref_score as ref_score, sci_score as sci_score, "
			+ "pku_score as pku_score "
			+ "FROM CollegePaperAndPatentScore WHERE college_id = #{college_id} "
			+ "group by create_date DESC LIMIT 1")
	public Score getPaperScoreById(int college_id);
	
}
