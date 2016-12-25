package com.vess.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.vess.model.DBinfo;
import com.vess.model.Talent;

public interface TalentMapper {

	@Select("SELECT master_num as master_num, doc_num as doc_num, "
			+ "yuanshi_num as yuanshi_num, changjiang_num as changjiang_num, "
			+ "nature_prize_num as nature_prize_num, social_prize_num as social_prize_num, "
			+ "total_prize_num as total_prize_num, lab_num as lab_num "
			+ "FROM CollegeDetailNew WHERE college_id = #{college_id} "
			+ "group by create_date DESC LIMIT 1")
	public Talent getTalentById(int college_id);
	
	@Select("SELECT rdPctg_score as rdPctg_score, snrPctg_score as snrPctg_score, "
			+ "rdMoney_score as rdMoney_score, rdMoneyPp_score as rdMoneyPp_score, "
			+ "projectNum_score as projectNum_score, dealNum_score as dealNum_score, "
			+ "dealMoney_score as dealMoney_score "
			+ "FROM CollegeOtherPre WHERE college_id = #{college_id} "
			+ "group by create_date DESC LIMIT 1")
	public Talent getOtherById(int college_id);
	
	@Select("SELECT count(*) as paper_num, sum(ref_rate) as ref_rate, sum(sci_num) as sci_num, "
			+ "sum(ei_num) as ei_num, sum(istic_num) as istic_num, "
			+ "sum(cssci_num) as cssci_num, sum(pku_num) as pku_num "
			+ " FROM ${tablename} ")
	public Talent getPaperByName( @Param("tablename")String tablename);
	
	@Select("SELECT count(*) as patent_num "
			+ " FROM ${tablename} ")
	public Talent getPatentByName( @Param("tablename")String tablename);
	
	@Select("SELECT count(*) as paper_num, sum(a.ref_rate) as ref_rate, sum(a.sci_num) as sci_num, "
			+ "sum(a.ei_num) as ei_num, sum(a.istic_num) as istic_num, "
			+ "sum(a.cssci_num) as cssci_num, sum(a.pku_num) as pku_num, year(b.paper_date) as year "
			+ "FROM ${tablename} b INNER JOIN ${psname} a ON a.web_id = b.paper_web_id "
			+ "GROUP BY year(b.paper_date) ")
	public List<Talent> getPaperByYear( @Param("tablename")String tablename, @Param("psname")String psname);
	
}
