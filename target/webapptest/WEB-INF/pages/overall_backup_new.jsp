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

    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
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

                                <p style="text-align: center" style="color: gray"> <b>一级标准评分</b></p>
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
                                <p style="text-align: center" style="color: gray"> <b>二级标准评分</b></p>
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

                    

                    <!-- /. ROW  -->

                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                        <div class="panel panel-default">
                            
                            <div class="panel-body">
                                <div class="col-md-3"></div>
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#home" data-toggle="tab">科研产出能力</a>
                                    </li>
                                    <li class=""><a href="#profile" data-toggle="tab">科研投入能力</a>
                                    </li>
                                    <li class=""><a href="#messages" data-toggle="tab">科技基础能力</a>
                                    </li>
                                    
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="home">
                                        <div class="row">
                                          <div class="col-md-6">
                                              <img src="<c:url value="/resources/img/scholarship.png" />" class="imgCenter"/>
                                              <p style="text-align: center">成果质量： ${score.paper_score} 分</p>
                                              <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.paper_rank}</span></p>
                                              <p style="text-align: center">您的学校超越了<span  id="paper_pctg" style="color: red">98.32%的高校</span></p>
                                              <script type="text/javascript">
                                               var a =  ${score.numbers};
                                               var b =  ${score.paper_rank};
                                               var c = (1-b/a) * 100; 
                                               var d = c.toFixed(2);   
                                               console.log(d);
                                               $("#paper_pctg").text(d+"%的高校");
                                              </script>
                                          </div>

                                          <div class="col-md-6">
                                              <p style="text-align: center" style="color: gray"> <b>论文及专利单项评分</b></p>
                                              <div class="chart-container3" width: 90%></div>
                                               
                                               <script type="text/javascript">
                                               var ref_score = ${paper_score.ref_score};
                                               var sci_score = ${paper_score.sci_score};
                                               var pku_score = ${paper_score.pku_score};
                                               var patent_score = ${score.patent_score};
                                               

                                                  var data = [
                                                    {
                                                      className: '论文质量', // optional, can be used for styling
                                                      axes: [
                                                        {axis: "被引用次数", value: talent_score, xOffset: 50},
                                                        {axis: "被SCI/EI收录", value: platform_score, yOffset: 10},
                                                        {axis: "被ISTIC等收录", value: input_score, xOffset: 10, yOffset: -30},   
                                                        {axis: "专利情况", value: paper_score, xOffset: -10}              
                                                      ]
                                                    }
                                                  ];
                                              
                                              RadarChart.draw(".chart-container3", data);
                                              
                                              </script>    
                                          </div>


                                      </div>

                                      <!-- 折线图-->
                                      <div class="row">
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        历年论文总数及被SCI/EI/CSSCI/ISTIC/PKU收录数量
                                                    </div>
                                                    <div class="panel-body">
                                                        <!--<div id="morris-donut-chart"></div>-->

                                                        <div id="line_paper"></div>
                                            
                                                            <script>

                                                            var data = eval('('+'${paper_year_json}'+')'); 
                                                            var data_new = [];
                                                            for(var i=0;i<data.length;i++){
                                                                var obj = data[i];
                                                                data_new.push({
                                                                    "year":obj.year,
                                                                    "paper_num":obj.paper_num,
                                                                    "ref_rate":obj.ref_rate,
                                                                    "sci_num":obj.sci_num,
                                                                    "ei_num":obj.ei_num,
                                                                    "istic_num":obj.istic_num,
                                                                    "cssci_num":obj.cssci_num,
                                                                    "pku_num":obj.pku_num
                                                                });
                                                            }

                                                            Morris.Line({
                                                              element: 'line_paper',
                                                              data: data_new,
                                                              xkey: 'year',
                                                              xkey: 'year',
                                                              ykeys: ['paper_num', 'sci_num', 'ei_num', 'istic_num', 'cssci_num', 'pku_num'],
                                                              labels: ['论文总数', 'SCI收录', 'EI收录', 'ISTIC收录', 'CSSCI收录', 'PKU收录'],
                                                              xLabelAngle: 45
                                                            });
                                                        </script>
                                                        
                                                    </div>
                                          
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12 col-xs-12">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        历年论被引用数量
                                                    </div>
                                                    <div class="panel-body">
                                                        <!--<div id="morris-donut-chart"></div>-->

                                                        <div id="line_paper_sci"></div>
                                            
                                                            <script>

                                                            var data = eval('('+'${paper_year_json}'+')'); 
                                                            var data_new = [];
                                                            for(var i=0;i<data.length;i++){
                                                                var obj = data[i];
                                                                data_new.push({
                                                                    "year":obj.year,
                                                                    "paper_num":obj.paper_num,
                                                                    "ref_rate":obj.ref_rate,
                                                                });
                                                            }

                                                            Morris.Line({
                                                              element: 'line_paper_sci',
                                                              data: data_new,
                                                              xkey: 'year',
                                                              ykeys: ['ref_rate'],
                                                              labels: ['被引用数'],
                                                              xLabelAngle: 45   
                                                            });
                                                        </script>
                                                        
                                                    </div>
                                          
                                                </div>
                                            </div>
                                      </div>
                                      <hr>

                                      <!-- hard part -->
                                      <div class="row">
                                          <p>一级学科分类：</p>
                                          <select name="local" id="mylocal" style="width:400px;" >
                                              <option value="-1" selected="selected" >全部分类</option>
                                          </select><br />
                                          
                                          

                                      </div>
                                      <hr>

                                      <div class="row">
                                            <div class="col-md-6 col-sm-12 col-xs-12">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        各学科论文比例
                                                    </div>
                                                    <div class="panel-body">
                                                        <!--<div id="morris-donut-chart"></div>-->

                                                        <div id="donut_paper_sub"></div>
                                            
                                                            <script>

                                                            var data = eval('('+'${sub1_num_json}'+')'); 
                                                           
                                                            var sum = 0;
                                                            for(var i=0;i<data.length;i++){
                                                                sum+=data[i].sub1_num;
                                                            }
                                                            var data_new = [];
                                                            for(var i=0;i<data.length;i++){
                                                                var obj = data[i];
                                                                var sub1_name = obj.sub1;
                                                                var sub1_num = obj.sub1_num/sum*100;    
                                                                data_new.push({
                                                                    "label":sub1_name,
                                                                    "value":sub1_num.toFixed(2)
                                                                });
                                                            }

                                                            Morris.Donut({
                                                              element: 'donut_paper_sub',
                                                              data: data_new,
                                                              backgroundColor: '#ccc',
                                                              labelColor: '#060',
                                                              colors: [
                                                                '#0BA462',
                                                                '#4ECDC4',
                                                                '#A2DED0',
                                                                '#87D37C',
                                                                '#90C695',
                                                                '#26A65B',
                                                                '#03C9A9',
                                                                '#68C3A3',
                                                                '#65C6BB',
                                                                '#1BBC9B',
                                                                '#1BA39C',
                                                                '#66CC99',
                                                                '#36D7B7',
                                                                '#C8F7C5',
                                                                '#86E2D5',
                                                                '#2ECC71',
                                                                '#16A085',
                                                                '#3FC380'
                                                              ]   
                                                            });
                                                        </script>
                                                        
                                                    </div>
                                          
                                                </div>
                                            </div>

                                            <!-- 柱状图 论文各学科比例 -->
                                            <div class="col-md-6 col-sm-12 col-xs-12">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        各学科论文数量
                                                    </div>
                                                    <div class="panel-body">
                                                        <!--<div id="morris-donut-chart"></div>-->

                                                        <div id="bar_paper_sub"></div>

                                                            <script>
                                                            var data = eval('('+'${sub1_num_json}'+')'); 
                                                           
                                                            var sum = 0;
                                                            for(var i=0;i<data.length;i++){
                                                                sum+=data[i].sub1_num;
                                                            }
                        
                                                            var data_bar = [];
                                                            for(var i=0;i<data.length;i++){
                                                                var obj = data[i];
                                                                var sub1_name = obj.sub1;
                                                                var sub1_num = obj.sub1_num; 
                                                                data_bar.push({
                                                                    "x":sub1_name,
                                                                    "y":sub1_num
                                                                });         
                                                            }
                                                            

                                                            Morris.Bar({
                                                              element: 'bar_paper_sub',
                                                              data: data_bar,
                                                              xkey: 'x',
                                                              ykeys: 'y',
                                                              labels: ['论文数量']
                                                            });
                                                            </script>
                                                    </div>
                                          
                                                </div>
                                            </div>
                                        </div>

                                      <hr>

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


                                    <div class="tab-pane fade" id="profile">
                                        <div class="row">
                                            <div class="col-md-4 center-block">
                                                <!--<img src="assets/img/screen.png" class="imgCenter">-->
                                                <img src="<c:url value="/resources/img/screen.png" />" class="imgCenter"/>
                                                <p class="centerT">2015年科研课题总数</p>
                                                <p class="btn2" id ="projnum">${talent_other.projectNum_score}</p>
                                                     <script type="text/javascript">
                                                     var a =  ${talent_other.projectNum_score}; 
                                                     var d = a.toFixed(0);   
                                                    
                                                     $("#projnum").text(d+"个");
                                                    </script>
                                                <!--<p class="centerT">该项指标超越<span style="color: red">97.8%</span>的高校</p>-->

                                            </div>
                                            <div class="col-md-4">
                                                <!--<img src="assets/img/savings.png" class="imgCenter">-->
                                                <img src="<c:url value="/resources/img/savings.png" />" class="imgCenter"/>
                                                <p class="centerT">2015年R&D经费总额</p>
                                                <p class="btn2">${talent_other.rdMoney_score}千元</p>
                                                <!--<p class="centerT">该项指标超越<span style="color: red">98.2%</span>的高校</p>-->
                                            </div>
                                            <div class="col-md-4">
                                                <!--<img src="assets/img/groupcost.png" class="imgCenter">-->
                                                <img src="<c:url value="/resources/img/groupcost.png" />" class="imgCenter"/>
                                                <p class="centerT">2015年人均R&D经费</p>
                                                <p class="btn2" id = "rdpp">${talent_other.rdMoneyPp_score}千元</p>
                                                    <script type="text/javascript">
                                                     var a =  ${talent_other.rdMoneyPp_score}; 
                                                     var d = a.toFixed(1);   
                                                     
                                                     $("#rdpp").text(d+"千元");
                                                    </script>
                                                <!--<p class="centerT">该项指标超越<span style="color: red">96.5%</span>的高校</p>-->
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-6 center-block">
                                               
                                                <p class="centerT">近五年国家自然科学基金立项数</p>
                                                <p class="btn3">总计：${talent.nature_prize_num}</p>
                                                <!--<p class="centerT colorT1">该项指标位列榜单：<span style="color: red">第3名</span></p>->
                                                <!--<p class="centerT colorT1">超越<span style="color: red">98.2%</span>的高校</p>-->

                                            </div>
                                            <div class="col-md-6">
                                                <p class="centerT">近五年国家社会科学基金立项数</p>
                                                <p class="btn3">总计：${talent.social_prize_num}</p>
                                                <!--<p class="centerT colorT1">该项指标位列榜单：<span style="color: red">第1名</span></p>->
                                                <!--<p class="centerT colorT1">超越<span style="color: red">99.9%</span>的高校</p>-->
                                            </div>                                        
                                        </div>



                                    </div>
                                    <div class="tab-pane fade" id="messages">
                                      <div class="row">
                                            <div class="col-md-4">
                                                <p style="text-align: center">人才资源 ：${score.talent_score}  分</p>
                                                <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.talent_rank}</span></p>
                                                <p style="text-align: center">您的学校超越了<span  id="talent_pctg" style="color: red">98.32%的高校</span></p>
                                                    <script type="text/javascript">
                                                     var a =  ${score.numbers};
                                                     var b =  ${score.talent_rank};
                                                     var c = (1-b/a) * 100; 
                                                     var d = c.toFixed(2);   
                                                     
                                                     $("#talent_pctg").text(d+"%的高校");
                                                    </script>

                                                
                                            </div>
                                            <div class="col-md-8">
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <!--<img src="assets/img/network.png">  -->
                                                        <img src="<c:url value="/resources/img/network.png" />"/>

                                                    </div>
                                                    <div class="col-md-10 center-block uiborder2" >
                                                    
                                                    <button class="btn1 uiborder1" id="snrpctg" style="background-color:#465300;">正高职科研人员比例：${talent.yuanshi_num} </button>
                                                    <button class="btn1 uiborder1" id="rdpctg" style="background-color:#FF00D7">R&D全时人员比例：${talent.changjiang_num}</button>
                                                        <script type="text/javascript">   
                                                        var a = ${talent_other.snrPctg_score}*100;
                                                        var b = ${talent_other.rdPctg_score}*100;
                                                        var c = a.toFixed(2);
                                                        var d = b.toFixed(2);
                                                   
                                                         $("#snrpctg").text("正高职科研人员比例"+c+"%");
                                                         $("#rdpctg").text("R&D全时人员比例"+d+"%");
                                                        </script>
                                                    </div>
                                                </div>
                                                <br><br>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                   <!-- <img src="assets/img/scientist-with-lab-goggles-and-flask-with-chemical.png">-->
                                                    <img src="<c:url value="/resources/img/scientist-with-lab-goggles-and-flask-with-chemical.png" />"/>
                                                    </div>
                                                    <div class="col-md-10 center-block uiborder2" >
                                                    
                                                    <button class="btn1 uiborder1" style="background-color:#cc9933;">两院院士：${talent.yuanshi_num} </button>
                                                    <button class="btn1 uiborder1" style="background-color:#396">长江学者：${talent.changjiang_num}</button>
                                                    </div>
                                                </div>
                                            </div>   
                                        </div> 
                                        <hr>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <p style="text-align: center">科研平台： ${score.platform_score} 分</p>
                                                <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.platform_rank}</span></p>
                                                <p style="text-align: center">您的学校超越了<span  id="platform_pctg" style="color: red">98.32%的高校</span></p>
                                                    <script type="text/javascript">
                                                     var a =  ${score.numbers};
                                                     var b =  ${score.platform_rank};
                                                     var c = (1-b/a) * 100; 
                                                     var d = c.toFixed(2);   
                                                     
                                                     $("#platform_pctg").text(d+"%的高校");
                                                    </script>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <!--<img src="assets/img/student-hat.png"> -->
                                                        <img src="<c:url value="/resources/img/student-hat.png" />"/>
                                                    </div>
                                                    <div class="col-md-10 center-block uiborder2" >                                                
                                                    <button class="btn1 uiborder1" style="background-color:#cc9999;">一级硕士点：${talent.master_num}</button>
                                                    <button class="btn1 uiborder1" style="background-color:#999999">一级博士点：${talent.doc_num}</button>
                                                    </div>
                                                </div>
                                                <br><br>


                                                <div class="row">


                                                    <div class="col-md-2">
                                                    <!--<img src="assets/img/lab-microscope.png">-->
                                                    <img src="<c:url value="/resources/img/lab-microscope.png" />"/>
                                                    </div>
                                                    <div class="col-md-10 center-block uiborder2" >
                                                    
                                                    <button class="btn1 uiborder1" style="background-color:#36a9ce;">省部级以上科研平台：${talent.lab_num}</button>
                                                    
                                                    </div>
                                                </div>
                                            </div> 

                                        </div>  





                                    </div>

                                    





                                    
                                 </div>
                                </div>
                            </div>
                        </div>
                        <!--col-md-12 END-->
                    </div>
                    <!-- /. ROW END  -->




                </div>


                    <!-- ======================================= -->


                
                    <!-- ======================================= -->
              

                <br><br>


    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->

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

            if(parentId == -1){

                $("#donut_paper_sub").empty(); 
                var data = eval('('+'${sub1_num_json}'+')'); 
                                                           
                var sum = 0;
                for(var i=0;i<data.length;i++){
                    sum+=data[i].sub1_num;
                }
                var data_new = [];
                for(var i=0;i<data.length;i++){
                    var obj = data[i];
                    var sub1_name = obj.sub1;
                    var sub1_num = obj.sub1_num/sum*100;    
                    data_new.push({
                        "label":sub1_name,
                        "value":sub1_num.toFixed(2)
                    });
                }

                Morris.Donut({
                  element: 'donut_paper_sub',
                  data: data_new,
                  backgroundColor: '#ccc',
                  labelColor: '#060',
                  colors: [
                    '#0BA462',
                    '#4ECDC4',
                    '#A2DED0',
                    '#87D37C',
                    '#90C695',
                    '#26A65B',
                    '#03C9A9',
                    '#68C3A3',
                    '#65C6BB',
                    '#1BBC9B',
                    '#1BA39C',
                    '#66CC99',
                    '#36D7B7',
                    '#C8F7C5',
                    '#86E2D5',
                    '#2ECC71',
                    '#16A085',
                    '#3FC380'
                  ]   
                });

                //柱状图
                var data_bar = [];
                for(var i=0;i<data.length;i++){
                    var obj = data[i];
                    var sub1_name = obj.sub1;
                    var sub1_num = obj.sub1_num; 
                    data_bar.push({
                        "x":sub1_name,
                        "y":sub1_num
                    });         
                }
                

                Morris.Bar({
                  element: 'bar_paper_sub',
                  data: data_bar,
                  xkey: 'x',
                  ykeys: 'y',
                  labels: ['论文数量']
                });
            } 

                
            else{
            var subText = $("#mylocal option:selected").text().trim();
             

            $.ajax({
                url  : "subject", 
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
                    $("#donut_paper_sub").empty(); 
                    $("#bar_paper_sub").empty();                     
                    var data = msg;
                    var sum = 0;
                    for(var i=0;i<data.length;i++){
                        sum+=data[i].sub2_num;
                    }
                    var data_new = [];
                    for(var i=0;i<data.length;i++){
                        var obj = data[i];
                        var sub2_name = obj.sub2;
                        var sub2_num = obj.sub2_num/sum*100;    
                        data_new.push({
                            "label":sub2_name,
                            "value":sub2_num.toFixed(2)
                        });
                    }

                    Morris.Donut({
                      element: 'donut_paper_sub',
                      data: data_new,
                      backgroundColor: '#ccc',
                      labelColor: '#060',
                      colors: [
                        '#0BA462',
                        '#4ECDC4',
                        '#A2DED0',
                        '#87D37C',
                        '#90C695',
                        '#26A65B',
                        '#03C9A9',
                        '#68C3A3',
                        '#65C6BB',
                        '#1BBC9B',
                        '#1BA39C',
                        '#66CC99',
                        '#36D7B7',
                        '#C8F7C5',
                        '#86E2D5',
                        '#2ECC71',
                        '#16A085',
                        '#3FC380'
                      ]   
                    });
                
                    //改变柱状图 子分类 呈现
                    var data_bar = [];
                    for(var i=0;i<data.length;i++){
                        var obj = data[i];
                        var sub2_name = obj.sub2;
                        var sub2_num = obj.sub2_num; 
                        data_bar.push({
                            "x":sub2_name,
                            "y":sub2_num
                        });         
                    }
                    

                    Morris.Bar({
                      element: 'bar_paper_sub',
                      data: data_bar,
                      xkey: 'x',
                      ykeys: 'y',
                      labels: ['论文数量']
                    });
                }
            });

            }
            
        });
    </script>
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
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
    
    
    
    
   
</body>
</html>
