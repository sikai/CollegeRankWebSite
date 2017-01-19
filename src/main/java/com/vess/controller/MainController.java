package com.vess.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.vess.model.*;
import com.vess.service.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
 
@Controller
public class MainController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private CollegePaperAndPatentScoreService collegePaperAndPatentScoreService;
	
	@Autowired
	private CollegeService collegeService; 
	
	@Autowired
	private SubjectService subjectService;
	
	@Autowired
	private DBinfoService dbinfoService;
	
	@Autowired
	private ScoreService scoreService;
	
	@Autowired
	private TalentService talentService;
											  
  
    @RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
    public String welcomePage(Model model) {
        model.addAttribute("title", "Welcome");
        model.addAttribute("message", "欢迎来到三盟科技学术科研能力对比系统，请登录");
        return "welcomePage";
    }
 
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(Model model) {
        return "adminPage";
    }
 
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(Model model ) {
         
        return "loginPage";
    }
 
    @RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
    public String logoutSuccessfulPage(Model model) {
        model.addAttribute("title", "Logout");
        return "logoutSuccessfulPage";
    }
 
    @RequestMapping(value = "/userInfo", method = RequestMethod.GET)
    public String userInfo(Model model, Principal principal) {
 
        // After user login successfully.
        String userName = principal.getName();
 
        System.out.println("User Name: "+ userName);
        model.addAttribute("username", userName);
        
        // Add test info
        Student student = studentService.getStudent(userName);
        model.addAttribute("student", student);
        
        // Add paper and patent score info
        //int college_id = 32;
        //CollegePaperAndPatentScore PPScore = collegePaperAndPatentScoreService.getCollegePaperAndPatentScore(college_id);
        //model.addAttribute("PaperPatentScore",PPScore);
        
        //return "userInfoPage";
        return "dashb";
    }
    
    @RequestMapping(value = "/overall", method = RequestMethod.GET)
    public String overall(Model model, Principal principal) {
    	String userName = principal.getName();
    	Student student = studentService.getStudent(userName);
        model.addAttribute("student", student);
        int id =  (int) (long) student.getCollegeId();
        
        //Get college information for the given college
        System.out.println("collegeID: "+ id);
        College college = collegeService.getCollege(id);
        model.addAttribute("college", college);
        
        //Get DBinfo information for the given college
        DBinfo db = dbinfoService.getDBinfoById(id);
        String tablename = db.getDbName();
        String paper_score_name = db.getPaperScoreName();
        String patent_name = db.getDbPatentName();
        System.out.println("paper table name: "+ tablename);
        
        // Get the subject information for the selected college
        List<String> list = subjectService.getSubject1(tablename);
        model.addAttribute("sub1",list);
        model.addAttribute("table",tablename);
        List<Subject> sub1_num_list = subjectService.getSub1Num(tablename);
        String json = new Gson().toJson(sub1_num_list);
        model.addAttribute("sub1_num_json",json);
        
        //Get score information for the college
        Score score = scoreService.getScoreById(id); 
        
        //Get college rank information
        int overall_rank = scoreService.getScoreOverallRank(id);
        int city_rank = scoreService.getScoreCityRank(id);
        score.setOverall_rank(overall_rank);
        score.setCity_rank(city_rank);
        score.setNumbers(scoreService.getNumbers());
        score.setTalent_rank(scoreService.getTalentRank(id));
        score.setPlatform_rank(scoreService.getPlatformRank(id));
        score.setInput_rank(scoreService.getInputRank(id));
        score.setPaper_rank(scoreService.getPaperRank(id));
        score.setPrize_rank(scoreService.getPrizeRank(id));
        score.setPatent_rank(scoreService.getPatentRank(id));
        score.setTransform_rank(scoreService.getTransformRank(id));
        score.setBasic_rank(scoreService.getBasicRank(id));
        score.setOutput_rank(scoreService.getOutputRank(id));        
        model.addAttribute("score",score);
        
        //lvl3 score
        Score score_paper = scoreService.getPaperScoreById(id);
        model.addAttribute("paper_score",score_paper);
        
        //Get score average information
        Score score_avg = scoreService.getScoreAvg();
        model.addAttribute("score_avg",score_avg);
        
        //Get talent information
        Talent talent_org = talentService.getTalentById(id);
        Talent talent_other = talentService.getOtherById(id);
        Talent talent_paper = talentService.getPaperByName(paper_score_name);
        Talent talent_patent = talentService.getPatentByName(patent_name);
        model.addAttribute("talent", talent_org);
        model.addAttribute("talent_other", talent_other);
        model.addAttribute("talent_paper", talent_paper);
        model.addAttribute("talent_patent", talent_patent);
        
        //Get talent information by year
        List<Talent> talent_list_year = talentService.getPaperByYear(tablename, paper_score_name);
        String talent_list_year_json = new Gson().toJson(talent_list_year);
        System.out.println("wowo"+talent_list_year_json);
        model.addAttribute("paper_year_json",talent_list_year_json);
       
        return "overall";
    }
    
    @RequestMapping(value = "/compare", method = RequestMethod.GET)
    public String compare(Model model, Principal principal) {
    	String userName = principal.getName();
    	Student student = studentService.getStudent(userName);
        model.addAttribute("student", student);
        int id =  (int) (long) student.getCollegeId();
        
        //Get college information for the given college
        System.out.println("collegeID: "+ id);
        College college = collegeService.getCollege(id);
        model.addAttribute("college", college);
        List<College> college_city1 = collegeService.getCity1();
        String json_city1 = new Gson().toJson(college_city1);
        model.addAttribute("college_city1",json_city1);
        
        //Get DBinfo information for the given college
        DBinfo db = dbinfoService.getDBinfoById(id);
        String tablename = db.getDbName();
        String paper_score_name = db.getPaperScoreName();
        String patent_name = db.getDbPatentName();
        System.out.println("paper table name: "+ tablename);
        
        // Get the subject information for the selected college
        List<String> list = subjectService.getSubject1(tablename);
        model.addAttribute("sub1",list);
        model.addAttribute("table",tablename);
        List<Subject> sub1_num_list = subjectService.getSub1Num(tablename);
        String json = new Gson().toJson(sub1_num_list);
        model.addAttribute("sub1_num_json",json);
        
        //Get score information for the college
        Score score = scoreService.getScoreById(id); 
        model.addAttribute("score",score);
        //Get college rank information
        int overall_rank = scoreService.getScoreOverallRank(id);
        int city_rank = scoreService.getScoreCityRank(id);
        score.setOverall_rank(overall_rank);
        score.setCity_rank(city_rank);
        score.setNumbers(scoreService.getNumbers());
        score.setTalent_rank(scoreService.getTalentRank(id));
        score.setPlatform_rank(scoreService.getPlatformRank(id));
        score.setInput_rank(scoreService.getInputRank(id));
        score.setPaper_rank(scoreService.getPaperRank(id));
        score.setPrize_rank(scoreService.getPrizeRank(id));
        score.setPatent_rank(scoreService.getPatentRank(id));
        score.setTransform_rank(scoreService.getTransformRank(id));
        score.setBasic_rank(scoreService.getBasicRank(id));
        score.setOutput_rank(scoreService.getOutputRank(id));        
        model.addAttribute("score",score);
        
        
        
        //lvl3 score
        Score score_paper = scoreService.getPaperScoreById(id);
        model.addAttribute("paper_score",score_paper);
        
        //Get score average information
        Score score_avg = scoreService.getScoreAvg();
        model.addAttribute("score_avg",score_avg);
        
        //Get talent information
        Talent talent_org = talentService.getTalentById(id);
        Talent talent_other = talentService.getOtherById(id);
        Talent talent_paper = talentService.getPaperByName(paper_score_name);
        Talent talent_patent = talentService.getPatentByName(patent_name);
        model.addAttribute("talent", talent_org);
        model.addAttribute("talent_other", talent_other);
        model.addAttribute("talent_paper", talent_paper);
        model.addAttribute("talent_patent", talent_patent);
        
        //Get talent information by year
        List<Talent> talent_list_year = talentService.getPaperByYear(tablename, paper_score_name);
        String talent_list_year_json = new Gson().toJson(talent_list_year);
        System.out.println("wowo"+talent_list_year_json);
        model.addAttribute("paper_year_json",talent_list_year_json);
       
        return "compare";
    }
 
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String accessDenied(Model model, Principal principal) {
         
        if (principal != null) {
            model.addAttribute("message", "Hi " + principal.getName()
                    + "<br> You do not have permission to access this page!");
        } else {
            model.addAttribute("msg",
                    "You do not have permission to access this page!");
        }
        return "403Page";
    }
    
    
    @RequestMapping(value="/polices",produces = { "application/json;charset=UTF-8" })  
    @ResponseBody      	
    public String  findAllpolices(@RequestParam(value="tableName",required=false)String tableName, 
    		                      @RequestParam(value="sub1",required=false)String sub1){  
        JSONArray array =new JSONArray();  
         List<String> sub2List=this.subjectService.getSubject2(tableName,sub1);  
         for(String sub2:sub2List){                
             array.add(sub2);  
         }  
        return array.toString();  
    } 
    
    @RequestMapping(value="/subject",produces = { "application/json;charset=UTF-8" })  
    @ResponseBody      	
    public String  findAllpolicess(@RequestParam(value="tableName",required=false)String tableName, 
    		                      @RequestParam(value="sub1",required=false)String sub1){ 
    	List<Subject> sub1_num_list = subjectService.getSubject2BySub1(tableName,sub1);
        String json = new Gson().toJson(sub1_num_list);
        return json;  
    } 
    
    // For Ajax to return all city2 names by city1 name
    @RequestMapping(value="/city1",produces = { "application/json;charset=UTF-8" })  
    @ResponseBody      	
    public String  getCity2ByCity1(@RequestParam(value="city1",required=false)String city1){ 
    	List<College> sub2_list = collegeService.getCity2(city1);
        String json = new Gson().toJson(sub2_list);
        return json;  
    } 
    
    // For Ajax to return all college names by city2 name
    @RequestMapping(value="/city2",produces = { "application/json;charset=UTF-8" })  
    @ResponseBody      	
    public String  getCollegeByCity2(@RequestParam(value="city2",required=false)String city2){ 
    	List<College> sub2_list = collegeService.getCollegeByCity2(city2);
        String json = new Gson().toJson(sub2_list);
        return json;  
    } 
    
    // For Ajax to return all college names by city1 name
    @RequestMapping(value="/city1_all",produces = { "application/json;charset=UTF-8" })  
    @ResponseBody      	
    public String  getCollegeByCity1(@RequestParam(value="city1",required=false)String city1){ 
    	List<College> sub2_list = collegeService.getCollegeByCity1(city1);
        String json = new Gson().toJson(sub2_list);
        return json;  
    } 
    
    // For Ajax to return all college by college name from user input
    @RequestMapping(value="/college_input",produces = { "application/json;charset=UTF-8" })  
    @ResponseBody      	
    public String  getCollegeByUserinput(@RequestParam(value="college_name",required=false)String college_name){ 
    	College sub2_list = collegeService.getCollegeByUserInput(college_name);
        String json = new Gson().toJson(sub2_list);
        return json;  
    } 
    
 // For Ajax to return all other information
    @RequestMapping(value="/all",produces = { "application/json;charset=UTF-8" })  
    @ResponseBody      	
    public String  getAll(@RequestParam(value="college_name",required=false)String college_name){ 
    	College college = collegeService.getCollegeByUserInput(college_name);
    	int id = college.getCollegeId();
    		System.out.println(id);
		//Get DBinfo information for the given college
        DBinfo db = dbinfoService.getDBinfoById(id);
        String tablename = db.getDbName();
        String paper_score_name = db.getPaperScoreName();
        String patent_name = db.getDbPatentName();
        System.out.println("paper table name: "+ tablename);
        
        AjaxInfo ajax = new AjaxInfo();
        
        // Get the subject information for the selected college
        List<String> sub1_list = subjectService.getSubject1(tablename);
        ajax.setSub1_list(sub1_list);
        //model.addAttribute("table",tablename);
        List<Subject> sub1_num_list = subjectService.getSub1Num(tablename);
        ajax.setSub1_num_list(sub1_num_list);
        
       //Get score information for the college
        Score score = scoreService.getScoreById(id); 
        
        //Get college rank information
        int overall_rank = scoreService.getScoreOverallRank(id);
        int city_rank = scoreService.getScoreCityRank(id);
        score.setOverall_rank(overall_rank);
        score.setCity_rank(city_rank);
        score.setNumbers(scoreService.getNumbers());
        score.setTalent_rank(scoreService.getTalentRank(id));
        score.setPlatform_rank(scoreService.getPlatformRank(id));
        score.setInput_rank(scoreService.getInputRank(id));
        score.setPaper_rank(scoreService.getPaperRank(id));
        score.setPrize_rank(scoreService.getPrizeRank(id));
        score.setPatent_rank(scoreService.getPatentRank(id));
        score.setTransform_rank(scoreService.getTransformRank(id));
        score.setBasic_rank(scoreService.getBasicRank(id));
        score.setOutput_rank(scoreService.getOutputRank(id));           
        ajax.setScore(score);
      
        //lvl3 score
        Score score_paper = scoreService.getPaperScoreById(id);
        ajax.setScore_paper(score_paper);
        
        //Get score average information
        Score score_avg = scoreService.getScoreAvg();
        ajax.setScore_avg(score_avg);
       
        //Get talent information
        Talent talent_org = talentService.getTalentById(id);
        Talent talent_other = talentService.getOtherById(id);
        Talent talent_paper = talentService.getPaperByName(paper_score_name);
        Talent talent_patent = talentService.getPatentByName(patent_name);
        ajax.setTalent_org(talent_org);
        ajax.setTalent_other(talent_other);
        ajax.setTalent_paper(talent_paper);
        ajax.setTalent_patent(talent_patent);
       
        //Get talent information by year
        List<Talent> talent_list_year = talentService.getPaperByYear(tablename, paper_score_name);
        //String talent_list_year_json = new Gson().toJson(talent_list_year);
    	ajax.setPaper_by_year(talent_list_year);
        
        String json = new Gson().toJson(ajax);
        return json;  
    } 
}
