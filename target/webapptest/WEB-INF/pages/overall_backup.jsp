<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
    body {
      padding: 2px;
    }
    .radar-chart .area {
      fill-opacity: 0.7;
    }
    .radar-chart.focus .area {
      fill-opacity: 0.3;
    }
    .radar-chart.focus .area.focused {
      fill-opacity: 0.9;
    }
    .area.本高校得分, .本高校得分 .circle {
      fill: #FFD700;
      stroke: none;
    }
    .area.平均高校得分, .平均高校得分 .circle {
      fill: #FF00D7;
      stroke: none;
    }
    </style>   

    <meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>三盟首页</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet"> 
     <!-- FONTAWESOME STYLES-->
    <link href="<c:url value="/resources/css/font-awesome.css" />" rel="stylesheet"> 
     <!-- MORRIS CHART STYLES-->
    <link href="<c:url value="/resources/js/morris/morris-0.4.3.min.css" />" rel="stylesheet">
        <!-- CUSTOM STYLES-->
    <link href="<c:url value="/resources/css/custom.css" />" rel="stylesheet"> 
     <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> 
    <link href="<c:url value="/resources/css/radar-chart.css" />" rel="stylesheet">

    <!-- JQUERY SCRIPTS -->
    <script src="<c:url value="/resources/js/jquery-1.10.2.js" />"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="<c:url value="/resources/js/jquery.metisMenu.js" />"></script>
     <!-- MORRIS CHART SCRIPTS -->
    <script src="<c:url value="/resources/js/morris/raphael-2.1.0.min.js" />"></script>
    <script src="<c:url value="/resources/js/morris/morris.js" />"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="<c:url value="/resources/js/custom.js" />"></script>

    <script src="<c:url value="http://d3js.org/d3.v3.js" />"></script>
    <script src="<c:url value="/resources/js/radar-chart.js" />" ></script>
    <script type="text/javascript">
        RadarChart.defaultConfig.color = function() {};
        RadarChart.defaultConfig.radius = 2;
        RadarChart.defaultConfig.w = 400;
        RadarChart.defaultConfig.h = 400;
    </script>
   
        

   

</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="fa fa-bar"></span>
                    <span class="fa fa-bar"></span>
                    <span class="fa fa-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">三盟科技</a> 
            </div>
             <div style="color: white;padding: 15px 50px 5px 50px;float: right;font-size: 16px;"> 欢迎您！${student.lastName}${student.firstName}, 来自${student.emailAddress}  &nbsp; <a href="#" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                <li class="text-center">
                    <img src="<c:url value="/resources/img/find_user.png" />" class="user-image img-responsive"/>
                    </li>
                
                    
                    <li>
                        <a  href="index.html"><i class="fa fa-dashboard fa-3x"></i> 首页</a>
                    </li>
                      <li>
                        <a class="active-menu"   href="ui.html"><i class="fa fa-desktop fa-3x"></i> 综合能力</a>
                    </li>
                    <li>
                        <a  href="tab-panel.html"><i class="fa fa-qrcode fa-3x"></i> 学科分类</a>
                    </li>
                           <li  >
                        <a  href="chart.html"><i class="fa fa-bar-chart-o fa-3x"></i> 历史表现</a>
                    </li>   
                      <li  >
                        <a  href="table.html"><i class="fa fa-table fa-3x"></i> Table Examples</a>
                    </li>
                    <li  >
                        <a  href="form.html"><i class="fa fa-edit fa-3x"></i> 联系我们 </a>
                    </li>               
                    
                                       
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>

                                </ul>
                               
                            </li>
                        </ul>
                      </li>  
                  <li  >
                        <a  href="blank.html"><i class="fa fa-square-o fa-3x"></i> Blank Page</a>
                    </li>   
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
            
                 <!-- /. ROW  -->

                 <div class="row">
                    
                      <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-body"> 
                                    <div class='col-md-12'>
                                    <h1 style="text-align: center" >${college.college_title}</h1> 
                                    <p style="text-align: center" style="color: gray">地区：${college.getCollegeCityLvl2()}<br>属性：${college.getCollegeType()}  ${college.getCollegeGrade()}</p>
                                    </div>                                   
                                </div>

                                <div class="panel-body"> 
                                    <div class="col-md-4 col-sm-4 col-xs-4">           
                                        <div class="panel panel-back noti-box" style="height: 150px">
                                            <span class="icon-box bg-color-green set-icon">
                                                <!--<i class="fa fa-bars"></i>-->
                                                <p class="main-text" style="text-align: center" style="color: red" >${score.overall_score}</p>
                                            </span>
                                            <div class="text-box" >
                                                <p class="main-text" style="text-align: center" >综合评分</p>
                                            </div>
                                         </div>
                                     </div>

                                     <div class="col-md-4 col-sm-4 col-xs-4">           
                                        <div class="panel panel-back noti-box" style="height: 150px">
                                            <span class="icon-box bg-color-green set-icon">
                                                 <p class="main-text" style="text-align: center" style="color: red" >${score.overall_rank}</p>
                                            </span>
                                            <div class="text-box" >
                                                <p class="main-text" style="text-align: center" >在全国所有高校中排名</p>
                                            </div>
                                         </div>
                                     </div>

                                     <div class="col-md-4 col-sm-4 col-xs-4">           
                                        <div class="panel panel-back noti-box" style="height: 150px">
                                            <span class="icon-box bg-color-green set-icon">
                                                <p class="main-text" style="text-align: center" style="color: red" >${score.city_rank}</p>
                                            </span>
                                            <div class="text-box" >
                                                <p class="main-text" style="text-align: center" >在${college.getCollegeCityLvl2()}地区的所有高校中排名</p>
                                                
                                            </div>
                                         </div>
                                     </div>
                                 </div>
                
                            </div>

                        </div>


                        <div class="col-md-6">
                            <div class="panel panel-default">  

                                <p style="text-align: center" style="color: gray"> 一级标准评分</p>
                                <div class="chart-container" width: 50%></div>
                                 
                                 <script type="text/javascript">
                                 var talent_score = ${score.talent_score};
                                 var platform_score = ${score.platform_score};
                                 var input_score = ${score.input_score};
                                 var paper_score = ${score.paper_score};
                                 var prize_score = ${score.prize_score};
                                 var patent_score = ${score.patent_score};
                                 var transform_score = ${score.transform_score};
                                 var basic_score = ${score.basic_score};
                                 var output_score = ${score.output_score};
                                 var overall_score = ${score.overall_score};
                                 var overall_avg = ${score_avg.overall_avg};
                                 var basic_avg = ${score_avg.basic_avg};
                                 var input_avg = ${score_avg.input_avg};
                                 var output_avg = ${score_avg.output_avg};
                                    var data = [
                                      {
                                        className: '本高校得分', // optional, can be used for styling
                                        axes: [
                                          {axis: "科研基础能力", value: basic_score, xOffset: 50},
                                          {axis: "科研投入能力", value: input_score, yOffset: 50},
                                          {axis: "科研产出能力", value: output_score, xOffset: 50, yOffset: -30},   
                                          {axis: "综合能力", value: overall_score, yOffset: 50}
                                        ]
                                      },
                                      {
                                        className: '平均高校得分', // optional, can be used for styling
                                        axes: [
                                          {axis: "科研基础能力", value: basic_avg, xOffset: 50},
                                          {axis: "科研投入能力", value: input_avg, yOffset: 50},
                                          {axis: "科研产出能力", value: output_avg},   
                                          {axis: "综合能力", value: overall_avg, yOffset: 50}
                                        ]
                                      }
                                    ];
                                
                                RadarChart.draw(".chart-container", data);
                                
                                </script>          
                                    

                                </div>
                            </div>

                            <div class="col-md-6">
                            <div class="panel panel-default">                                     
                                <p style="text-align: center" style="color: gray"> 二级标准评分</p>
                                <div class="chart-container2" width: 90%></div>
                                 
                                 <script type="text/javascript">
                                 var talent_score = ${score.talent_score};
                                 var platform_score = ${score.platform_score};
                                 var input_score = ${score.input_score};
                                 var paper_score = ${score.paper_score};
                                 var prize_score = ${score.prize_score};
                                 var patent_score = ${score.patent_score};
                                 var transform_score = ${score.transform_score};
                                 var basic_score = ${score.basic_score};
                                 var output_score = ${score.output_score};
                                 var overall_score = ${score.overall_score};

                                 var talent_avg = ${score_avg.talent_avg};
                                 var platform_avg = ${score_avg.platform_avg};
                                 var input_avg = ${score_avg.input_avg};
                                 var paper_avg = ${score_avg.paper_avg};
                                 var prize_avg = ${score_avg.prize_avg};
                                 var patent_avg = ${score_avg.patent_avg};
                                 var transform_avg = ${score_avg.transform_avg};
                   
                                    var data = [
                                      {
                                        className: '本高校得分', // optional, can be used for styling
                                        axes: [
                                          {axis: "人才资源", value: talent_score, xOffset: 50},
                                          {axis: "科研平台", value: platform_score, yOffset: 10},
                                          {axis: "科研创新投入能力", value: input_score, xOffset: 10, yOffset: -30},   
                                          {axis: "论文质量", value: paper_score, xOffset: -10},
                                          {axis: "获奖情况", value: prize_score, xOffset: 40},
                                          {axis: "知识产权", value: patent_score, xOffset: 5},
                                          {axis: "科技成果转化", value: transform_score, xOffset: 30 }                  
                                        ]
                                      },
                                      {
                                        className: '平均高校得分', // optional, can be used for styling
                                        axes: [
                                          {axis: "人才资源", value: talent_avg, xOffset: 50},
                                          {axis: "科研平台", value: platform_avg, yOffset: 10},
                                          {axis: "科研创新投入能力", value: input_avg, xOffset: 10, yOffset: -30},   
                                          {axis: "论文质量", value: paper_avg, xOffset: -10},
                                          {axis: "获奖情况", value: prize_avg, xOffset: 40},
                                          {axis: "知识产权", value: patent_avg, xOffset: 5},
                                          {axis: "科技成果转化", value: transform_avg, xOffset: 30 }                  
                                        ]
                                      }
                                    ];
                                
                                RadarChart.draw(".chart-container2", data);
                                
                                </script>          
                                    

                                </div>
                            </div>
                    </div>
                </div>


                    <!-- ======================================= -->


                <div class="col-md-12 col-sm-12">
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="col-md-3"></div>
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">科研基础能力</a>
                                </li>
                                <li class=""><a href="#profile" data-toggle="tab">科研投入能力</a>
                                </li>
                                <li class=""><a href="#messages" data-toggle="tab">科技产出能力</a>
                                </li>
                                
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="home">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <p style="text-align: center">人才资源 ： 96.2 分</p>
                                            <p style="text-align: center">您的学校超越了<span style="color: red">98.32%的高校</span></p>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <!--<img src="assets/img/network.png">  -->
                                                    <img src="<c:url value="/resources/img/network.png" />"/>

                                                </div>
                                            </div>
                                            <br><br>
                                            <div class="row">
                                                <div class="col-md-2">
                                               <!-- <img src="assets/img/scientist-with-lab-goggles-and-flask-with-chemical.png">-->
                                                <img src="<c:url value="/resources/img/scientist-with-lab-goggles-and-flask-with-chemical.png" />"/>
                                                </div>
                                                <div class="col-md-10 center-block uiborder2" >
                                                
                                                <button class="btn1 uiborder1" style="background-color:#cc9933;">两院院士：88</button>
                                                <button class="btn1 uiborder1" style="background-color:#396">长江学者：189</button>
                                                </div>
                                            </div>
                                        </div>   
                                    </div> 
                                    <hr>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <p style="text-align: center">科研平台： 96.2 分</p>
                                            <p style="text-align: center">您的学校超越了<span style="color: red">96.70%的高校</span></p>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <!--<img src="assets/img/student-hat.png"> -->
                                                    <img src="<c:url value="/resources/img/student-hat.png" />"/>
                                                </div>
                                                <div class="col-md-10 center-block uiborder2" >                                                
                                                <button class="btn1 uiborder1" style="background-color:#cc9999;">一级硕士点：48</button>
                                                <button class="btn1 uiborder1" style="background-color:#999999">一级博士点：58</button>
                                                </div>
                                            </div>
                                            <br><br>


                                            <div class="row">


                                                <div class="col-md-2">
                                                <!--<img src="assets/img/lab-microscope.png">-->
                                                <img src="<c:url value="/resources/img/lab-microscope.png" />"/>
                                                </div>
                                                <div class="col-md-10 center-block uiborder2" >
                                                
                                                <button class="btn1 uiborder1" style="background-color:#36a9ce;">省部级以上科研平台：113</button>
                                                
                                                </div>
                                            </div>
                                        </div> 

                                    </div>
                                </div>


                                <div class="tab-pane fade" id="profile">
                                    <div class="row">
                                        <div class="col-md-4 center-block">
                                            <!--<img src="assets/img/screen.png" class="imgCenter">-->
                                            <img src="<c:url value="/resources/img/screen.png" />" class="imgCenter"/>
                                            <p class="centerT">2015年科研课题总数</p>
                                            <p class="btn2">4576个</p>
                                            <p class="centerT">该项指标超越<span style="color: red">97.8%</span>的高校</p>

                                        </div>
                                        <div class="col-md-4">
                                            <!--<img src="assets/img/savings.png" class="imgCenter">-->
                                            <img src="<c:url value="/resources/img/savings.png" />" class="imgCenter"/>
                                            <p class="centerT">2015年R&D经费总额</p>
                                            <p class="btn2">2818119千元</p>
                                            <p class="centerT">该项指标超越<span style="color: red">98.2%</span>的高校</p>
                                        </div>
                                        <div class="col-md-4">
                                            <!--<img src="assets/img/groupcost.png" class="imgCenter">-->
                                            <img src="<c:url value="/resources/img/groupcost.png" />" class="imgCenter"/>
                                            <p class="centerT">2015年科研课题总数</p>
                                            <p class="btn2">210732元</p>
                                            <p class="centerT">该项指标超越<span style="color: red">96.5%</span>的高校</p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-6 center-block">
                                           
                                            <p class="centerT">近五年国家自然科学基金立项数</p>
                                            <p class="btn3">总计：3391</p>
                                            <p class="centerT colorT1">该项指标位列榜单：<span style="color: red">第3名</span></p>
                                            <p class="centerT colorT1">超越<span style="color: red">98.2%</span>的高校</p>

                                        </div>
                                        <div class="col-md-6">
                                            <p class="centerT">近五年国家社会科学基金立项数</p>
                                            <p class="btn3">总计：296</p>
                                            <p class="centerT colorT1">该项指标位列榜单：<span style="color: red">第1名</span></p>
                                            <p class="centerT colorT1">超越<span style="color: red">99.9%</span>的高校</p>
                                        </div>                                        
                                    </div>



                                </div>
                                <div class="tab-pane fade" id="messages">
                                    <div class="row">
                                        <div class="col-md-3" style="color: #5e5e5e">                                        
                                            <p class="centerT" style="font-size: 10px">成果质量：90.05分</p>
                                            <p class="centerT">您的学校超越了<span style="color: red">96.7%</span>的高校</p>

                                        </div>
                                        <div class="col-md-5">
                                            <!--<img src="assets/img/scholarship.png" class="imgCenter">-->
                                            <img src="<c:url value="/resources/img/scholarship.png" />" class="imgCenter"/>
                                            <p class="centerT" style="padding-top:0px">论文质量评分</p>
                                            <p class="btn3" style="background-color: #666">94.52</p>
                                            
                                            

                                        </div>
                                        <div class="col-md-4">
                                            <!--<img src="assets/img/u433.png" class="imgCenter" style="width:64px ">-->
                                            <img src="<c:url value="/resources/img/uuuu.png" />" class="imgCenter" style="width:64px "/>
                                            <p class="centerT">近五年国家三大奖获奖数</p>
                                            <p class="btn3" style="background-color: #003366">51项</p>
                                            
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <p>一级学科分类：</p>
                                        </div>
                                        <div class="col-md-6" >
                                            <p>单科论文表现得分：</p>
                                        </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3" style="color: #5e5e5e">                                        
                                            <p class="centerT" style="font-size: 10px">知识产权：92.20分</p>
                                            <p class="centerT">您的学校超越了<span style="color: red">96.70%</span>的高校</p>

                                        </div>
                                        <div class="col-md-5">
                                            <!--<img src="assets/img/diploma.png" class="imgCenter">-->
                                            <img src="<c:url value="/resources/img/diploma.png" />" class="imgCenter"/>
                                            <p class="centerT" style="padding-top:0px">近五年专利授权数量</p>
                                            <p class="btn3" style="background-color: #006666">5089件</p>
                                            

                                        </div>
                                        <div class="col-md-4">
                                            <p class="centerT">近十年专利申请数量</p>
                                            
                                        </div>
                                    </div>

                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3" style="color: #5e5e5e">                                        
                                            <p class="centerT" style="font-size: 10px">科研成果转化：92.55分</p>
                                            <p class="centerT">您的学校超越了<span style="color: red">96.70%</span>的高校</p>

                                        </div>
                                        <div class="col-md-5">
                                            <!--<img src="assets/img/business-agreement.png" class="imgCenter">-->
                                            <img src="<c:url value="/resources/img/business-agreement.png" />" class="imgCenter"/>
                                            <p class="centerT" style="padding-top:0px">2015年签订合同数</p>
                                            <p class="btn3" style="background-color: #660033">40项</p>
                                            <p class="centerT">该项指标位列榜单：<span style="color: red">第3名</span><br>超越<span style="color: red">98.2%</span>的高校</p>
                                            

                                        </div>
                                        <div class="col-md-4">
                                            <!--<img src="assets/img/contract.png" class="imgCenter">-->
                                            <img src="<c:url value="/resources/img/contract.png" />" class="imgCenter"/>
                                            <p class="centerT">2015年技术转让收入</p>
                                            <p class="btn3" style="background-color: #660033">31652千元</p>
                                            <p class="centerT">该项指标位列榜单：<span style="color: red">第1名</span><br>超越<span style="color: red">99.9%</span>的高校</p>
                                            
                                        </div>
                                    </div>





                                </div>

                                





                                
                            </div>
                        </div>
                    </div>
                </div>
                    <!-- ======================================= -->
              

                <br><br>


    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <script>
            var sub1List_pre = "${sub1}";
            sub1List_pre = sub1List_pre.substring(1,sub1List_pre.length-1);
            var sub1List = sub1List_pre.split(",");
          
      

            $.each(sub1List, function(key, value) {  
                 $('#mylocal')
                     .append($("<option></option>")
                                .attr("value",key)
                                .text(value)); 
            });


            var tableName = "${table}";

        $("#mylocal").change(function(){
            var parentId = $("#mylocal").val();
            if(parentId == -1)
                return false;

            var subText = $("#mylocal option:selected").text().trim();
             

            $.ajax({
                url  : "polices", 
                type : 'GET',
                data : {
                    'tableName' : tableName,
                    'sub1' : subText
                },
                dataType : 'json',
                error:function()
                {
                    alert('Error loading data!');
                },
                success:function(msg)
                {
                    $("#mylocal2").empty(); 
                    $('#mylocal2')
                     .append($("<option></option>")
                                .attr("value",-1)
                                .text("全部分类"));  
                    $.each(eval(msg), function(i, item) {  
                        console.log(item);
                        if(item == "null" || item == null) item = "其他";
                        $("<option value='" + i + "'>" + item+ "</option>").appendTo($("#mylocal2"));
                    });
                }
            });
            
        });
        </script>
    
    
    
   
</body>
</html>
