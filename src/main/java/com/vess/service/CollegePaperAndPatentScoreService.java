package com.vess.service;

import com.vess.model.CollegePaperAndPatentScore;
import com.vess.model.Student;

public interface CollegePaperAndPatentScoreService {
	void insertCollegePaperAndPatentScore(CollegePaperAndPatentScore collegePaperAndPatentScore);
	CollegePaperAndPatentScore getCollegePaperAndPatentScore(int college_id);
	
}