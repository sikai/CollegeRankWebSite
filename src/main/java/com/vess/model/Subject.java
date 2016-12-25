package com.vess.model;


public class Subject {
	
	private int id;
	private String sub1;
	private String sub2;
	private int sub1_num;
	private int sub2_num;
	private int sub2_ref;
	
	
	public int getId(){
		return id;
	}
	
	public void setId(int id){
		this.id = id;
	}
		
	public String getSub1() {
		return sub1;
	}
	
	public void setSub1(String s){
		this.sub1 = s;
	}
	
	public String getSub2() {
		return sub2;
	}
	
	public void setSub2(String s){
		this.sub2 = s;
	}
	
	public int getSub1_num(){
		return sub1_num;
	}
	
	public void setSub1_num(int id){
		this.sub1_num = id;
	}
	
	public int getSub2_num(){
		return sub2_num;
	}
	
	public void setSub2_num(int id){
		this.sub2_num = id;
	}
	
	public int getSub2_ref(){
		return sub2_ref;
	}
	
	public void setSub2_ref(int id){
		this.sub2_ref = id;
	}
}
