package com.vess.service;
import com.vess.model.Score;
public interface ScoreService {
	public Score getScoreById(int college_id);
	public int getScoreOverallRank(int college_id);
	public int getScoreCityRank(int college_id);
	public Score getScoreAvg();
	public int getNumbers();
	public int getTalentRank(int college_id);
	public int getPlatformRank(int college_id);
	public int getInputRank(int college_id);
	public int getPaperRank(int college_id);
	public int getPrizeRank(int college_id);
	public int getPatentRank(int college_id);
	public int getTransformRank(int college_id);
	public int getBasicRank(int college_id);
	public int getOutputRank(int college_id);
	public Score getPaperScoreById(int college_id);
}
