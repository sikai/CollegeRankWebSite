package com.vess.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vess.mapper.CollegePaperAndPatentScoreMapper;
import com.vess.model.CollegePaperAndPatentScore;
import com.vess.model.Student;

@Service("collegePaperAndPatentScoreService")
public class CollegePaperAndPatentScoreServiceImpl implements CollegePaperAndPatentScoreService {

	@Autowired
	private CollegePaperAndPatentScoreMapper collegePaperAndPatentScoreMapper;
	
	@Transactional
	public void insertCollegePaperAndPatentScore(CollegePaperAndPatentScore collegePaperAndPatentScore) {
		collegePaperAndPatentScoreMapper.insertCollegePaperAndPatentScore(collegePaperAndPatentScore);
	}
	
	public CollegePaperAndPatentScore  getCollegePaperAndPatentScore(int college_id){
		System.out.println("!!!!!!!!!!!!!!!!!!!HERE");
		CollegePaperAndPatentScore clg_PPScore = collegePaperAndPatentScoreMapper.getCollegePaperAndPatentScoreById(college_id);
		
		if(clg_PPScore != null) {
			return clg_PPScore;
		}else{
			System.out.println("!!!!!!!!!!!!!!!!!!!NULL");
		}
		return null;
	}

}
