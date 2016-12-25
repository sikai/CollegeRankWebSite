package com.vess.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vess.mapper.ScoreMapper;
import com.vess.mapper.StudentMapper;
import com.vess.model.College;
import com.vess.model.Score;

@Service("scoreService")
public class ScoreServiceImpl implements ScoreService{
	
	@Autowired
	private ScoreMapper scoreMapper;
	
	public Score getScoreById(int college_id){
		Score score = scoreMapper.getScoreById(college_id);
		
		if(score!= null) {
			return score;
		}else{
			System.out.println("!!!!!!!!!!!!!!!!!!!NULL");
		}
		return null;
	}
	
	public int getScoreOverallRank(int college_id){
		int overall_rank= scoreMapper.getScoreOverallRank(college_id);
		return overall_rank;
	}
	
	public int getScoreCityRank(int college_id){
		int ret = scoreMapper.getScoreCityRank(college_id);
		return ret;
	}
	
	public Score getScoreAvg(){
		Score score = scoreMapper.getScoreAvg();
		if(score!= null) {
			return score;
		}else{
			System.out.println("!!!!!!!!!!!!!!!!!!!NULL");
		}
		return null;
	}
	
	public int getNumbers(){
		return scoreMapper.getNumbers();
	}
	
	public int getTalentRank(int college_id){
		return scoreMapper.getTalentRank(college_id);
	}
	public int getPlatformRank(int college_id){
		return scoreMapper.getPlatformRank(college_id);
	}
	public int getInputRank(int college_id){
		return scoreMapper.getInputRank(college_id);
	}
	public int getPaperRank(int college_id){
		return scoreMapper.getPaperRank(college_id);
	}
	public int getPrizeRank(int college_id){
		return scoreMapper.getPrizeRank(college_id);
	}
	public int getPatentRank(int college_id){
		return scoreMapper.getPatentRank(college_id);
	}
	public int getTransformRank(int college_id){
		return scoreMapper.getTransformRank(college_id);
	}
	public int getBasicRank(int college_id){
		return scoreMapper.getBasicRank(college_id);
	}
	public int getOutputRank(int college_id){
		return scoreMapper.getOutputRank(college_id);
	}
	
	public Score getPaperScoreById(int college_id){
		Score score = scoreMapper.getPaperScoreById(college_id);
		if(score!= null) {
			return score;
		}else{
			System.out.println("!!!!!!!!!!!!!!!!!!!NULL");
		}
		return null;
	}
}
