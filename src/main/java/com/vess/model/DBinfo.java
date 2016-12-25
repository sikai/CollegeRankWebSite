package com.vess.model;

public class DBinfo {
	private int college_id;
	private String db_name;
	private String db_patent_name;
	private String paper_score_name;
	
	public int getCollegeId(){
		return college_id;
	}
	
	public void setCollegeId(int id){
		this.college_id = id;
	}
		
	public String getDbName() {
		return db_name;
	}
	
	public void setDbName(String s){
		this.db_name = s;
	}
	
	public String getDbPatentName() {
		return db_patent_name;
	}
	
	public void setDbPatentName(String s){
		this.db_patent_name = s;
	}
	
	public String getPaperScoreName() {
		return paper_score_name;
	}
	
	public void setPaperScoreName(String s){
		this.paper_score_name = s;
	}
}
