package com.vess.model;

import java.util.Date;

public class CollegePaperAndPatentScore {
	private int college_id;
	private Date create_date;
	private double ref_score;
	private double funds_score;
	private double record_score;
	private double source_score;
	private double paper_score;
	private double patent_score;

	public int getCollegeId() {
		return college_id;
	}
	
	public void setCollegeId(int college_id){
		this.college_id = college_id;
	}
	
	public Date getCreateDate() {
		return create_date;
	}
	
	public void setCreateDate(Date create_date){
		this.create_date = create_date;
	}
		
	public double getRefScore() {
		return ref_score;
	}
	
	public void setRefScore(double ref_score){
		this.ref_score = ref_score;
	}
	
	public double getFundsScore() {
		return funds_score;
	}
	
	public void setFundsScore(double funds_score){
		this.funds_score = funds_score;
	}
	public double getRecordfScore() {
		return record_score;
	}
	
	public void setRecordScore(double record_score){
		this.record_score = record_score;
	}
	public double getSourceScore() {
		return source_score;
	}
	
	public void setSourceScore(double source_score){
		this.source_score = source_score;
	}
	public double getPaperScore() {
		return paper_score;
	}
	
	public void setPaperScore(double paper_score){
		this.paper_score = paper_score;
	}
	public double getPatentScore() {
		return patent_score;
	}
	
	public void setPatentScore(double patent_score){
		this.patent_score = patent_score;
	}
}
