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
    .radar-chart .axis line {
      stroke: white;
      stroke-width: 2;
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

    <style type="text/css">
       body { background: navy !important; } /* Adding !important forces the browser to overwrite the default style applied by Bootstrap */
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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.debug.js"></script>
    
 

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
             <div style="color: white;padding: 15px 50px 5px 50px;float: right;font-size: 16px;"> 欢迎您！${student.lastName}${student.firstName}, 来自${student.emailAddress}  &nbsp; <a href="/webapptest/logoutSuccessful" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                <li class="text-center">
                    <img src="<c:url value="/resources/img/find_user.png" />" class="user-image img-responsive"/>
                    </li>
                
                    
                    <li>
                        <a  href="/webapptest/dashb"><i class="fa fa-dashboard fa-3x"></i> 首页</a>
                    </li>
                      <li>
                        <a class="active-menu"><i class="fa fa-desktop fa-3x"></i> 综合能力</a>
                    </li>
                    <li>
                        <a  href="/webapptest/compare"><i class="fa fa-qrcode fa-3x"></i> 交叉对比</a>
                    </li>
                    <li  >
                        <a  href="form.html"><i class="fa fa-edit fa-3x"></i> 联系我们 </a>
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
                            <div class="panel panel-default" style="margin:2px">
                                <div class="panel-body" style="background-color: #d8d8d8 !important;"> 
                                    <div class="panel panel-default" style="margin: 2px;">
                                        <div class="panel-body" style="background-image: url('resources/img/top_bg.jpg'); height: 200px; background-size:cover"> 
                                          <img src="<c:url value="/resources/img/s-icons_social_media_icons_white_color_transparent_background_64x64_0149_buffer.png" />" height="64" width="64" style="margin-left: 50%; transform: translate(-50%);"/>
                                          <br>
                                          <p style="text-align: center; font-size:45px; color:white">${college.college_title}</p>
                                        </div>
                                    </div>
                                    
                                     
                                    <div class="panel panel-default" style="margin:2px">
                                      <div class="panel-body" style="padding:0px"> 

                                        <div class='col-md-3' style="background-color: #d8d8d8 !important; padding:5px; padding-left: 0px;">
                                            <div class="panel panel-default" style="margin:0px">
                                              <!--<div class="panel-body" style="background-image:linear-gradient(#323232, #8f9db8); padding:5px"> -->
                                              <div class="panel-body" style="background-color:white; padding:5px">
                                                <div class='col-md-3'>
                                                   <img src="<c:url value="/resources/img/worldwide.png" />" height="42" width="42" />
                                                  </br>
                                                  <span style="color: black; font-size: 13px; margin-left: 25%;"> <strong>省市</strong></span>    
                                                </div>

                                                <div class='col-md-9'>
                                                    <p style="color: black;font-size: 26px;text-align: center;"> <strong>${college.getCollegeCityLvl1()}</strong></p> 
                                                </div>
                                              </div>
                                            </div>
                                          
                                        </div>

                                        <div class='col-md-3' style="background-color: #d8d8d8 !important; padding:5px">
                                            <div class="panel panel-default" style="margin:0px">
                                              <div class="panel-body" style="background-color:white; padding:5px"> 
                                                  <div class='col-md-3'>
                                                     <img src="<c:url value="/resources/img/business.png" />" height="42" width="42" />
                                                    </br>
                                                    <span style="color: black; font-size: 13px; margin-left: 25%;"> <strong>城市</strong></span>    
                                                  </div>

                                                  <div class='col-md-9'>
                                                      <p style="color: black;font-size: 26px; text-align: center;"> <strong>${college.getCollegeCityLvl2()}</strong></p> 
                                                  </div>
                                              </div>
                                            </div>
                                        </div>

                                        <div class='col-md-3' style="background-color: #d8d8d8 !important; padding:5px">
                                          <div class="panel panel-default" style="margin:0px">
                                            <div class="panel-body" style="background-color:white; padding:5px"> 
                                                <div class='col-md-2' style='padding-left: 1px; padding-right: 1px;'>
                                                  <img src="<c:url value="/resources/img/graphic.png" />" height="42" width="42" />
                                                  </br>
                                                  <span style="color: black; font-size: 13px; margin-left: 25%;"> <strong>层次</strong></span>    
                                                </div>

                                                <div class='col-md-10' style="padding-left: 2%; padding-right: 2%;">
                                                    <p style="color: black;font-size: 26px; text-align: center;"> <strong>${college.getCollegeType()}</strong></p> 
                                                </div>
                                            </div>
                                          </div>
                                        </div>

                                        <div class='col-md-3' style="background-color: #d8d8d8 !important; padding:5px; padding-right: 0px;">
                                          <div class="panel panel-default" style="margin:0px">
                                            <div class="panel-body" style="background-color:white; padding:5px"> 
                                                <div class='col-md-3'>
                                                   <img src="<c:url value="/resources/img/circle.png" />" height="42" width="42" />
                                                  </br>
                                                  <span style="color: black; font-size: 13px; margin-left: 25%;"> <strong>类型</strong></span>    
                                                </div>

                                                <div class='col-md-9' style="padding-left: 2%; padding-right: 2%;">
                                                    <p style="color: black;font-size: 26px; text-align: center;"> <strong>${college.getCollegeGrade()}</strong></p> 
                                                </div>
                                            </div>
                                          </div>
                                        </div>

                                      </div>
                                    </div>
                                    
                                      
                                   

                                    

                                    

                                    

                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding:0px; padding-right:4px;">
                              <div class="panel panel-default" style=" margin-bottom: 0px;">
                                <div class="panel-body" style="background-color:white; padding:0px; margin:2px; height:240px"> 
                                    <div class="col-md-4 col-sm-4 col-xs-4" style="height:160px;padding:0px;padding-top: 20px">  
                                        <!--
                                        <div class="panel panel-back noti-box" ="height: 150px">
                                          
                                            <span class="icon-box bg-color-green set-icon">
                                      
                                                <p class="main-text" style="text-align: center" style="color: red" >${score.overall_score}</p>
                                            </span>
                                          
                                            
                                            <div class="text-box" >
                                                <p class="main-text" style="text-align: center" >综合评分</p>
                                            </div>
                                         </div>
                                       -->

                                       <div id="donut_overall_score" style="height:150px"></div>
                                            <script>   
                                                var data_new = [];
                                                  
                                                data_new.push({
                                                    "label":"综合评分",
                                                    "value":${score.overall_score}.toFixed(2)
                                                });

                                                data_new.push({
                                                    "label":"距榜首差距",
                                                    "value":100-${score.overall_score}.toFixed(2)
                                                });
     
                                                Morris.Donut({
                                                  element: 'donut_overall_score',
                                                  data: data_new,
                                                  resize: true,
                                                  backgroundColor: '#ccc',
                                                  labelColor: '#000000',
                                                  colors: [
                                                    //'#0BA462',
                                                    '#f0ad4e',
                                                    '#ccc'
                                                  ]   
                                                });
                                            </script>
                                     </div>

                                     <div class="col-md-4 col-sm-4 col-xs-4" style="height:160px;padding:0px;padding-top: 20px">  
                                      <!--
                                        <div class="panel panel-back noti-box" style="height: 150px">
                                            <span class="icon-box bg-color-green set-icon">
                                                 <p class="main-text" style="text-align: center" style="color: red" >${score.overall_rank}</p>
                                            </span>
                                            <div class="text-box" >
                                                <p class="main-text" style="text-align: center" >在全国所有高校中排名</p>
                                            </div>
                                        </div>
                                      -->
                                         <div id="donut_overall_rank" style="height:150px"></div>
                                            <script>   
                                                var data_new = [];
                                                  
                                                data_new.push({
                                                    "label":"全国排名",
                                                    "value":${score.overall_rank}
                                                });

                                                data_new.push({
                                                    "label":"超越高校数量",
                                                    "value": ${score.numbers}-${score.overall_rank}
                                                });
     
                                                Morris.Donut({
                                                  element: 'donut_overall_rank',
                                                  data: data_new,
                                                  resize: true,
                                                  backgroundColor: '#ccc',
                                                  labelColor: '#000000',
                                                  colors: [
                                                    //'#0BA462',
                                                    '#5cb85c',
                                                    '#ccc'
                                                  ]   
                                                });
                                            </script>
                                    </div>

                                     <div class="col-md-4 col-sm-4 col-xs-4" style="height:160px;padding:0px;padding-top: 20px">  
                                      <!--         
                                        <div class="panel panel-back noti-box" style="height: 150px">
                                            <span class="icon-box bg-color-green set-icon">
                                                <p class="main-text" style="text-align: center" style="color: red" >${score.city_rank}</p>
                                            </span>
                                            <div class="text-box" >
                                                <p class="main-text" style="text-align: center" >在${college.getCollegeCityLvl2()}地区的所有高校中排名</p>
                                                
                                            </div>
                                         </div>
                                       -->

                                       <div id="donut_city_rank" style="height:150px"></div>
                                            <script>   
                                                var data_new = [];
                                                  
                                                data_new.push({
                                                    "label":"地区排名",
                                                    "value":${score.city_rank}
                                                });

                                                data_new.push({
                                                    "label":"超越高校数量",
                                                    "value": ${score.numbers}-${score.city_rank}
                                                });
     
                                                Morris.Donut({
                                                  element: 'donut_city_rank',
                                                  data: data_new,
                                                  resize: true,
                                                  backgroundColor: '#ccc',
                                                  labelColor: '#000000',
                                                  colors: [
                                                    //'#0BA462',
                                                    '#d9534f',
                                                    '#ccc'
                                                  ]   
                                                });
                                            </script>
                                     </div>

                                     <!--progress bar-->
                                     <div class="col-md-4 col-sm-4 col-xs-4" style="padding-top: 30px;">  
                                        <div class="progress progress-striped active" style="background-color: #ccc">
                                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="${score.overall_score}" aria-valuemin="0" aria-valuemax="100" style="width: ${score.overall_score}%">
                                            <span class="sr-only">${score.overall_score} Complete (success)</span>
                                          </div>
                                        </div>
                                     </div>

                                     <div class="col-md-4 col-sm-4 col-xs-4" style="padding-top: 30px;">  
                                        <div class="progress progress-striped active" style="background-color: #ccc">
                                          <div id="prgs_bar_2" class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="${score.numbers}-${score.overall_rank}" aria-valuemin="0" aria-valuemax="${score.numbers}" style="width: (${score.numbers}-${score.overall_rank})/%">
                                              <script type="text/javascript">
                                               var a =  ${score.numbers}-${score.overall_rank};
                                               var b =  ${score.numbers};
                                               var c = (a/b) * 100; 
                                               var d = c.toFixed(2);   
                                               console.log(d);
                                               $("#prgs_bar_2").attr('style',"width: "+d+"%");
                                              </script>
                                            <span class="sr-only">${score.overall_rank} Complete (success)</span>
                                          </div>
                                        </div>
                                     </div>

                                     <div class="col-md-4 col-sm-4 col-xs-4" style="padding-top: 30px;">  
                                        <div class="progress progress-striped active" style="background-color: #ccc">
                                          <div id= "prgs_bar_3" class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="${score.city_rank}" aria-valuemin="0" aria-valuemax="100" style="width: (${score.numbers}-${score.city_rank})%">

                                              <script type="text/javascript">
                                               var a =  ${score.numbers}-${score.city_rank};
                                               var b =  ${score.numbers};
                                               var c = (a/b) * 100; 
                                               var d = c.toFixed(2);   
                                               console.log(d);
                                               $("#prgs_bar_3").attr('style',"width: "+d+"%");
                                              </script>

                                            <span class="sr-only">${score.overall_score} Complete (success)</span>
                                          </div>
                                        </div>
                                     </div>
                                     <!--End of progress bar -->



                                  </div> <!--End of panel body-->
                                </div> <!--End of panel1-->
                              </div> <!--end of col-6-->

                              <!--start of panel spider lvl1,2 chart-->
                              <div class="col-md-6 col-sm-6 col-xs-6" style="padding:0px; padding-left:4px">
                                <div class="panel panel-default" style=" margin-bottom: 0px;">
                                  <div class="panel-body" style="background-color:white; padding:0px; margin:2px"> 
                                      <div class="col-md-6 col-sm-6 col-xs-6" style="padding:0px;padding-top: 5px">
                                        <!--<p style="text-align: center" style="color: gray"> <b>一级标准评分</b></p>-->
                                        <div id= "lvl1RadarChart" class="chart-container" width: 100% style="padding-left: 10px;"></div>
                                         
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
                                                  {axis: "基础能力", value: basic_score},
                                                  {axis: "投入能力", value: input_score, xOffset: 2, yOffset: 25},
                                                  {axis: "产出能力", value: output_score, yOffset: -5},   
                                                  {axis: "综合能力", value: overall_score, xOffset: -2, yOffset: 25}
                                                ]
                                              },
                                              {
                                                className: '平均高校得分', // optional, can be used for styling
                                                axes: [
                                                  {axis: "基础能力", value: basic_avg, xOffset: 50},
                                                  {axis: "投入能力", value: input_avg, yOffset: 50},
                                                  {axis: "产出能力", value: output_avg},   
                                                  {axis: "综合能力", value: overall_avg, yOffset: 50}
                                                ]
                                              }
                                            ];

                                        var w=250;
                                        var h=230;

                                        var mycfg = {
                                          radius: 3,
                                          w: w,
                                          h: h,
                                          maxValue: 100,
                                          levels: 10,
                                          ExtraWidthX: 300,
                                          ToRight: 5,
                                          TranslateX: -100,
                                          color: d3.scale.category10()
                                        }
                                        
                                        RadarChart.draw(".chart-container", data,mycfg);

                                        var LegendOptions = ['本高校得分','平均高校得分'];
                                        var colorscale = d3.scale.category10();

                                        var svg = d3.select('#lvl1RadarChart')
                                          .selectAll('svg')
                                          .append('svg')
                                          .attr("width", w)
                                          .attr("height", h)

                                        //Create the title for the legend
                                        var text = svg.append("text")
                                          .attr("class", "title")
                                          .attr('transform', 'translate(-10,0)') 
                                          .attr("x", w - 70)
                                          .attr("y", 10)
                                          .attr("font-size", "12px")
                                          .attr("fill", "#404040")
                                          .text("图例");
                                            
                                        //Initiate Legend 
                                        var legend = svg.append("g")
                                          .attr("class", "legend")
                                          .attr("height", 100)
                                          .attr("width", 200)
                                          .attr('transform', 'translate(-50,20)') 
                                          ;
                                          //Create colour squares
                                          legend.selectAll('rect')
                                            .data(LegendOptions)
                                            .enter()
                                            .append("rect")
                                            .attr("x", w - 30)
                                            .attr("y", function(d, i){ return i * 20;})
                                            .attr("width", 10)
                                            .attr("height", 10)
                                            .style("fill", function(d, i){ return colorscale(i+2);})
                                            ;
                                          //Create text next to squares
                                          legend.selectAll('text')
                                            .data(LegendOptions)
                                            .enter()
                                            .append("text")
                                            .attr("x", w - 17)
                                            .attr("y", function(d, i){ return i * 20 + 9;})
                                            .attr("font-size", "11px")
                                            .attr("fill", "#737373")
                                            .text(function(d) { return d; })
                                            ;
                                        
                                        </script> 
                                        
                                      </div>

                                      <!--start of 2nd spider chart-->
                                      <div class="col-md-6 col-sm-6 col-xs-6" style="padding:0px;padding-top: 5px">
                                        <!--<p style="text-align: center" style="color: gray"> <b>一级标准评分</b></p>-->
                                        <div id= "lvl2RadarChart" class="chart-container2" width: 100% ></div>
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
                                                    {axis: "人才资源", value: talent_score},
                                                    {axis: "科研平台", value: platform_score, xOffset: -20},
                                                    {axis: "投入能力", value: input_score, xOffset: -10, yOffset: 10},   
                                                    {axis: "论文质量", value: paper_score, xOffset: -20, yOffset: 10},
                                                    {axis: "获奖情况", value: prize_score, xOffset: 40, yOffset: 10},
                                                    {axis: "知识产权", value: patent_score, xOffset: 5, yOffset: 10},
                                                    {axis: "成果转化", value: transform_score, xOffset: 30 }                  
                                                  ]
                                                },
                                                {
                                                  className: '平均高校得分', // optional, can be used for styling
                                                  axes: [
                                                    {axis: "人才资源", value: talent_avg, xOffset: 50},
                                                    {axis: "科研平台", value: platform_avg, yOffset: 10},
                                                    {axis: "投入能力", value: input_avg, xOffset: 10, yOffset: -30},   
                                                    {axis: "论文质量", value: paper_avg, xOffset: -10},
                                                    {axis: "获奖情况", value: prize_avg, xOffset: 40},
                                                    {axis: "知识产权", value: patent_avg, xOffset: 5},
                                                    {axis: "成果转化", value: transform_avg, xOffset: 30 }                  
                                                  ]
                                                }
                                              ];

                                          var w=250;
                                          var h=230;

                                          var mycfg = {
                                            radius: 3,
                                            w: w,
                                            h: h,
                                            maxValue: 100,
                                            levels: 10,
                                            ExtraWidthX: 300,
                                            ToRight: 5,
                                            TranslateX: -100,
                                            color: d3.scale.category10()
                                          }
                                          
                                          RadarChart.draw(".chart-container2", data, mycfg);

                                          var LegendOptions = ['本高校得分','平均高校得分'];
                                          var colorscale = d3.scale.category10();

                                          var svg = d3.select('#lvl2RadarChart')
                                            .selectAll('svg')
                                            .append('svg')
                                            .attr("width", w)
                                            .attr("height", h)

                                
                                          
                                          </script> 
                                        
                                      </div>
                                      <!--end of 2nd spider chart-->

                                  </div> <!--End of panel body-->
                                </div>  <!--End of panel right-->
                              </div>  <!--end of col-6 panel spider lvl1,2 chart-->
                  
                            </div>

                        </div>

                    </div> <!--end of col-12-->

                </div>  <!--END of ROW-->


                    

                    <!-- /. ROW  -->

                    <div id="top" class="row">
                        <div class="col-md-12 col-sm-12">
                        <div class="panel panel-default" style="margin:2px">
                            
                            <div class="panel-body" style="background-color: #d8d8d8 !important;">
                                <div class="col-md-3"></div>
                                <ul class="nav nav-tabs">
                                    <li class="active"><a class="jumper" href="#home" data-toggle="tab">科研产出能力</a>
                                    </li>                                    
                                    <li class=""><a class="jumper" href="#profile1" data-toggle="tab">科研投入能力</a>
                                    </li>
                                    <li class=""><a class="jumper" href="#profile2" data-toggle="tab">科技基础能力</a>
                                    </li>
                                      <script>
                                          $(".jumper").on("click", function( e ) {
    
                                              e.preventDefault();

                                              $("body, html").animate({ 
                                                  scrollTop: $( $(this).attr('href') ).offset().top 
                                              }, 600);
                                              
                                          });
                                      </script>
                                    
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="home">
                                        <hr>

                                        <div class="panel panel-default" style="margin:2px">
                                            <div class="panel-body" style="background-image: url('resources/img/wood1.jpg'); height: 150px; background-size:cover"> 
                                              <img src="/webapptest/resources/img/s-icons_social_media_icons_white_color_transparent_background_64x64_0149_buffer.png" height="64" width="64" style="margin-left: 50%; transform: translate(-50%);">
                                              <br>
                                              <p style="text-align: center; font-size:26px; color:white">科研产出能力</p>
                                            </div>
                                        </div>


                                       
                                      <!-- erying starts here--> 
            

                                      <div class="row" style="margin: 0px;">

                                          <!--<div class="row"> -->
                                          <div class="panel panel-default" style="margin:2px">                          
                                            <div class="panel-body" style="background-color:white; margin:2px;"> 

                                              <div class="col-md-1">
                                              <img src="<c:url value="/resources/img/scholarship.png" />" class="imgCenter"/>
                                              </div>
                                              <div class="col-md-11">
                                              论文成果质量评分 <span id="scoreP" style="float:right">${score.paper_score}</span>
                                                        <script type="text/javascript">
                                                         var a = ${score.paper_score} ;
                                                         var d = a.toFixed(2);   
                                                         
                                                         $("#scoreP").text(d+")");
                                                        </script>
                                                     

                                                <div class="col-md-12 progress" style="padding-left: 0">
                                                  <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="${score.paper_score}" aria-valuemin="0" aria-valuemax="100" style="width: ${score.paper_score}%">
                                                              
                                                  </div>  
                                                </div>

                                                <div class="col-md-3" style="padding-left: 0">
                                                被引用次数评分 <span id="paperSR" style="float:right">${paper_score.ref_score}</span>
                                                <script type="text/javascript">
                                                         var a = ${paper_score.ref_score} ;
                                                         var d = a.toFixed(2);   
                                                         
                                                         $("#paperSR").text(d+")");
                                                        </script>

                                                  <div class="col-md-12 progress" style="padding-left: 0">
                                                    <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="${paper_score.ref_score}" aria-valuemin="0" aria-valuemax="100" style="width: ${paper_score.ref_score}%">
                                                              
                                                   </div>  
                                                 </div>
                                                </div>
                                                <div class="col-md-3" style="padding-left: 0">
                                                    专利情况评分 <span id="scorePa" style="float: right">${score.patent_score}</span>
                                                    <script type="text/javascript">
                                                         var a = ${score.patent_score} ;
                                                         var d = a.toFixed(2);   
                                                         
                                                         $("#scorePa").text(d+")");
                                                        </script>
                                                    <div class="col-md-12 progress" style="padding-left: 0">
                                                  <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="${score.patent_score}" aria-valuemin="0" aria-valuemax="100" style="width: ${score.patent_score}%">
                                                              
                                                  </div>  
                                                </div>
                                                </div>
                                                <div class="col-md-3">
                                                    被SCI/EI收录评分 <span id="paperSS" style="float: right">${paper_score.sci_score}</span>
                                                    <script type="text/javascript">
                                                         var a = ${paper_score.sci_score} ;
                                                         var d = a.toFixed(2);   
                                                         
                                                         $("#paperSS").text(d+")");
                                                        </script>
                                                    <div class="col-md-12 progress" style="padding-left: 0">
                                                  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="${paper_score.sci_score}" aria-valuemin="0" aria-valuemax="100" style="width: ${paper_score.sci_score}%">
                                                              
                                                  </div>  
                                                </div>
                                                </div>
                                                <div class="col-md-3" style="padding-right: 0">
                                                被ISTIC等收录评分 <span id="paperSP" style="float: right">${paper_score.pku_score}</span>
                                                    <script type="text/javascript">
                                                         var a = ${paper_score.pku_score} ;
                                                         var d = a.toFixed(2);   
                                                         
                                                         $("#paperSP").text(d+")");
                                                        </script>

                                                    <div class="col-md-12 progress" style="padding-left: 0">
                                                  <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="${paper_score.pku_score}" aria-valuemin="0" aria-valuemax="100" style="width: ${paper_score.pku_score}%">
                                                              
                                                  </div>  
                                                </div>
                                                </div>

                                              </div>

                                            </div>
                                           </div> 
                                         <!--     
                                          </div>
                                        -->
                                        






                                          <div class="col-md-4">
                                              <div class="col-md-4">

                                                <img src="<c:url value="/resources/img/diploma.png" />" class="imgCenter"/>
                                                <br><br><br>
                                                <p class="centerT" style="padding-top:0px">科研专利数量</p>
                                                <p class="btn3" style="background-color: ##65300">${talent_patent.patent_num}项</p> 

                                              </div>
                                              <div class="col-md-8">
                                                  <div class="row">
                                                      
                                                      科研专利能力评分 <span style="float: right">${score.patent_score}</span>

                                                      
                                                      <div class="col-md-12 progress" style="padding-left: 0">
                                                          <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="${score.patent_score}" aria-valuemin="0" aria-valuemax="100" style="width: ${score.patent_score}%">
                                                              
                                                          </div>  
                                                      </div>
                                                      
                                                  </div>

                                                  <div class="row" style="font-size: 10px">
                                                      
                                                      (所有高校平均科得分   <span style="float: right;">${score_avg.patent_avg} )</span>
                                                     
                                                      <div class="col-md-12 progress" style="padding-left: 0;height: 10px">

                                                          <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="${score_avg.patent_avg}" aria-valuemin="0" aria-valuemax="100" style="width: ${score_avg.patent_avg}%">                                       
                                                          </div>                                               
                                                      </div>
                                                     

                                                  </div>

                                                  <div class="row centerT">
                                                      
                                                          <button type="button" class="btn btn-warning btn-circle btn-xl">${score.patent_rank}</button>
                                                          <br> 在所有${score.numbers} 所高校中排名
                                                    
                                                  </div>


                                                  
                                              </div>
                                          </div>
                                          <div class="col-md-4">

                                              <div class="col-md-4">

                                                <img src="<c:url value="/resources/img/badge.png" />" class="imgCenter"/>
                                                <br><br><br>
                                                <p class="centerT" style="padding-top:0px">国家级奖项数量</p>
                                                <p class="btn3" style="background-color: ##65300">${talent.total_prize_num}项</p> 

                                              </div>
                                              <div class="col-md-8">
                                                  <div class="row">
                                                      
                                                      获奖情况评分 <span style="float: right">${score.prize_score}</span>

                                                      <div class="col-md-12 progress" style="padding-left: 0">
                                                          <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="${score.prize_score}" aria-valuemin="0" aria-valuemax="100" style="width: ${score.prize_score}%">
                                                              
                                                          </div>  
                                                      </div>
                                                     
                                                  </div>

                                                  <div class="row" style="font-size: 10px">
                                                      
                                                      (所有高校平均科得分  <span id="#prize_avg_b" style="float: right"> ${score_avg.prize_avg} )</span> 
                                                      <script type="text/javascript">
                                                         var a =  ${score_avg.prize_avg};
                                                         var d = a.toFixed(2);   
                                                         
                                                         $("#prize_avg_b").text(d+")");
                                                        </script>
                                                     
                                                      <div class="col-md-12 progress" style="padding-left: 0;height: 10px">

                                                          <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="${score_avg.prize_avg}" aria-valuemin="0" aria-valuemax="100" style="width: ${score_avg.prize_avg}%">                                       
                                                          </div>                                               
                                                      </div>
                                                      
                                                     
                                                  </div>

                                                  <div class="row centerT">
                                                      
                                                          <button type="button" class="btn btn-warning btn-circle btn-xl">${score.prize_rank}</button>
                                                          <br> 在所有${score.numbers} 所高校中排名
                                                    
                                                  </div>


                                                  
                                              </div>
                                          </div>


                                          <div class="col-md-4">
                                              <div class="col-md-4">

                                                <img src="<c:url value="/resources/img/business-agreement.png" />" class="imgCenter"/>
                                                <br><br><br>
                                                <p class="centerT" style="padding-top:0px">2015签订合同数</p>
                                                <p class="btn3" style="background-color: ##65300">${talent_other.dealNum_score}项</p> 

                                              </div>
                                              <div class="col-md-8">
                                                  <div class="row">
                                                      
                                                      科研成果转化评分 <span style="float: right">${score.transform_score}</span>

                                                    
                                                      <div class="col-md-5 progress" style="padding-left: 0">
                                                          <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="${score.transform_score}" aria-valuemin="0" aria-valuemax="100" style="width: ${score.transform_score}%">
                                                              
                                                          </div>  
                                                      </div>
                                                    
                                                  </div>

                                                  <div class="row" style="font-size: 10px">
                                                      
                                                      (所有高校平均科得分  <span id="prize-avg_d" style="float: right"> ${score_avg.transform_avg} )</span> <script type="text/javascript">
                                                         var a =  ${score_avg.transform_avg} ;
                                                         var d = a.toFixed(2);   
                                                         
                                                         $("#prize_avg_d").text(d+")");
                                                        </script>
                                                     
                                                      <div class="col-md-12 progress" style="padding-left: 0;height: 10px">

                                                          <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="${score_avg.transform_avg}" aria-valuemin="0" aria-valuemax="100" style="width: ${score_avg.transform_avg}%">                                       
                                                          </div>                                               
                                                      </div>
                                                     
                                                      

                                                  </div>

                                                  <div class="row centerT">
                                                      
                                                          <button type="button" class="btn btn-warning btn-circle btn-xl">${score.transform_rank}</button>
                                                          <br> 在所有${score.numbers} 所高校中排名<br>
                                                          2015年技术转让收入： ${talent_other.dealMoney_score}千元
                                                    
                                                  </div>                                                  
                                              </div>
                                          </div>
                                        
                                      </div>


                                      <br><br>

                                      <!--erying end-->





                                          <!--
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
                                          -->

                                          <!--
                                          <div class="col-md-6">
                                              <p style="text-align: center" style="color: gray"> <b>论文及专利单项评分</b></p>
                                              <div id="paperRadarChart" class="chart-container3" width: 90%></div>
                                               
                                               <script type="text/javascript">
                                               var ref_score = ${paper_score.ref_score};
                                               var sci_score = ${paper_score.sci_score};
                                               var pku_score = ${paper_score.pku_score};
                                               var patent_score = ${score.patent_score};
                                               

                                              var data = [
                                                {
                                                  className: '论文质量', // optional, can be used for styling
                                                  axes: [
                                                    {axis: "被引用次数", value: ref_score, xOffset: 50},
                                                    {axis: "被SCI/EI收录", value: sci_score, yOffset: 10},
                                                    {axis: "被ISTIC等收录", value: pku_score, xOffset: 10, yOffset: -30},   
                                                    {axis: "专利情况", value: patent_score, xOffset: -10}              
                                                  ]
                                                }
                                              ];

                                            var w=500;
                                            var h=400;

                                            var mycfg = {
                                              radius: 4,
                                              w: w,
                                              h: h,
                                              maxValue: 100,
                                              levels: 10,
                                              ExtraWidthX: 300,
                                              ToRight: 5,
                                              TranslateX: -100,
                                              color: d3.scale.category10()
                                            }
                                            
                                            RadarChart.draw(".chart-container3", data, mycfg);

                                            var LegendOptions = ['本高校得分'];
                                            var colorscale = d3.scale.category10();

                                            var svg = d3.select('#paperRadarChart')
                                              .selectAll('svg')
                                              .append('svg')
                                              .attr("width", w)
                                              .attr("height", h)

                                            //Create the title for the legend
                                            var text = svg.append("text")
                                              .attr("class", "title")
                                              .attr('transform', 'translate(-10,0)') 
                                              .attr("x", w - 70)
                                              .attr("y", 10)
                                              .attr("font-size", "12px")
                                              .attr("fill", "#404040")
                                              .text("图例");
                                                
                                            //Initiate Legend 
                                            var legend = svg.append("g")
                                              .attr("class", "legend")
                                              .attr("height", 100)
                                              .attr("width", 200)
                                              .attr('transform', 'translate(-50,20)') 
                                              ;
                                              //Create colour squares
                                              legend.selectAll('rect')
                                                .data(LegendOptions)
                                                .enter()
                                                .append("rect")
                                                .attr("x", w - 65)
                                                .attr("y", function(d, i){ return i * 20;})
                                                .attr("width", 10)
                                                .attr("height", 10)
                                                .style("fill", function(d, i){ return colorscale(i);})
                                                ;
                                              //Create text next to squares
                                              legend.selectAll('text')
                                                .data(LegendOptions)
                                                .enter()
                                                .append("text")
                                                .attr("x", w - 52)
                                                .attr("y", function(d, i){ return i * 20 + 9;})
                                                .attr("font-size", "11px")
                                                .attr("fill", "#737373")
                                                .text(function(d) { return d; })
                                                ;
                                              
                                              
                                              
                                              </script>    
                                          </div>

                                              -->


                                      

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
                                                              //xkey: 'year',
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

                                    <!--专利-->
                                      <div class="row">
                                                                               
                                            <div class="col-md-3">
                                                <p style="text-align: center">科研专利能力评分 ：${score.patent_score}  分</p>
                                                <p style="text-align: center">所有高校平均科得分 ：<span  id="patent_avg"> ${score_avg.patent_avg} </span> 分</p>
                                                <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.patent_rank}</span></p>
                                                <p style="text-align: center">您的学校超越了<span  id="patent_num" style="color: red">98.32%的高校</span></p>
                                                    <script type="text/javascript">
                                                     var a =  ${score.numbers};
                                                     var b =  ${score.patent_rank};
                                                     var c = (1-b/a) * 100; 
                                                     var d = c.toFixed(2);   
                                                     
                                                     $("#patent_num").text(d+"%的高校");

                                                     var e = ${score_avg.patent_avg};
                                                     $("#patent_avg").text(e.toFixed(2));
                                                    </script>

                                                
                                            </div>
                                            
                                               
                                            <div class="col-md-9">
                                                <!--<img src="assets/img/network.png">  -->
                                                <img src="<c:url value="/resources/img/diploma.png" />" class="imgCenter"/>
                                                <p class="centerT" style="padding-top:0px">科研专利数量</p>
                                                <p class="btn3" style="background-color: ##65300">${talent_patent.patent_num}项</p>
                                            </div>
                                                <!--
                                                <div class="col-md-4 center-block uiborder2" >                                            
                                                <button class="btn1 uiborder1" style="background-color:#465300;">科研专利数量：${talent_patent.patent_num} </button>
                                                </div>  
                                                -->
                                      </div>
                                      <hr>

                                      <!--获奖-->
                                      <div class="row">
                                                                               
                                            <div class="col-md-3">
                                                <p style="text-align: center">获奖情况评分 ：${score.prize_score}  分</p>
                                                <p style="text-align: center">所有高校平均科得分 ：<span  id="prize_avg">${score_avg.prize_avg} </span> 分</p>
                                                <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.prize_rank}</span></p>
                                                <p style="text-align: center">您的学校超越了<span  id="prize_num" style="color: red">98.32%的高校</span></p>
                                                    <script type="text/javascript">
                                                     var a =  ${score.numbers};
                                                     var b =  ${score.prize_rank};
                                                     var c = (1-b/a) * 100; 
                                                     var d = c.toFixed(2);   
                                                     
                                                     $("#prize_num").text(d+"%的高校");
                                                     var e = ${score_avg.prize_avg};
                                                     $("#prize_avg").text(e.toFixed(2));
                                                    </script>

                                                
                                            </div>
                                            
                                               
                                            <div class="col-md-9">
                                                <!--<img src="assets/img/network.png">  -->
                                                <img src="<c:url value="/resources/img/badge.png" />" class="imgCenter"/>
                                                <p class="centerT" style="padding-top:0px">国家最高科学奖，自然、发明、进步奖，教育部人文社科奖数量</p>
                                                <p class="btn3" style="background-color: ##65300">${talent.total_prize_num}项</p>
                                            </div>
                                                
                                      </div>
                                      <hr>

                                      <!--科技成果转化-->
                                      <div class="row">
                                                                               
                                            <div class="col-md-3">
                                                <p style="text-align: center">科技成果转化评分 ：${score.transform_score}  分</p>
                                                <p style="text-align: center">所有高校平均科得分 ：<span  id="transform_avg"> ${score_avg.transform_avg} </span>  分</p>
                                                <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.transform_rank}</span></p>
                                                <p style="text-align: center">您的学校超越了<span  id="transfrom_num" style="color: red">98.32%的高校</span></p>
                                                    <script type="text/javascript">
                                                     var a =  ${score.numbers};
                                                     var b =  ${score.transform_rank};
                                                     var c = (1-b/a) * 100; 
                                                     var d = c.toFixed(2);   
                                                     
                                                     $("#transfrom_num").text(d+"%的高校");
                                                     var e = ${score_avg.transform_avg};
                                                     $("#transform_avg").text(e.toFixed(2));
                                                    </script>

                                                
                                            </div>
                                            
                                               
                                            <div class="col-md-5">
                                              <!--<img src="assets/img/business-agreement.png" class="imgCenter">-->
                                              <img src="<c:url value="/resources/img/business-agreement.png" />" class="imgCenter"/>
                                              <p class="centerT" style="padding-top:0px">2015年签订合同数</p>
                                              <p class="btn3" style="background-color: #660033">${talent_other.dealNum_score}项</p>
                                            </div>
                                            <div class="col-md-4">
                                              <!--<img src="assets/img/contract.png" class="imgCenter">-->
                                              <img src="<c:url value="/resources/img/contract.png" />" class="imgCenter"/>
                                              <p class="centerT">2015年技术转让收入</p>
                                              <p class="btn3" style="background-color: #660033">${talent_other.dealMoney_score}千元</p>
                                              <br />
                                              
                                            </div>
                                                
                                      </div>

                                      <!--科研投入能力TAB -->
                                      <hr>
                                      <div id="profile1" class="row">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                          <div class="text-box" >
                                              <p class="main-text" style="text-align: center" >科研投入能力</p>
                                              <br />
                                          </div>
                                        </div> 
                                      </div> 
                                          <!--COPY-->
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
                                        
                                      <div class="row">
                                          <div class="col-md-1"></div>
                                          <div class="col-md-5 center-block">
                                             
                                              <p class="centerT">近五年国家自然科学基金立项数</p>
                                              <p class="btn3">总计：${talent.nature_prize_num}</p>
                                              <!--<p class="centerT colorT1">该项指标位列榜单：<span style="color: red">第3名</span></p>->
                                              <!--<p class="centerT colorT1">超越<span style="color: red">98.2%</span>的高校</p>-->

                                          </div>
                                          <div class="col-md-5">
                                              <p class="centerT">近五年国家社会科学基金立项数</p>
                                              <p class="btn3">总计：${talent.social_prize_num}</p>
                                              <!--<p class="centerT colorT1">该项指标位列榜单：<span style="color: red">第1名</span></p>->
                                              <!--<p class="centerT colorT1">超越<span style="color: red">99.9%</span>的高校</p>-->
                                          </div>
                                                                               
                                      </div>
                                      <div class="row">
                                          <div class="col-md-10"> </div>
                                          <div class="col-md-2"> 
                                              <p id="returnTop"class="btn3" href="#top">返回顶部</p>
                                              <script>
                                              $("#returnTop").on("click", function( e ) {
                                                  
                                                  e.preventDefault();

                                                  $("body, html").animate({ 
                                                      scrollTop: $( $(this).attr('href') ).offset().top 
                                                  }, 600);
                                                  
                                              });
                                              </script>
                                           </div>   
                                      </div>
                                          <!--END  COPY-->

                                      <!--科研基础能力TAB -->
                                      <hr>
                                      <div id="profile2" class="row">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                          <div class="text-box" >
                                              <p class="main-text" style="text-align: center" >科研基础能力</p>
                                              <br />
                                          </div>
                                        </div> 
                                      </div> 
                                          <!--COPY-->
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
                                        <div class="row">
                                            <div class="col-md-10"></div>  
                                            <div class="col-md-2"> 
                                              <p id="returnTop2"class="btn3" href="#top">返回顶部</p>
                                              <script>
                                              $("#returnTop2").on("click", function( e ) {
                                                  
                                                  e.preventDefault();

                                                  $("body, html").animate({ 
                                                      scrollTop: $( $(this).attr('href') ).offset().top 
                                                  }, 600);
                                                  
                                              });
                                              </script>
                                           </div>    
                                        </div>
                                          <!--END  COPY-->
                                      
                                    </div>
                                    <!-- END tab 科研产出能力-->


                                    





                                    
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
     <div id="editor"></div>
     <button id="cmd">generate PDF</button>


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

    var doc = new jsPDF();
    var specialElementHandlers = {
        '#editor': function (element, renderer) {
            return true;
        }
    };

    $('#cmd').click(function () {
        doc.fromHTML($('#patent_num').html(), 15, 15, {
            'width': 170,
                'elementHandlers': specialElementHandlers
        });
        doc.save('sample-file.pdf');
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
