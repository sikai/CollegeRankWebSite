package com.vess.model;
import java.util.List;

import com.vess.model.*;

public class AjaxInfo {
	
	   private Score score;
	   private Score score_paper;
	   private Score score_avg;
	   private List<Talent> paper_by_year;
	   private List<String> sub1_list;
	   private List<Subject> sub1_num_list;
	   private Talent talent_org;
	   private Talent talent_other;
	   private Talent talent_paper;
	   private Talent talent_patent;
	   
	    
	   public Score getScore() {
	       return score;
	   }
	 
	   public void setScore(Score score) {
	       this.score = score;
	   }
	   
	   public Score getScore_paper() {
	       return score_paper;
	   }
	 
	   public void setScore_paper(Score paper_score) {
	       this.score_paper = paper_score;
	   }
	   
	   public Score getScore_avg() {
	       return score_avg;
	   }
	 
	   public void setScore_avg(Score score_avg) {
	       this.score_avg = score_avg;
	   }
	   
	   public List<Talent> getPaper_by_year() {
	       return paper_by_year;
	   }
	 
	   public void setPaper_by_year(List<Talent> paper_by_year) {
	       this.paper_by_year = paper_by_year;
	   }
	   
	   public List<String> getSub1_list() {
	       return sub1_list;
	   }
	 
	   public void setSub1_list(List<String> sub1_list) {
	       this.sub1_list = sub1_list;
	   }
	   
	   public List<Subject> getSub1_num_list() {
	       return sub1_num_list;
	   }
	 
	   public void setSub1_num_list(List<Subject> sub1_num_list) {
	       this.sub1_num_list = sub1_num_list;
	   }
	   
	   public Talent getTalent_org() {
	       return talent_org;
	   }
	 
	   public void setTalent_org(Talent talent_org) {
	       this.talent_org = talent_org;
	   }
	   
	   public Talent getTalent_other() {
	       return talent_other;
	   }
	 
	   public void setTalent_other(Talent talent_other) {
	       this.talent_other = talent_other;
	   }
	   
	   public Talent getTalent_paperg() {
	       return talent_paper;
	   }
	 
	   public void setTalent_paper(Talent talent_paper) {
	       this.talent_paper = talent_paper;
	   }
	   
	   public Talent getTalent_patent() {
	       return talent_patent;
	   }
	 
	   public void setTalent_patent(Talent talent_patent) {
	       this.talent_patent = talent_patent;
	   }
	   
	 
	 
}
