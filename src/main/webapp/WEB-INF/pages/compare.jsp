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
      fill-opacity: 0.1;
    }
    .radar-chart.focus .area {
      fill-opacity: 0.1;
    }
    .radar-chart.focus .area.focused {
      fill-opacity: 0.1;
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
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">三盟科技</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> 欢迎您！${student.lastName}${student.firstName}, 来自${student.emailAddress}  &nbsp; <a href="/webapptest/logoutSuccessful" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="<c:url value="/resources/img/find_user.png" />" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a  href="/webapptest/userInfo"><i class="fa fa-dashboard fa-3x"></i> 首页</a>
                    </li>
                     <li>
                        <a  href="/webapptest/overall"><i class="fa fa-desktop fa-3x"></i> 综合能力 </a>
                    </li>
                    <li>
                        <a class="active-menu"><i class="fa fa-qrcode fa-3x"></i> 交叉对比 </a>
                    </li>
                    <li  >
                        <a  href="form.html"><i class="fa fa-edit fa-3x"></i> 联系我们 </a>
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
                <div class="row" style="background-color: #d8d8d8 !important; margin:2px">
                  <p style="text-align: center" style="color: gray"> <b>请选择您想要进行对比的学校</b></p>
                </div>

                <!-- /. ROW  -->
                <div class="row" style="background-color: #d8d8d8 !important; margin:2px">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="panel panel-default" style=" margin-top: 16px;">
                      <div class="panel-body">
                        <div class="col-md-6 col-sm-12 col-xs-12">
                          <p>省，直辖市：</p>
                          <select name="local" id="city1_select" style="width:400px;" >
                              <option value="-1" selected="selected" >全部省和直辖市</option>
                          </select><br />

                          <p>城市：</p>
                          <select name="local" id="city2_select" style="width:400px;" >
                              <option value="-1" selected="selected" >全部分类</option>
                          </select><br />

                          <p>学校：</p>
                          <select name="local" id="name_select" style="width:400px;" >
                              <option value="-1" selected="selected" >请选择</option>
                          </select><br />

                        </div>

                        <div class="col-md-6 col-sm-12 col-xs-12">
                          <p><b>或者 </b> 请输入目标学校名称：</p>

                          <div id="container">
                              <div id="container">
                                <input id="input_name" name="local" type="" style="width: 400px;">
                              </div>
                              <br>
                              <input id="submit" type="button" value="搜索">
                
                          </div>       
                        </div>   
                      </div>
                    </div>
                  </div>
                </div>

                <!--College info kuang-->
                <div class="row" style="background-color: #d8d8d8 !important; margin:2px">
                  <div class="col-md-6 col-sm-6 col-xs-6" style="margin-top: 15px; padding-right: 6px;">
                    <div class="panel panel-default" style="margin-bottom: 10px;">
                      <div class="panel-body"  style="background-image: url('resources/img/star_hd.jpg'); height: 130px; background-size:cover">
                           <img src="<c:url value="/resources/img/s-icons_social_media_icons_white_color_transparent_background_64x64_0149_buffer.png" />" height="64" width="64" style="margin-left: 50%; transform: translate(-50%);"/>
                           <p style="text-align: center; font-size:26px; color:white; padding-top: 2px;"><strong>${college.college_title}</strong></p>
                      </div>
                    </div>
                  </div>
                  <!--college1 end-->
                  <div class="col-md-6 col-sm-6 col-xs-6" style="margin-top: 15px; padding-left: 6px;">
                    <div class="panel panel-default" style="margin-bottom: 10px;">
                      <div class="panel-body"  style="background-image: url('resources/img/star_hd.jpg'); height: 130px; background-size:cover">
                          <img src="<c:url value="/resources/img/s-icons_social_media_icons_white_color_transparent_background_64x64_0149_buffer.png" />" height="64" width="64" style="margin-left: 50%; transform: translate(-50%);"/>
                          <p id="college_compare_title" style="text-align: center; font-size:26px; color:white; padding-top: 2px;"></p> 
                      </div>
                    </div>
                  </div>
                  <!--省市城市-->
                  <div class="col-md-3 col-sm-3 col-xs-3"> <!--college1 省市-->
                    <div class="panel panel-default" style="margin-bottom: 10px;">
                      <div class="panel-body"  style="background-color:white; padding:5px ;margin: 2px;">
                          <div class='col-md-3' style=" padding: 0;">
                            <img src="<c:url value="/resources/img/worldwide.png" />" height="42" width="42" />
                            </br>
                            <span style="color: black; font-size: 13px; margin-left: 13%; "> <strong>省市</strong></span>    
                          </div>

                          <div class='col-md-9' style="padding:0">
                              <p style="color: black;font-size: 26px;text-align: center;"> <strong>${college.getCollegeCityLvl1()}</strong></p> 
                          </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-3 col-sm-3 col-xs-3"> <!--college1 城市-->
                    <div class="panel panel-default" style="margin-bottom: 10px;">
                      <div class="panel-body"  style="background-color:white; padding:5px ;margin: 2px;">
                          <div class='col-md-3' style=" padding: 0;">
                            <img src="<c:url value="/resources/img/business.png" />" height="42" width="42" />
                            </br>
                            <span style="color: black; font-size: 13px; margin-left: 13%; "> <strong>城市</strong></span>    
                          </div>

                          <div class='col-md-9' style="padding:0">
                              <p style="color: black;font-size: 26px;text-align: center;"> <strong>${college.getCollegeCityLvl2()}</strong></p> 
                          </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-3 col-sm-3 col-xs-3"> <!--college2 省市-->
                    <div class="panel panel-default" style="margin-bottom: 10px;">
                      <div class="panel-body"  style="background-color:white; padding:5px ;margin: 2px;">
                          <div class='col-md-3' style=" padding: 0;">
                            <img src="<c:url value="/resources/img/worldwide.png" />" height="42" width="42" />
                            </br>
                            <span style="color: black; font-size: 13px; margin-left: 13%; "> <strong>省市</strong></span>    
                          </div>

                          <div id="college_compare_city1" class='col-md-9' style="padding:0">
                               
                          </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-3 col-sm-3 col-xs-3"> <!--college2 城市-->
                    <div class="panel panel-default" style="margin-bottom: 10px;">
                      <div class="panel-body"  style="background-color:white; padding:5px ;margin: 2px;">
                          <div class='col-md-3' style=" padding: 0;">
                            <img src="<c:url value="/resources/img/business.png" />" height="42" width="42" />
                            </br>
                            <span style="color: black; font-size: 13px; margin-left: 13%; "> <strong>城市</strong></span>    
                          </div>

                          <div id="college_compare_city" class='col-md-9' style="padding:0">
            
                          </div>
                      </div>
                    </div>
                  </div>

                  <!--级别层次-->
                  <div class="col-md-3 col-sm-3 col-xs-3"> <!--college1 层次-->
                    <div class="panel panel-default" style="margin-bottom: 10px;">
                      <div class="panel-body"  style="background-color:white; padding:5px ;margin: 2px;">
                          <div class='col-md-3' style=" padding: 0;">
                            <img src="<c:url value="/resources/img/graphic.png" />" height="42" width="42" />
                            </br>
                            <span style="color: black; font-size: 13px; margin-left: 13%; "> <strong>层次</strong></span>    
                          </div>

                          <div class='col-md-9' style="padding:0">
                              <p style="color: black;font-size: 26px;text-align: center;"> <strong>${college.getCollegeType()}</strong></p> 
                          </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-3 col-sm-3 col-xs-3"> <!--college1 类型-->
                    <div class="panel panel-default" style="margin-bottom: 10px;">
                      <div class="panel-body"  style="background-color:white; padding:5px ;margin: 2px;">
                          <div class='col-md-3' style=" padding: 0;">
                            <img src="<c:url value="/resources/img/circle.png" />" height="42" width="42" />
                            </br>
                            <span style="color: black; font-size: 13px; margin-left: 13%; "> <strong>类型</strong></span>    
                          </div>

                          <div class='col-md-9' style="padding:0">
                              <p style="color: black;font-size: 26px;text-align: center;"> <strong>${college.getCollegeGrade()}</strong></p> 
                          </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-3 col-sm-3 col-xs-3"> <!--college2 类型-->
                    <div class="panel panel-default" style="margin-bottom: 10px;">
                      <div class="panel-body"  style="background-color:white; padding:5px ;margin: 2px;">
                          <div class='col-md-3' style=" padding: 0;">
                            <img src="<c:url value="/resources/img/graphic.png" />" height="42" width="42" />
                            </br>
                            <span style="color: black; font-size: 13px; margin-left: 13%; "> <strong>层次</strong></span>    
                          </div>

                          <div id="college_compare_type" class='col-md-9' style="padding:0">
                    
                          </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-3 col-sm-3 col-xs-3"> <!--college2 类型-->
                    <div class="panel panel-default" style="margin-bottom: 10px;">
                      <div class="panel-body"  style="background-color:white; padding:5px ;margin: 2px;">
                          <div class='col-md-3' style=" padding: 0;">
                            <img src="<c:url value="/resources/img/circle.png" />" height="42" width="42" />
                            </br>
                            <span style="color: black; font-size: 13px; margin-left: 13%; "> <strong>类型</strong></span>    
                          </div>

                          <div id="college_compare_grade" class='col-md-9' style="padding:0">
                            
                          </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6 col-sm-6 col-xs-6" style="padding:0px; padding-right:4px;"><!--college1 三个饼-->
                    <div class="panel panel-default" style=" margin: 5px 10px 5px 15px;">
                      <div class="panel-body" style="background-color:white; padding:0px; margin:2px; height:240px"> 
                        <div class="col-md-4 col-sm-4 col-xs-4" style="height:160px;padding:0px;padding-top: 20px"> <!--donut1-->
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

                        <div class="col-md-4 col-sm-4 col-xs-4" style="height:160px;padding:0px;padding-top: 20px"> <!--donut2-->
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

                        <div class="col-md-4 col-sm-4 col-xs-4" style="height:160px;padding:0px;padding-top: 20px"> <!--donut3-->
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

                      </div>
                    </div>
                  </div>

                  <!--college2 三个饼-->
                  <div class="col-md-6 col-sm-6 col-xs-6" style="padding:0px; padding-right:4px;">
                    <div class="panel panel-default" style=" margin: 5px 10px 5px 15px;">
                      <div class="panel-body" style="background-color:white; padding:0px; margin:2px; height:240px"> 
                        <div class="col-md-4 col-sm-4 col-xs-4" style="height:160px;padding:0px;padding-top: 20px"> <!--donut1-->
                            <div id="donut_overall_score_clg2" style="height:150px"></div>
                                
                        </div> 

                        <div class="col-md-4 col-sm-4 col-xs-4" style="height:160px;padding:0px;padding-top: 20px"> <!--donut2-->
                            <div id="donut_overall_rank_clg2" style="height:150px"></div>
                                
                        </div>

                        <div class="col-md-4 col-sm-4 col-xs-4" style="height:160px;padding:0px;padding-top: 20px"> <!--donut3-->
                            <div id="donut_city_rank_clg2" style="height:150px"></div>
                                
                        </div>

                         <!--progress bar-->
                         <div class="col-md-4 col-sm-4 col-xs-4" style="padding-top: 30px;">  
                            <div id="progress_bar_clg2_1" class="progress progress-striped active" style="background-color: #ccc">
                              
                            </div>
                         </div>

                         <div class="col-md-4 col-sm-4 col-xs-4" style="padding-top: 30px;">  
                            <div id="progress_bar_clg2_2" class="progress progress-striped active" style="background-color: #ccc">

                            </div>
                         </div>

                         <div class="col-md-4 col-sm-4 col-xs-4" style="padding-top: 30px;">  
                            <div id="progress_bar_clg2_3" class="progress progress-striped active" style="background-color: #ccc">

                            </div>
                         </div>
                         <!--End of progress bar -->

                      </div>
                    </div>
                  </div>
                  <!-- End of 3 pie chart-->
                  
                  <!--Start of 表格-->
                  <div class="col-md-6 col-sm-6 col-xs-6" style="padding:0px; padding-right:4px;">
                    <!--Start of 一级指标表格-->
                    <div class="panel panel-default" style=" margin: 5px 10px 5px 15px; height: 218px;">
                      <div class="panel-heading">
                            一级指标对比
                      </div>
                      <div class="panel-body" style="background-color:white; padding:0px; margin:2px;"> 
                          <div class="table">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>基础能力</th>
                                            <th>投入能力</th>
                                            <th>产出能力</th>
                                            <th>综合能力</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="success">
                                            <td>${college.college_title}</td>
                                            <td>${score.basic_score}</td>
                                            <td>${score.input_score}</td>
                                            <td>${score.output_score}</td>
                                            <td>${score.overall_score}</td>
                                        </tr>
                                        <tr class="info">
                                            <td id="table_clg2_name"></td>
                                            <td id="table_clg2_basic"></td>
                                            <td id="table_clg2_input"></td>
                                            <td id="table_clg2_output"></td>
                                            <td id="table_clg2_overall"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                      </div>
                    </div>
                  </div>
                  <!--End of 一级指标表格-->


                  <div class="col-md-6 col-sm-6 col-xs-6" style="padding:0px; padding-right:4px;">
                    <div class="panel panel-default" style=" margin: 5px 10px 5px 15px;">
                      <div class="panel-heading">
                            二级指标对比
                      </div>
                      <div class="panel-body" style="background-color:white; padding:0px; margin:2px;"> 
                          <div class="table">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>人才资源</th>
                                            <th>科研平台</th>
                                            <th>投入能力</th>
                                            <th>论文质量</th>
                                            <th>获奖情况</th>
                                            <th>知识产权</th>
                                            <th>成果转化</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="success">
                                            <td>${college.college_title}</td>
                                            <td>${score.talent_score}</td>
                                            <td>${score.platform_score}</td>
                                            <td>${score.input_score}</td>
                                            <td>${score.paper_score}</td>                                           
                                            <td>${score.prize_score}</td>
                                            <td>${score.patent_score}</td>
                                            <td>${score.transform_score}</td>
                                        </tr>
                                        <tr class="info">
                                            <td id="table_clg2_name_2"></td>
                                            <td id="table_clg2_talent"></td>
                                            <td id="table_clg2_platform"></td>
                                            <td id="table_clg2_input_2"></td>
                                            <td id="table_clg2_paper"></td>
                                            <td id="table_clg2_prize"></td>
                                            <td id="table_clg2_patent"></td>
                                            <td id="table_clg2_transform"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                      </div>
                    </div>
                    <!--End of 2级指标表格-->


                  </div>
                  <!--End of 表格-->

                  <!--一级能力图-->
                  <div class="col-md-6 col-sm-6 col-xs-6" style="padding:0px; padding-right:4px;">
                    <div class="panel panel-default" style=" margin: 5px 10px 5px 15px;">
                      <div class="panel-heading">
                            一级指标能力图对比
                      </div>
                      <div class="panel-body" style="background-color:white; padding:0px; margin:2px;"> 
                          <div id= "lvl1RadarChart" class="chart-container1" width: 100%></div>
                      </div>
                    </div>
                  </div>

                  <!--2级能力图-->
                  <div class="col-md-6 col-sm-6 col-xs-6" style="padding:0px; padding-right:4px;">
                    <div class="panel panel-default" style=" margin: 5px 10px 5px 15px;">
                      <div class="panel-heading">
                            二级指标能力图对比
                      </div>
                      <div class="panel-body" style="background-color:white; padding:0px; margin:2px;"> 
                          <div id= "lvl2RadarChart" class="chart-container2" width: 100%></div>
                      </div>
                    </div>
                  </div>


                </div>
                <!--College info kuang END-->
                           
                <!-- /. ROW  -->

                <div id="top" class="row">
                  <div class="col-md-12 col-sm-12">
                    <div class="panel panel-default" style="margin:2px">
                        
                        <div class="panel-body"  style="background-color: #d8d8d8 !important;">
                            <div class="col-md-3"></div>
                            <ul class="nav nav-tabs">
                                <li class="active"><a class="jumper" href="#home" data-toggle="tab">科研产出能力</a>
                                </li> 
                                <li class=""><a class="jumper" href="#profile2" data-toggle="tab">科技基础能力</a>
                                </li>
                                <li class=""><a class="jumper" href="#profile1" data-toggle="tab">科研投入能力</a>
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

                            <!-- 科研产出能力-->
                            <div class="tab-content">
                              <div class="tab-pane fade active in" id="home">

                                <div class="panel panel-default" style="margin:2px">
                                    <div class="panel-body" style="background-image: url('resources/img/star_hd.jpg'); height: 150px; background-size:cover"> 
                                      <img src="/webapptest/resources/img/s-icons_social_media_icons_white_color_transparent_background_64x64_0149_buffer.png" height="64" width="64" style="margin-left: 50%; transform: translate(-50%);">
                                      <br>
                                      <p style="text-align: center; font-size:26px; color:white">科研产出能力</p>
                                    </div>
                                </div>
                                <!--general score-->
                                <div class="row">
                                  <div class="col-md-3">
                                    <img src="<c:url value="/resources/img/scholarship.png" />" class="imgCenter"/>
                                    <p style="text-align: center">成果质量： <span  style="color: red">${score.paper_score}</span> 分</p>
                                    <p style="text-align: center">在所有${score.numbers} 所高校中排名第 <span style="color: red">${score.paper_rank}</span></p>
                                    <p style="text-align: center">您的学校超越了<span  id="paper_pctg" style="color: red">98.32</span>%的高校</p>
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
                                    <div id= "PaperRadarChart" class="chart-container3" width: 45%></div>
                                  </div>

                                  <div class="col-md-3">
                                    <img src="<c:url value="/resources/img/scholarship.png" />" class="imgCenter"/>
                                    <p style="text-align: center">成果质量： <span id = "paper_score" style="color: red"></span> 分</p>
                                    <p style="text-align: center">在所有高校中排名第 <span id="paper_rank" style="color: red"></span></p>
                                    <p style="text-align: center">您的学校超越了<span  id="paper_pctg2" style="color: red"></span>%的高校</p>
                                  </div>
                                </div>
                                <hr>
                                <!--论文能力-->
                                <div class="row">
                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="text-box" >
                                        <p class="main-text" style="text-align: center" >论文能力</p>
                                        <br />
                                    </div>
                                  </div> 
                                </div>  

                               
                                <div class="row">
                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            历年论文总数对比
                                        </div>
                                        <div class="panel-body">
                                            <!--<div id="morris-donut-chart"></div>-->

                                            <div id="line_paper"></div>
                                
                                                
                                            
                                        </div>
                                
                                    </div>
                                  </div>

                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                      <div class="panel panel-default">
                                          <div class="panel-heading">
                                              历年论文被SCI及EI收录对比
                                          </div>
                                          <div class="panel-body">
                                              <div id="line_paper_sci"></div>
                                          </div>
                                
                                      </div>
                                  </div>

                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                      <div class="panel panel-default">
                                          <div class="panel-heading">
                                              历年论文被CSSCI/ISTIC/PKU收录对比
                                          </div>
                                          <div class="panel-body">
                                              <div id="line_paper_pku"></div>
                                          </div>
                                
                                      </div>
                                  </div>

                                   <div class="col-md-12 col-sm-12 col-xs-12">
                                      <div class="panel panel-default">
                                          <div class="panel-heading">
                                              历年论文被引用数对比
                                          </div>
                                          <div class="panel-body">
                                              <div id="line_paper_ref"></div>
                                          </div>
                                
                                      </div>
                                  </div>

                                </div>
                              
                                <hr>
                                <!--分类学科-->
                                <div class="row">
                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="text-box" >
                                        <p class="main-text" style="text-align: center" >分类学科</p>
                                        <br />
                                    </div>
                                  </div> 
                                </div> 

                                <!--
                                <div class="row">
                                   <div class="col-md-12 col-sm-12 col-xs-12">
                                      <p>一级学科分类：</p>
                                      <select name="local" id="subselect" style="width:400px;" >
                                          <option value="-1" selected="selected" >全部分类</option>
                                      </select>
                                      <br />
                                  </div>
                                </div> 
                              -->

                                <div class="row">
                                    <!-- 饼状图 论文各学科比例左 -->
                                    <div class="col-md-6 col-sm-12 col-xs-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <span  id="sub1_left" ></span>各学科论文比例
                                            </div>
                                            <div class="panel-body">
                                                <div id="donut_paper_sub_left"></div>
                                            </div>
                                  
                                        </div>
                                    </div>

                                    <!-- 饼状图 论文各学科比例右 -->
                                    <div class="col-md-6 col-sm-12 col-xs-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <span  id="sub1_right" ></span>各学科论文比例
                                            </div>
                                            <div class="panel-body">
                                                <div id="donut_paper_sub_right"></div>
                                            </div>
                                  
                                        </div>
                                    </div>
                                </div>

                                <!-- 柱状图 论文各学科比例 -->
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                各学科论文数量对比
                                            </div>
                                            <div class="panel-body">
                                                <div id="bar_paper_sub"></div>
                                            </div>
                                  
                                        </div>
                                    </div>
                                </div>

                                <hr>
                                <!--!!!!!!!!!专利能力-->
                                <div class="row">
                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="text-box" >
                                        <p class="main-text" style="text-align: center" >专利能力</p>
                                        <br />
                                    </div>
                                  </div> 
                                </div> 
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="<c:url value="/resources/img/diploma.png" />" class="imgCenter"/>
                                        <p style="text-align: center"><span>${college.college_title}</span></p>
                                        <p style="text-align: center">科研专利能力评分 ：<span style="color: red">${score.patent_score}</span>  分</p>
                                        <p style="text-align: center">所有高校平均科得分 ：<span  id="patent_avg" style="color: red"> ${score_avg.patent_avg} </span> 分</p>
                                        <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.patent_rank}</span></p>
                                        <p style="text-align: center">您的学校超越了<span  id="patent_num" style="color: red">98.32</span>%的高校</p>
                                            <script type="text/javascript">
                                             var a =  ${score.numbers};
                                             var b =  ${score.patent_rank};
                                             var c = (1-b/a) * 100; 
                                             var d = c.toFixed(2);   
                                             
                                             $("#patent_num").text(d);

                                             var e = ${score_avg.patent_avg};
                                             $("#patent_avg").text(e.toFixed(2));
                                            </script>                                                
                                    </div>

                                    <div class="col-md-4">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              专利数量对比
                                          </div>
                                          <div class="panel-body">
                                            <div id="bar_patent"></div>
                                          </div>
                                        </div>    
                                    </div>

                                    <div class="col-md-4">
                                        <img src="<c:url value="/resources/img/diploma.png" />" class="imgCenter"/>
                                        <p style="text-align: center"><span id="compare_college"></span></p>
                                        <p style="text-align: center">科研专利能力评分 ：<span id="compare_patent_score" style="color: red"></span>  分</p>
                                        <p style="text-align: center">所有高校平均科得分 ：<span  id="compare_patent_avg" style="color: red"> </span> 分</p>
                                        <p style="text-align: center">在所有高校中排名第<span id="compare_patent_rank" style="color: red"></span></p>
                                        <p style="text-align: center">您的学校超越了<span  id="compare_patent_num" style="color: red"></span>%的高校</p>                                            
                                    </div>
                                </div>


                                <hr>
                                <!--!!!!!!!!获奖能力-->
                                <div class="row">
                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="text-box" >
                                        <p class="main-text" style="text-align: center" >获奖情况</p>
                                        <br />
                                    </div>
                                  </div> 
                                </div> 
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="<c:url value="/resources/img/badge.png" />" class="imgCenter"/>
                                        <p style="text-align: center"><span>${college.college_title}</span></p>
                                        <p style="text-align: center">获奖情况评分 ：<span style="color: red">${score.prize_score}</span>  分</p>
                                        <p style="text-align: center">所有高校平均科得分 ：<span  id="prize_avg" style="color: red"> ${score_avg.prize_avg} </span> 分</p>
                                        <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.prize_rank}</span></p>
                                        <p style="text-align: center">您的学校超越了<span  id="prize_num" style="color: red">98.32</span>%的高校</p>
                                            <script type="text/javascript">
                                             var a =  ${score.numbers};
                                             var b =  ${score.prize_rank};
                                             var c = (1-b/a) * 100; 
                                             var d = c.toFixed(2);   
                                             
                                             $("#prize_num").text(d);

                                             var e = ${score_avg.prize_avg};
                                             $("#prize_avg").text(e.toFixed(2));
                                            </script>                                                
                                    </div>

                                    <div class="col-md-4">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              获奖数量对比
                                          </div>
                                          <div class="panel-body">
                                             <div id="bar_prize"></div>
                                          </div>
                                        </div>                                   
                                    </div>

                                    <div class="col-md-4">
                                        <img src="<c:url value="/resources/img/badge.png" />" class="imgCenter"/>
                                        <p style="text-align: center"><span id="compare_college_prize"></span></p>
                                        <p style="text-align: center">获奖情况评分 ：<span id="compare_prize_score" style="color: red"></span>  分</p>
                                        <p style="text-align: center">所有高校平均科得分 ：<span  id="compare_prize_avg" style="color: red"> </span> 分</p>
                                        <p style="text-align: center">在所有高校中排名第<span id="compare_prize_rank" style="color: red"></span></p>
                                        <p style="text-align: center">您的学校超越了<span  id="compare_prize_num" style="color: red"></span>%的高校</p>                                            
                                    </div>
                                </div>

                                <hr>
                                <!--!!!!!!!!!科研成果转化能力-->
                                <div class="row">
                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="text-box" >
                                        <p class="main-text" style="text-align: center" >科研成果转化能力</p>
                                        <br />
                                    </div>
                                  </div> 
                                </div> 
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="<c:url value="/resources/img/business-agreement.png" />" class="imgCenter"/>
                                        <p style="text-align: center"><span>${college.college_title}</span></p>
                                        <p style="text-align: center">科研成果转化能力评分 ：<span style="color: red">${score.transform_score}</span>  分</p>
                                        <p style="text-align: center">所有高校平均科得分 ：<span  id="transform_avg" style="color: red"> ${score_avg.transform_avg} </span> 分</p>
                                        <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.transform_rank}</span></p>
                                        <p style="text-align: center">您的学校超越了<span  id="transform_num" style="color: red">98.32</span>%的高校</p>
                                            <script type="text/javascript">
                                             var a =  ${score.numbers};
                                             var b =  ${score.transform_rank};
                                             var c = (1-b/a) * 100; 
                                             var d = c.toFixed(2);   
                                             
                                             $("#transform_num").text(d);

                                             var e = ${score_avg.transform_avg};
                                             $("#transform_avg").text(e.toFixed(2));
                                            </script>                                                
                                    </div>

                                    <div class="col-md-6">
                                        <img src="<c:url value="/resources/img/business-agreement.png" />" class="imgCenter"/>
                                        <p style="text-align: center"><span id="compare_college_transform"></span></p>
                                        <p style="text-align: center">科研成果转化能力评分 ：<span id="compare_transform_score" style="color: red"></span>  分</p>
                                        <p style="text-align: center">所有高校平均科得分 ：<span  id="compare_transform_avg" style="color: red"> </span> 分</p>
                                        <p style="text-align: center">在所有高校中排名第<span id="compare_transform_rank" style="color: red"></span></p>
                                        <p style="text-align: center">您的学校超越了<span  id="compare_transform_num" style="color: red"></span>%的高校</p>                                            
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-4">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              签订合同数对比
                                          </div>
                                          <div class="panel-body">
                                            <div id="bar_dealNum"></div>
                                          </div>
                                        </div>    
                                    </div>
                                    <div class="col-md-2"></div>
                                    <div class="col-md-4">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              技术转让收入对比
                                          </div>
                                          <div class="panel-body">
                                            <div id="bar_dealMoney"></div>
                                          </div>
                                        </div>    
                                    </div>
                                    <div class="col-md-1"></div>
                                </div>

                                <hr>
                                <!--!!!!!!!!!科研基础能力-->
                                <div id="profile2" class="row">
                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="text-box" >
                                        <p class="main-text" style="text-align: center" >科研基础能力</p>
                                        <br />
                                    </div>
                                  </div> 
                                </div> 
                                      <!--人才资源-->
                                <div class="row">
                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="text-box" >
                                        <p style="text-align: center" style="color: gray"> <b>人才资源</b></p>
                                        <br />
                                    </div>
                                  </div> 
                                </div> 

                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="<c:url value="/resources/img/scientist-with-lab-goggles-and-flask-with-chemical.png" />" class="imgCenter"/>
                                        <p style="text-align: center"><span>${college.college_title}</span></p>
                                        <p style="text-align: center">人才资源评分 ：<span style="color: red">${score.talent_score}</span>  分</p>
                                        <p style="text-align: center">所有高校平均科得分 ：<span  id="talent_avg" style="color: red"> ${score_avg.talent_avg} </span> 分</p>
                                        <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.talent_rank}</span></p>
                                        <p style="text-align: center">您的学校超越了<span  id="talent_num" style="color: red">98.32</span>%的高校</p>
                                            <script type="text/javascript">
                                             var a =  ${score.numbers};
                                             var b =  ${score.talent_rank};
                                             var c = (1-b/a) * 100; 
                                             var d = c.toFixed(2);   
                                             
                                             $("#talent_num").text(d);

                                             var e = ${score_avg.talent_avg};
                                             $("#talent_avg").text(e.toFixed(2));
                                            </script>                                                
                                    </div>

                                    <div class="col-md-6">
                                        <img src="<c:url value="/resources/img/scientist-with-lab-goggles-and-flask-with-chemical.png" />" class="imgCenter"/>
                                        <p style="text-align: center"><span id="compare_college_talent"></span></p>
                                        <p style="text-align: center">人才资源评分 ：<span id="compare_talent_score" style="color: red"></span>  分</p>
                                        <p style="text-align: center">所有高校平均科得分 ：<span  id="compare_talent_avg" style="color: red"> </span> 分</p>
                                        <p style="text-align: center">在所有高校中排名第<span id="compare_talent_rank" style="color: red"></span></p>
                                        <p style="text-align: center">您的学校超越了<span  id="compare_talent_num" style="color: red"></span>%的高校</p>                                            
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              长江学者数量对比
                                          </div>
                                          <div class="panel-body">
                                            <div id="bar_changjaingNum"></div>
                                          </div>
                                        </div>    
                                    </div>
                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              两院院士数量对比
                                          </div>
                                          <div class="panel-body">
                                            <div id="bar_yuanshiNum"></div>
                                          </div>
                                        </div>    
                                    </div>
                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              正高职科研人员比例
                                          </div>
                                          <div class="panel-body">
                                            <div id="bar_snrPctg"></div>
                                          </div>
                                        </div>    
                                    </div>

                                    <div class="col-md-3">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              科研人员占全时人员比例
                                          </div>
                                          <div class="panel-body">
                                            <div id="bar_rdPctg"></div>
                                          </div>
                                        </div>    
                                    </div>
                                </div>
                                <hr>

                                    <!--科研平台-->
                                <div class="row">
                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="text-box" >
                                        <p style="text-align: center" style="color: gray"> <b>科研平台</b></p>
                                        <br />
                                    </div>
                                  </div> 
                                </div> 

                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="<c:url value="/resources/img/lab-microscope.png" />" class="imgCenter"/>
                                        <p style="text-align: center"><span>${college.college_title}</span></p>
                                        <p style="text-align: center">科研平台评分 ：<span style="color: red">${score.platform_score}</span>  分</p>
                                        <p style="text-align: center">所有高校平均科得分 ：<span  id="talent_avg" style="color: red"> ${score_avg.platform_avg} </span> 分</p>
                                        <p style="text-align: center">在所有${score.numbers} 所高校中排名第<span style="color: red">${score.platform_rank}</span></p>
                                        <p style="text-align: center">您的学校超越了<span  id="talent_num" style="color: red">98.32</span>%的高校</p>
                                            <script type="text/javascript">
                                             var a =  ${score.numbers};
                                             var b =  ${score.platform_rank};
                                             var c = (1-b/a) * 100; 
                                             var d = c.toFixed(2);   
                                             
                                             $("#talent_num").text(d);

                                             var e = ${score_avg.platform_avg};
                                             $("#talent_avg").text(e.toFixed(2));
                                            </script>                                                
                                    </div>

                                    <div class="col-md-6">
                                        <img src="<c:url value="/resources/img/lab-microscope.png" />" class="imgCenter"/>
                                        <p style="text-align: center"><span id="compare_college_platform"></span></p>
                                        <p style="text-align: center">科研平台评分 ：<span id="compare_platform_score" style="color: red"></span>  分</p>
                                        <p style="text-align: center">所有高校平均科得分 ：<span  id="compare_platform_avg" style="color: red"> </span> 分</p>
                                        <p style="text-align: center">在所有高校中排名第<span id="compare_platform_rank" style="color: red"></span></p>
                                        <p style="text-align: center">您的学校超越了<span  id="compare_platform_num" style="color: red"></span>%的高校</p>                                            
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              一级硕士点数量对比
                                          </div>
                                          <div class="panel-body">
                                            <div id="bar_MasterNum"></div>
                                          </div>
                                        </div>    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              一级博士点数量对比
                                          </div>
                                          <div class="panel-body">
                                            <div id="bar_DocNum"></div>
                                          </div>
                                        </div>    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="panel panel-default">
                                          <div class="panel-heading">
                                              省部级以上科研平台数量
                                          </div>
                                          <div class="panel-body">
                                            <div id="bar_lab"></div>
                                          </div>
                                        </div>    
                                    </div>
                                </div>
                                </br>
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


                                <hr>
                                <!--!!!!!!!!!科研投入能力-->
                                <div id="profile1" class="row">
                                  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="text-box" >
                                        <p class="main-text" style="text-align: center" >科研投入能力</p>
                                        <br />
                                    </div>
                                  </div> 
                                </div> 

                                <div class="row">
                                    <!--2015年科研课题总数-->
                                    <div class="col-md-4">
                                      <div class="panel panel-default">
                                        <div class="panel-heading">
                                            科研课题总数
                                        </div>
                                        <div class="panel-body">
                                          <div id="bar_projNum"></div>
                                        </div>
                                      </div>
                                    </div>

                                    <!--2015年科研经费总额-->
                                    <div class="col-md-4">
                                      <div class="panel panel-default">
                                        <div class="panel-heading">
                                            科研经费总额
                                        </div>
                                        <div class="panel-body">
                                          <div id="bar_RDNum"></div>
                                        </div>
                                      </div>
                                    </div>

                                    <!--2015年人均R&D经费-->
                                    <div class="col-md-4">
                                      <div class="panel panel-default">
                                        <div class="panel-heading">
                                            人均科研经费
                                        </div>
                                        <div class="panel-body">
                                          <div id="bar_RDppNum"></div>
                                        </div>
                                      </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-1"> </div>  
                                    <!--近五年国家自然科学基金立项数-->
                                    <div class="col-md-4">
                                      <div class="panel panel-default">
                                        <div class="panel-heading">
                                            国家自然科学基金立项数
                                        </div>
                                        <div class="panel-body">
                                          <div id="bar_NaturePrize"></div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="col-md-2"> </div>
                                    <!--近五年国家社会科学基金立项数-->
                                    <div class="col-md-4">
                                      <div class="panel panel-default">
                                        <div class="panel-heading">
                                            国家社会科学基金立项数
                                        </div>
                                        <div class="panel-body">
                                          <div id="bar_SocialPrize"></div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="col-md-1"> </div>  
                                </div>
                                <div class="row">
                                    <div class="col-md-10"> </div>
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
                                
                                


                              </div>

                              <div class="tab-pane fade" id="profile">
                    

                              </div>

                              <div class="tab-pane fade" id="messages">

                              </div>
                            </div>

                        </div>
                    </div>
                  </div>
                </div>
                
                
                          
                 <!-- /. ROW  -->
                 
                 <!-- /. ROW  -->
      
                 <!-- /. ROW  -->
                
                 <!-- /. ROW  -->
                
                 <!-- /. ROW  -->
                
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
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
    
    <script>

      //声明全局变量
      var college_compare_name;
      var college_compare_city1;
      var college_compare_city;
      var college_compare_type;
      var college_compare_grade;
      var overall_score;

      var data = eval('('+'${college_city1}'+')'); 
      for(var i=0;i<data.length;i++){
          var obj = data[i];
          var city1_name = obj.college_city_lvl1;    
          $('#city1_select')
                     .append($("<option></option>")
                                .attr("value",i)
                                .text(city1_name)); 
      }

      $("#city1_select").change(function(){
            var parentId = $("#city1_select").val();
            if(parentId == -1) alert("请选择省或直辖市");
            var city1 = $("#city1_select option:selected").text().trim();

            $.ajax({
                url  : "city1", 
                type : 'GET',
                data : {
                    'city1' : city1
                },
                dataType : 'json',
                error:function()
                {
                    alert('Error loading data!');
                },
                success:function(msg)
                {
                    $("#city2_select").empty(); 
                    var data_city2 = msg;
                    $('#city2_select')
                     .append($("<option></option>")
                                .attr("value",-1)
                                .text("全部城市"));  
                     for(var i=0;i<data_city2.length;i++){
                        var obj = data_city2[i];
                        var city2_name = obj.college_city_lvl2;    
                        $('#city2_select')
                                   .append($("<option></option>")
                                              .attr("value",i)
                                              .text(city2_name)); 
                    }
                }
            });

            //Update college names for all city2s
            $.ajax({
                url  : "city1_all", 
                type : 'GET',
                data : {
                    'city1' : city1
                },
                dataType : 'json',
                error:function()
                {
                    alert('Error loading data!');
                },
                success:function(msg)
                {
                    $("#name_select").empty(); 
                    var data_city1_all = msg;

                    // Add 请选择 option to the selection
                     $('#name_select')
                     .append($("<option></option>")
                                .attr("value",-1)
                                .text("请选择学校")); 
                     for(var i=0;i<data_city1_all.length;i++){
                        var obj = data_city1_all[i];
                        var clg_name = obj.college_title;    
                        $('#name_select')
                                   .append($("<option></option>")
                                              .attr("value",i)
                                              .text(clg_name)); 
                    }
                }
            });
        });

        $("#city2_select").change(function(){
            var parentId = $("#city2_select").val();
            var city1 = $("#city1_select option:selected").text().trim();
            if(parentId == -1){
               //update all college names with city1 
               $.ajax({
                  url  : "city1_all", 
                  type : 'GET',
                  data : {
                      'city1' : city1
                  },
                  dataType : 'json',
                  error:function()
                  {
                      alert('Error loading data!');
                  },
                  success:function(msg)
                  {
                      $("#name_select").empty(); 
                      // Add 请选择 option to the selection
                     $('#name_select')
                     .append($("<option></option>")
                                .attr("value",-1)
                                .text("请选择学校")); 
                      var data_city1_all = msg;
                       for(var i=0;i<data_city1_all.length;i++){
                          var obj = data_city1_all[i];
                          var clg_name = obj.college_title;    
                          $('#name_select')
                                     .append($("<option></option>")
                                                .attr("value",i)
                                                .text(clg_name)); 
                      }
                  }
               });
            }else{
                // Update college name for specific city2
                var city2 = $("#city2_select option:selected").text().trim();
                $.ajax({
                    url  : "city2", 
                    type : 'GET',
                    data : {
                        'city2' : city2
                    },
                    dataType : 'json',
                    error:function()
                    {
                        alert('Error loading data!');
                    },
                    success:function(msg)
                    {
                        $("#name_select").empty(); 
                        // Add 请选择 option to the selection
                         $('#name_select')
                         .append($("<option></option>")
                                    .attr("value",-1)
                                    .text("请选择学校")); 
                        var data_clg = msg;  
                        for(var i=0;i<data_clg.length;i++){
                            var obj = data_clg[i];
                            var clg_name = obj.college_title;    
                            $('#name_select')
                                       .append($("<option></option>")
                                                  .attr("value",i)
                                                  .text(clg_name)); 
                        }
                    }
                });
            }
    
        });

        //If user select a collge, store college info in global var
        $("#name_select").change(function(){
            var college_name = $("#name_select option:selected").text().trim();
            $.ajax({
                url  : "college_input", 
                type : 'GET',
                data : {
                    'college_name' : college_name
                },
                dataType : 'json',
                error:function()
                {
                    alert('Error loading data!');
                },
                success:function(msg)
                {
                    var data = msg;
                    console.log(msg);
                    college_compare_name = data.college_title;
                    college_compare_city1 = data.college_city_lvl1;
                    college_compare_city = data.college_city_lvl2;
                    college_compare_type = data.college_type;
                    college_compare_grade = data.college_grade;
                     //alert(college_compare_name);
                     updatePageHead(college_compare_name, college_compare_city, college_compare_city1, college_compare_type, college_compare_grade);

                     //Update all Ajax Info
                      $.ajax({
                      url  : "all", 
                      type : 'GET',
                      data : {
                          'college_name' : college_name
                      },
                      dataType : 'json',
                      error:function()
                      {
                          alert('Error loading data!');
                      },
                      success:function(msg)
                      {
                           var data = msg;
                           var college_name_left = "${college.college_title}";
                           //updateScoreHead(data.score.overall_score, data.score.overall_rank, data.score.city_rank, college_compare_city);
                           var college_number = ${score.numbers};
                           updateThreePie(data.score.overall_score, data.score.overall_rank, data.score.city_rank, college_number);
                           updateProgressBar(data.score.overall_score, data.score.overall_rank, data.score.city_rank, college_number);
                           

                          //Update lvl1 socre donut chart
                           var input_score1 = ${score.input_score};
                           var basic_score1 = ${score.basic_score};
                           var output_score1 = ${score.output_score};
                           var overall_score1 = ${score.overall_score};
                           updateDonutChartLvl1(data.score.basic_score, data.score.input_score, data.score.output_score, data.score.overall_score, basic_score1, input_score1, output_score1, overall_score1, college_name_left, college_compare_name);   

                          //Update lvl2 score donut chart
                           var talent_score = data.score.talent_score;
                           var platform_score = data.score.platform_score;
                           var input_score = data.score.input_score;
                           var paper_score = data.score.paper_score;
                           var prize_score = data.score.prize_score;
                           var patent_score = data.score.patent_score;
                           var transform_score = data.score.transform_score;

                           var talent_score1 = ${score.talent_score};
                           var platform_score1 = ${score.platform_score};
                           var paper_score1 = ${score.paper_score};
                           var prize_score1 = ${score.prize_score};
                           var patent_score1 = ${score.patent_score};
                           var transform_score1 = ${score.transform_score};
                   
                       
                           updateTable1(college_compare_name, data.score.basic_score, data.score.input_score, data.score.output_score, data.score.overall_score);
                           updateTable2(college_compare_name,talent_score,platform_score,input_score,paper_score,prize_score,patent_score,transform_score);

                           updateDonutChartLvl2(talent_score,platform_score,input_score,paper_score,prize_score,patent_score,transform_score,talent_score1,platform_score1,input_score1,paper_score1,prize_score1,patent_score1,transform_score1,college_name_left,college_compare_name);

                          //Update tab1 box1
                          updateText("paper_score",data.score.paper_score);
                          updateText("paper_rank",data.score.paper_rank);
                          var a =  data.score.numbers;
                          var b =  data.score.paper_rank;
                          var c = (1-b/a) * 100; 
                          var d = c.toFixed(2);   
                          console.log(d);
                          updateText("paper_pctg2",d);

                          //update tab1 spiderchart paper                         
                          var ref_score = data.score_paper.ref_score;
                          var sci_score = data.score_paper.sci_score;
                          var pku_score = data.score_paper.pku_score;
                          var patent_score = data.score.patent_score;

                          var ref_score1 = ${paper_score.ref_score};
                          var sci_score1 = ${paper_score.sci_score};
                          var pku_score1 = ${paper_score.pku_score};
                          var patent_score1 = ${score.patent_score};
                          
                          updateSpiderChartPaper(ref_score,sci_score,pku_score,patent_score,ref_score1,sci_score1,pku_score1,patent_score1,college_name_left, college_compare_name);

                          //Update Line chart for all paper numbers
                          var data_paper1 = eval('('+'${paper_year_json}'+')');    
                          var data_paper2 = eval('('+'data.paper_by_year'+')'); 
                          updateLineChartpaperNum(data_paper1,data_paper2,college_name_left,college_compare_name);

                          //Update Line chart for SCI and EI numbers
                          updateLineChartSCINum(data_paper1,data_paper2,college_name_left,college_compare_name);

                          //Update Line chart for CSSCI ISITC PKU numbers
                          updateLineChartPKUNum(data_paper1,data_paper2,college_name_left,college_compare_name);

                          //Update Line chart for ref numbers
                          updateLineChartRefNum(data_paper1,data_paper2,college_name_left,college_compare_name);

                          //UPdate panel heading title for subject donut chart
                          updateText("sub1_left", college_name_left);
                          updateText("sub1_right", college_compare_name);

                          //Update donut chart for lvl1 subject
                          var data_subject1 = eval('('+'${sub1_num_json}'+')'); 
                          var data_subject2 = eval('('+'data.sub1_num_list'+')'); 
                          updateDonutChartSubject(data_subject1,data_subject2,college_name_left,college_compare_name);

                          //Update Patent text
                          updateText("compare_college", college_compare_name);
                          updateText("compare_patent_score", patent_score);
                          updateText("compare_patent_avg", data.score_avg.patent_avg.toFixed(2));
                          updateText("compare_patent_rank", data.score.patent_rank);
                          var numbers = data.score.numbers;
                          var patent_rank_pctg =  (1-data.score.patent_rank/numbers) * 100; 
                          updateText("compare_patent_num", patent_rank_pctg.toFixed(2));
                          
                          //Update Patent bar chart
                          var patent_num1 = ${talent_patent.patent_num};
                          updateBarTwo(patent_num1, data.talent_patent.patent_num, college_name_left,college_compare_name,'专利数量',bar_patent);

                          //Update Prize text
                          updateText("compare_college_prize", college_compare_name);
                          updateText("compare_prize_score", prize_score);
                          updateText("compare_prize_avg", data.score_avg.prize_avg.toFixed(2));
                          updateText("compare_prize_rank", data.score.prize_rank);
                          var numbers = data.score.numbers;
                          var prize_rank_pctg =  (1-data.score.prize_rank/numbers) * 100; 
                          updateText("compare_prize_num", prize_rank_pctg.toFixed(2));

                          //Update Prize bar chart
                          var prize_num1 = ${talent.total_prize_num};
                          updateBarTwo(prize_num1, data.talent_org.total_prize_num, college_name_left,college_compare_name,'获奖数量',bar_prize);

                          //Update Transform text
                          updateText("compare_college_transform", college_compare_name);
                          updateText("compare_transform_score", transform_score);
                          updateText("compare_transform_avg", data.score_avg.transform_avg.toFixed(2));
                          updateText("compare_transform_rank", data.score.transform_rank);
                          var numbers = data.score.numbers;
                          var transform_rank_pctg =  (1-data.score.transform_rank/numbers) * 100; 
                          updateText("compare_transform_num", transform_rank_pctg.toFixed(2));

                          //Update Transform bar chart
                          var dealNum_score1 = ${talent_other.dealNum_score};
                          var dealMoney_score1 = ${talent_other.dealMoney_score};
                          updateBarTwo(dealNum_score1, data.talent_other.dealNum_score, college_name_left,college_compare_name,'签订合同数',bar_dealNum);
                          updateBarTwo(dealMoney_score1, data.talent_other.dealMoney_score, college_name_left,college_compare_name,'技术转让收入(千元)',bar_dealMoney);

                          //Update Input tab bar charts
                          var projectNum1 = ${talent_other.projectNum_score};
                          updateBarTwo(projectNum1, data.talent_other.projectNum_score, college_name_left,college_compare_name,'科研课题总数',bar_projNum);
                          var RDMoneyNum1 = ${talent_other.rdMoney_score};
                          updateBarTwo(RDMoneyNum1, data.talent_other.rdMoney_score, college_name_left,college_compare_name,'科研经费总额(千元)',bar_RDNum);
                          var RDMoneyppNum1 = ${talent_other.rdMoneyPp_score};
                          updateBarTwo(RDMoneyppNum1, data.talent_other.rdMoneyPp_score, college_name_left,college_compare_name,'人均科研经费',bar_RDppNum);
                          var NaturePrizeNum1 = ${talent.nature_prize_num};
                          updateBarTwo(NaturePrizeNum1, data.talent_org.nature_prize_num, college_name_left,college_compare_name,'国家自然科学基金立项数',bar_NaturePrize);
                          var SocailPrizeNum1 = ${talent.social_prize_num};
                          updateBarTwo(SocailPrizeNum1, data.talent_org.social_prize_num, college_name_left,college_compare_name,'国家社会科学基金立项数',bar_SocialPrize);

                          //Update talent text
                          updateText("compare_college_talent", college_compare_name);
                          updateText("compare_talent_score", talent_score);
                          updateText("compare_talent_avg", data.score_avg.talent_avg.toFixed(2));
                          updateText("compare_talent_rank", data.score.talent_rank);
                          var talent_rank_pctg =  (1-data.score.talent_rank/numbers) * 100; 
                          updateText("compare_talent_num", talent_rank_pctg.toFixed(2));

                          //Update talent bar chart
                          var YuanshiNum1 = ${talent.yuanshi_num};
                          updateBarTwo(YuanshiNum1, data.talent_org.yuanshi_num, college_name_left,college_compare_name,'两院院士人数',bar_yuanshiNum);
                          var ChangjiangNum1 = ${talent.changjiang_num};
                          updateBarTwo(ChangjiangNum1, data.talent_org.changjiang_num, college_name_left,college_compare_name,'长江学者人数',bar_changjaingNum);
                          var snrpctgNum1 = (${talent_other.snrPctg_score}*100).toFixed(2);
                          updateBarTwo(snrpctgNum1, (100*data.talent_other.snrPctg_score).toFixed(2), college_name_left,college_compare_name,'正高职科研人员比例%',bar_snrPctg);
                          var rdpctgNum1 = (${talent_other.rdPctg_score}*100).toFixed(2);
                          updateBarTwo(rdpctgNum1, (100*data.talent_other.rdPctg_score).toFixed(2), college_name_left,college_compare_name,'科研人员占全时人员比例%',bar_rdPctg);

                          //Update platform text
                          updateText("compare_college_platform", college_compare_name);
                          updateText("compare_platform_score", platform_score);
                          updateText("compare_platform_avg", data.score_avg.platform_avg.toFixed(2));
                          updateText("compare_platform_rank", data.score.platform_rank);
                          var platform_rank_pctg =  (1-data.score.platform_rank/numbers) * 100; 
                          updateText("compare_platform_num", platform_rank_pctg.toFixed(2));

                          //Update platform bar chart
                          var MasterNum1 = ${talent.master_num};
                          updateBarTwo(MasterNum1, data.talent_org.master_num, college_name_left,college_compare_name,'一级硕士点数量对比',bar_MasterNum);
                          var DocNum1 = ${talent.doc_num};
                          updateBarTwo(DocNum1, data.talent_org.doc_num, college_name_left,college_compare_name,'一级博士点数量对比',bar_DocNum);
                          var labNum1 = ${talent.lab_num};
                          updateBarTwo(labNum1, data.talent_org.lab_num, college_name_left,college_compare_name,'省部级以上科研平台数量',bar_lab);
                                 
                      }
                    });                  
                }
            });  
        });
  

        //处理用户输入框
       
        $("#submit").click(function(){
          var college_name = $("#input_name").val();
          if(college_name=='')
          {
            alert("Please Fill College Name Fields");
          }
          else
          {
            // AJAX Code To Submit Form.
            $.ajax({
              type: "GET",
              url: "college_input",
              data : {
                      'college_name' : college_name
                  },
              cache: false,
              error:function()
              {
                alert('未找到结果，请重新输入');
              },
              success: function(result){
                if(result==null || result ==''){
                   alert('未找到结果，请重新输入');
                }
                var data = result;
                alert(data.college_title);
                college_compare_name = data.college_title;
                college_compare_city = data.college_city_lvl2;
                college_compare_city1 = data.college_city_lvl1;
                college_compare_type = data.college_type;
                college_compare_grade = data.college_grade;
                updatePageHead(college_compare_name, college_compare_city, college_compare_city1, college_compare_type, college_compare_grade);
  

                //Update all Ajax Info
                $.ajax({
                  url  : "all", 
                  type : 'GET',
                  data : {
                      'college_name' : college_name
                  },
                  dataType : 'json',
                  error:function()
                  {
                      alert('Error loading data!');
                  },
                  success:function(msg)
                  {
                      var data = msg;
                      var college_name_left = "${college.college_title}";
                      //updateScoreHead(data.score.overall_score, data.score.overall_rank, data.score.city_rank, college_compare_city);
                      var college_number = ${score.numbers};
                      updateThreePie(data.score.overall_score, data.score.overall_rank, data.score.city_rank, college_number);
                      updateProgressBar(data.score.overall_score, data.score.overall_rank, data.score.city_rank, college_number);
                      updateTable1(college_compare_name, data.score.basic_score, data.score.input_score, data.score.output_score, data.score.overall_score);

                    //Update lvl1 socre donut chart
                     var input_score1 = ${score.input_score};
                     var basic_score1 = ${score.basic_score};
                     var output_score1 = ${score.output_score};
                     var overall_score1 = ${score.overall_score};
                     updateDonutChartLvl1(data.score.basic_score, data.score.input_score, data.score.output_score, data.score.overall_score, basic_score1, input_score1, output_score1, overall_score1, college_name_left, college_compare_name);   

                    //Update lvl2 score donut chart
                     var talent_score = data.score.talent_score;
                     var platform_score = data.score.platform_score;
                     var input_score = data.score.input_score;
                     var paper_score = data.score.paper_score;
                     var prize_score = data.score.prize_score;
                     var patent_score = data.score.patent_score;
                     var transform_score = data.score.transform_score;

                     var talent_score1 = ${score.talent_score};
                     var platform_score1 = ${score.platform_score};
                     var paper_score1 = ${score.paper_score};
                     var prize_score1 = ${score.prize_score};
                     var patent_score1 = ${score.patent_score};
                     var transform_score1 = ${score.transform_score};

                     updateTable2(college_compare_name,talent_score,platform_score,input_score,paper_score,prize_score,patent_score,transform_score);
             
                 

                     //var talent_avg = data.score_avg.talent_avg;
                     //var platform_avg = data.score_avg.platform_avg;
                     //var input_avg = data.score_avg.input_avg;
                     //var paper_avg = data.score_avg.paper_avg;
                     //var prize_avg = data.score_avg.prize_avg;
                     //var patent_avg = data.score_avg.patent_avg;
                     //var transform_avg = data.score_avg.transform_avg; 
                     updateDonutChartLvl2(talent_score,platform_score,input_score,paper_score,prize_score,patent_score,transform_score,talent_score1,platform_score1,input_score1,paper_score1,prize_score1,patent_score1,transform_score1,college_name_left,college_compare_name);

                    //Update tab1 box1
                    updateText("paper_score",data.score.paper_score);
                    updateText("paper_rank",data.score.paper_rank);
                    var a =  data.score.numbers;
                    var b =  data.score.paper_rank;
                    var c = (1-b/a) * 100; 
                    var d = c.toFixed(2);   
                    console.log(d);
                    updateText("paper_pctg2",d);

                    //update tab1 spiderchart paper                         
                    var ref_score = data.score_paper.ref_score;
                    var sci_score = data.score_paper.sci_score;
                    var pku_score = data.score_paper.pku_score;
                    var patent_score = data.score.patent_score;

                    var ref_score1 = ${paper_score.ref_score};
                    var sci_score1 = ${paper_score.sci_score};
                    var pku_score1 = ${paper_score.pku_score};
                    var patent_score1 = ${score.patent_score};
                    
                    updateSpiderChartPaper(ref_score,sci_score,pku_score,patent_score,ref_score1,sci_score1,pku_score1,patent_score1,college_name_left, college_compare_name);

                    //Update Line chart for all paper numbers
                    var data_paper1 = eval('('+'${paper_year_json}'+')');    
                    var data_paper2 = eval('('+'data.paper_by_year'+')'); 
                    updateLineChartpaperNum(data_paper1,data_paper2,college_name_left,college_compare_name);

                    //Update Line chart for SCI and EI numbers
                    updateLineChartSCINum(data_paper1,data_paper2,college_name_left,college_compare_name);

                    //Update Line chart for CSSCI ISITC PKU numbers
                    updateLineChartPKUNum(data_paper1,data_paper2,college_name_left,college_compare_name);

                    //Update Line chart for ref numbers
                    updateLineChartRefNum(data_paper1,data_paper2,college_name_left,college_compare_name);

                    //UPdate panel heading title for subject donut chart
                    updateText("sub1_left", college_name_left);
                    updateText("sub1_right", college_compare_name);

                    //Update donut chart for lvl1 subject
                    var data_subject1 = eval('('+'${sub1_num_json}'+')'); 
                    var data_subject2 = eval('('+'data.sub1_num_list'+')'); 
                    updateDonutChartSubject(data_subject1,data_subject2,college_name_left,college_compare_name);

                    //Update Patent text
                    updateText("compare_college", college_compare_name);
                    updateText("compare_patent_score", patent_score);
                    updateText("compare_patent_avg", data.score_avg.patent_avg.toFixed(2));
                    updateText("compare_patent_rank", data.score.patent_rank);
                    var numbers = data.score.numbers;
                    var patent_rank_pctg =  (1-data.score.patent_rank/numbers) * 100; 
                    updateText("compare_patent_num", patent_rank_pctg.toFixed(2));
                    
                    //Update Patent bar chart
                    var patent_num1 = ${talent_patent.patent_num};
                    updateBarTwo(patent_num1, data.talent_patent.patent_num, college_name_left,college_compare_name,'专利数量',bar_patent);

                    //Update Prize text
                    updateText("compare_college_prize", college_compare_name);
                    updateText("compare_prize_score", prize_score);
                    updateText("compare_prize_avg", data.score_avg.prize_avg.toFixed(2));
                    updateText("compare_prize_rank", data.score.prize_rank);
                    var numbers = data.score.numbers;
                    var prize_rank_pctg =  (1-data.score.prize_rank/numbers) * 100; 
                    updateText("compare_prize_num", prize_rank_pctg.toFixed(2));

                    //Update Prize bar chart
                    var prize_num1 = ${talent.total_prize_num};
                    updateBarTwo(prize_num1, data.talent_org.total_prize_num, college_name_left,college_compare_name,'获奖数量',bar_prize);

                    //Update Transform text
                    updateText("compare_college_transform", college_compare_name);
                    updateText("compare_transform_score", transform_score);
                    updateText("compare_transform_avg", data.score_avg.transform_avg.toFixed(2));
                    updateText("compare_transform_rank", data.score.transform_rank);
                    var numbers = data.score.numbers;
                    var transform_rank_pctg =  (1-data.score.transform_rank/numbers) * 100; 
                    updateText("compare_transform_num", transform_rank_pctg.toFixed(2));

                    //Update Transform bar chart
                    var dealNum_score1 = ${talent_other.dealNum_score};
                    var dealMoney_score1 = ${talent_other.dealMoney_score};
                    updateBarTwo(dealNum_score1, data.talent_other.dealNum_score, college_name_left,college_compare_name,'签订合同数',bar_dealNum);
                    updateBarTwo(dealMoney_score1, data.talent_other.dealMoney_score, college_name_left,college_compare_name,'技术转让收入(千元)',bar_dealMoney);

                    //Update Input tab bar charts
                    var projectNum1 = ${talent_other.projectNum_score};
                    updateBarTwo(projectNum1, data.talent_other.projectNum_score, college_name_left,college_compare_name,'科研课题总数',bar_projNum);
                    var RDMoneyNum1 = ${talent_other.rdMoney_score};
                    updateBarTwo(RDMoneyNum1, data.talent_other.rdMoney_score, college_name_left,college_compare_name,'科研经费总额(千元)',bar_RDNum);
                    var RDMoneyppNum1 = ${talent_other.rdMoneyPp_score};
                    updateBarTwo(RDMoneyppNum1, data.talent_other.rdMoneyPp_score, college_name_left,college_compare_name,'人均科研经费',bar_RDppNum);
                    var NaturePrizeNum1 = ${talent.nature_prize_num};
                    updateBarTwo(NaturePrizeNum1, data.talent_org.nature_prize_num, college_name_left,college_compare_name,'国家自然科学基金立项数',bar_NaturePrize);
                    var SocailPrizeNum1 = ${talent.social_prize_num};
                    updateBarTwo(SocailPrizeNum1, data.talent_org.social_prize_num, college_name_left,college_compare_name,'国家社会科学基金立项数',bar_SocialPrize);

                    //Update talent text
                    updateText("compare_college_talent", college_compare_name);
                    updateText("compare_talent_score", talent_score);
                    updateText("compare_talent_avg", data.score_avg.talent_avg.toFixed(2));
                    updateText("compare_talent_rank", data.score.talent_rank);
                    var talent_rank_pctg =  (1-data.score.talent_rank/numbers) * 100; 
                    updateText("compare_talent_num", talent_rank_pctg.toFixed(2));

                    //Update talent bar chart
                    var YuanshiNum1 = ${talent.yuanshi_num};
                    updateBarTwo(YuanshiNum1, data.talent_org.yuanshi_num, college_name_left,college_compare_name,'两院院士人数',bar_yuanshiNum);
                    var ChangjiangNum1 = ${talent.changjiang_num};
                    updateBarTwo(ChangjiangNum1, data.talent_org.changjiang_num, college_name_left,college_compare_name,'长江学者人数',bar_changjaingNum);
                    var snrpctgNum1 = (${talent_other.snrPctg_score}*100).toFixed(2);
                    updateBarTwo(snrpctgNum1, (100*data.talent_other.snrPctg_score).toFixed(2), college_name_left,college_compare_name,'正高职科研人员比例%',bar_snrPctg);
                    var rdpctgNum1 = (${talent_other.rdPctg_score}*100).toFixed(2);
                    updateBarTwo(rdpctgNum1, (100*data.talent_other.rdPctg_score).toFixed(2), college_name_left,college_compare_name,'科研人员占全时人员比例%',bar_rdPctg);

                    //Update platform text
                    updateText("compare_college_platform", college_compare_name);
                    updateText("compare_platform_score", platform_score);
                    updateText("compare_platform_avg", data.score_avg.platform_avg.toFixed(2));
                    updateText("compare_platform_rank", data.score.platform_rank);
                    var platform_rank_pctg =  (1-data.score.platform_rank/numbers) * 100; 
                    updateText("compare_platform_num", platform_rank_pctg.toFixed(2));

                    //Update platform bar chart
                    var MasterNum1 = ${talent.master_num};
                    updateBarTwo(MasterNum1, data.talent_org.master_num, college_name_left,college_compare_name,'一级硕士点数量对比',bar_MasterNum);
                    var DocNum1 = ${talent.doc_num};
                    updateBarTwo(DocNum1, data.talent_org.doc_num, college_name_left,college_compare_name,'一级博士点数量对比',bar_DocNum);
                    var labNum1 = ${talent.lab_num};
                    updateBarTwo(labNum1, data.talent_org.lab_num, college_name_left,college_compare_name,'省部级以上科研平台数量',bar_lab);         
                  }
                });   
              }
            });
          }
          //return false;
        });

       function updatePageHead(college_compare_name, college_compare_city, college_compare_city1, college_compare_type, college_compare_grade){
        //Update college compare title, city and type
        
        $("#college_compare_title").html('<p style="text-align: center; font-size:26px; color:white; padding-top: 2px;"><strong>'+college_compare_name+'</strong></p> ');
        $("#college_compare_city").html('<p style="color: black;font-size: 26px;text-align: center;"> <strong>'+college_compare_city+'</strong></p> ');
        $("#college_compare_city1").html('<p style="color: black;font-size: 26px;text-align: center;"> <strong>'+college_compare_city1+'</strong></p> ');
        $("#college_compare_type").html('<p style="color: black;font-size: 26px;text-align: center;"> <strong>'+college_compare_type+'</strong></p> ');
        $("#college_compare_grade").html('<p style="color: black;font-size: 26px;text-align: center;"> <strong>'+college_compare_grade+'</strong></p> ');    
       }

       function updateScoreHead(overall_score, overall_rank, city_rank, college_compare_city){
        //Update college overall score
        $("#overall_score").text(overall_score);
        $("#overall_rank").text(overall_rank); 
        $("#city_rank").text(city_rank); 
        $("#city_lvl2_2").text("在"+college_compare_city+"地区的所有高校中排名");     
       }

       function updateTable1(clg2_name,basic_score,input_score,output_score,overall_score){
         $("#table_clg2_name"). text(clg2_name);
         $("#table_clg2_basic"). text(basic_score);
         $("#table_clg2_input"). text(input_score);
         $("#table_clg2_output"). text(output_score);
         $("#table_clg2_overall"). text(overall_score);

       }

       function updateTable2(clg2_name,talent_score,platform_score,input_score,paper_score,prize_score,patent_score,transform_score){
         $("#table_clg2_name_2"). text(clg2_name);
         $("#table_clg2_talent"). text(talent_score);
         $("#table_clg2_platform"). text(platform_score);
         $("#table_clg2_input_2"). text(input_score);
         $("#table_clg2_paper"). text(paper_score);
         $("#table_clg2_prize"). text(prize_score);
         $("#table_clg2_patent"). text(patent_score);
         $("#table_clg2_transform"). text(transform_score);

       }

       function updateProgressBar(overall_score, overall_rank, city_rank, college_number){
          $("#progress_bar_clg2_1").html('<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="'+overall_score+'" aria-valuemin="0" aria-valuemax="100" style="width: '+overall_score+'%"></div>');
            var a =  college_number-overall_rank;
            var b =  college_number;
            var c = (a/b) * 100; 
            var d = c.toFixed(2);   
          $("#progress_bar_clg2_2").html('<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="'+d+'" aria-valuemin="0" aria-valuemax="100" style="width: '+d+'%"></div>');

            var e =  college_number-city_rank;
            var f = (e/b) * 100; 
            var g = f.toFixed(2);   
          $("#progress_bar_clg2_3").html('<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="'+g+'" aria-valuemin="0" aria-valuemax="100" style="width: '+g+'%"></div>');
                                         
       }

       function updateThreePie(overall_score, overall_rank, city_rank, college_number){

          $("#donut_overall_score_clg2").empty();
          $("#donut_overall_rank_clg2").empty();
          $("#donut_city_rank_clg2").empty();
          var data_new = [];
            
          data_new.push({
              "label":"综合评分",
              "value":overall_score.toFixed(2)
          });

          data_new.push({
              "label":"距榜首差距",
              "value":100-overall_score.toFixed(2)
          });

          Morris.Donut({
            element: 'donut_overall_score_clg2',
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

          data_new = [];
            
          data_new.push({
              "label":"全国排名",
              "value":overall_rank
          });

          data_new.push({
              "label":"超越高校数量",
              "value": college_number-overall_rank
          });

          Morris.Donut({
            element: 'donut_overall_rank_clg2',
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

          data_new = [];
            
          data_new.push({
              "label":"地区排名",
              "value":city_rank
          });

          data_new.push({
              "label":"超越高校数量",
              "value": college_number-city_rank
          });

          Morris.Donut({
            element: 'donut_city_rank_clg2',
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

                              
       }

       function updateDonutChartLvl1(basic_score,input_score,output_score,overall_score,basic_1,input_1,output_1,overall_1,clg1,clg2){
         //Update Donut chart for lvl1 score
            var data = [
              {
                className: clg1, // optional, can be used for styling
                axes: [
                  {axis: "科研基础能力", value: basic_1, xOffset: 50},
                  {axis: "科研投入能力", value: input_1, yOffset: 50},
                  {axis: "科研产出能力", value: output_1, xOffset: 50, yOffset: -15},   
                  {axis: "综合能力", value: overall_1, yOffset: 50}
                ]
              },
              {
                className: clg2, // optional, can be used for styling
                axes: [
                  {axis: "科研基础能力", value: basic_score, xOffset: 50},
                  {axis: "科研投入能力", value: input_score, yOffset: 50},
                  {axis: "科研产出能力", value: output_score, xOffset: 50, yOffset: -30},   
                  {axis: "综合能力", value: overall_score, yOffset: 50}
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

            RadarChart.draw(".chart-container1", data,mycfg);

            
            var LegendOptions = [clg1,clg2];
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

        
        
                            
       }

       function updateDonutChartLvl2(talent_score,platform_score,input_score,paper_score,prize_score,patent_score,transform_score,talent_score1,platform_score1,input_score1,paper_score1,prize_score1,patent_score1,transform_score1,clg1,clg2){
         //Update Donut chart for lvl2 score

                var data = [
                  {
                    className: clg1, // optional, can be used for styling
                    axes: [
                      {axis: "人才资源", value: talent_score1, xOffset: 50},
                      {axis: "科研平台", value: platform_score1, yOffset: 10},
                      {axis: "科研创新投入能力", value: input_score1, xOffset: 10, yOffset: -30},   
                      {axis: "论文质量", value: paper_score1, xOffset: -10},
                      {axis: "获奖情况", value: prize_score1, xOffset: 40},
                      {axis: "知识产权", value: patent_score1, xOffset: 5},
                      {axis: "科技成果转化", value: transform_score1, xOffset: 30 }                  
                    ]
                  },
                  {
                    className: clg2, // optional, can be used for styling
                    axes: [
                      {axis: "人才资源", value: talent_score, xOffset: 50},
                      {axis: "科研平台", value: platform_score, yOffset: 10},
                      {axis: "科研创新投入能力", value: input_score, xOffset: 10, yOffset: -30},   
                      {axis: "论文质量", value: paper_score, xOffset: -10},
                      {axis: "获奖情况", value: prize_score, xOffset: 40},
                      {axis: "知识产权", value: patent_score, xOffset: 5},
                      {axis: "科技成果转化", value: transform_score, xOffset: 30 }                  
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

                RadarChart.draw(".chart-container2", data,mycfg);  

                var LegendOptions = [clg1,clg2];
                var colorscale = d3.scale.category10();

                var svg = d3.select('#lvl2RadarChart')
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
       }

       function updateText(textId, span){
          $('#'+textId).text(span);
       }
       
       function updateSpiderChartPaper(ref_score,sci_score,pku_score,patent_score,ref_score1,sci_score1,pku_score1,patent_score1, clg1, clg2){
        //para1 is left clg, para is right clg, clg1 is left, clg2 is right
              var data = [
                {
                  className: 'clg1', // optional, can be used for styling
                  axes: [
                    {axis: "被引用次数", value: ref_score1, xOffset: 50},
                    {axis: "被SCI/EI收录", value: sci_score1, yOffset: 10},
                    {axis: "被ISTIC等收录", value: pku_score1, xOffset: 10, yOffset: -30},   
                    {axis: "专利情况", value: patent_score1, xOffset: -10}              
                  ]
                },
                {
                  className: 'clg2', // optional, can be used for styling
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

          var LegendOptions = [clg1,clg2];
          var colorscale = d3.scale.category10();

          var svg = d3.select('#PaperRadarChart')
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
                                          
       }

       function updateLineChartpaperNum(data,data2,name1,name2){
            //var data = eval('('+'${paper_year_json}'+')'); 
            $("#line_paper").empty();
            var data_new = [];
            for(var i=0;i<data.length;i++){
                var obj = data[i];
                var obj2_num = 0;
                for(var j=0;j<data2.length;j++){
                  var obj2 = data2[j];
                  if(obj2.year===obj.year){
                    obj2_num = obj2.paper_num;
                    break;
                  }
                }
                data_new.push({
                    "year":obj.year,
                    "paper_num":obj.paper_num,
                    "paper_num2":obj2_num
                });
            }

            Morris.Line({
              element: 'line_paper',
              data: data_new,
              xkey: 'year',
              ykeys: ['paper_num', 'paper_num2'],
              labels: [name1, name2],
              xLabelAngle: 45
            });
       }

       function updateLineChartSCINum(data,data2,name1,name2){
            //var data = eval('('+'${paper_year_json}'+')'); 
            $("#line_paper_sci").empty();
            var data_new = [];
            for(var i=0;i<data.length;i++){
                var obj = data[i];
                var obj2_sci = 0;
                var obj2_ei = 0;
                for(var j=0;j<data2.length;j++){
                  var obj2 = data2[j];
                  if(obj2.year===obj.year){
                    obj2_sci = obj2.sci_num;
                    obj2_ei = obj2.ei_num;
                    break;
                  }
                }
                data_new.push({
                    "year":obj.year,
                    "sci_num1":obj.sci_num,
                    "ei_num1":obj.ei_num,
                    "sci_num2":obj2_sci,
                    "ei_num2":obj2_ei
                });
            }

            Morris.Line({
              element: 'line_paper_sci',
              data: data_new,
              xkey: 'year',
              ykeys: ['sci_num1', 'ei_num1', 'sci_num2', 'ei_num2'],
              labels: [name1+'SCI收录数', name1+'EI收录数', name2+'SCI收录数', name2+'EI收录数'],
              xLabelAngle: 45
            });
       }

       function updateLineChartPKUNum(data,data2,name1,name2){
            //var data = eval('('+'${paper_year_json}'+')'); 
            $("#line_paper_pku").empty();
            var data_new = [];
            for(var i=0;i<data.length;i++){
                var obj = data[i];
                var obj2_istic_num = 0;
                var obj2_cssci_num = 0;
                var obj2_pku = 0;
                for(var j=0;j<data2.length;j++){
                  var obj2 = data2[j];
                  if(obj2.year===obj.year){
                    obj2_istic_num = obj2.istic_num;
                    obj2_cssci_num = obj2.cssci_num;
                    obj2_pku = obj2.pku_num;
                    break;
                  }
                }
                data_new.push({
                    "year":obj.year,
                    "istic_num1":obj.istic_num,
                    "cssci_num1":obj.cssci_num,
                    "pku_num1":obj.pku_num,
                    "istic_num2":obj2_istic_num,
                    "cssci_num2":obj2_cssci_num,
                    "pku_num2":obj2_pku
                });
            }

            Morris.Line({
              element: 'line_paper_pku',
              data: data_new,
              xkey: 'year',
              ykeys: ['istic_num1', 'cssci_num1', 'pku_num1', 'istic_num2','cssci_num2', 'pku_num2'],
              labels: [name1+'ISTIC收录数', name1+'CSSCI收录数', name1+'PKU收录数', name2+'ISTIC收录数', name2+'CSSCI收录数', name1+'PKU收录数'],
              xLabelAngle: 45
            });
       }

       function updateLineChartRefNum(data,data2,name1,name2){
            $("#line_paper_ref").empty();
            var data_new = [];
            for(var i=0;i<data.length;i++){
                var obj = data[i];
                var obj2_ref_num = 0;
                for(var j=0;j<data2.length;j++){
                  var obj2 = data2[j];
                  if(obj2.year===obj.year){
                    obj2_ref_num = obj2.ref_rate;
                    break;
                  }
                }
                data_new.push({
                    "year":obj.year,
                    "ref_num1":obj.ref_rate,
                    "ref_num2":obj2_ref_num
                });
            }

            Morris.Line({
              element: 'line_paper_ref',
              data: data_new,
              xkey: 'year',
              ykeys: ['ref_num1', 'ref_num2'],
              labels: [name1+'被引用数', name2+'被引用数'],
              xLabelAngle: 45
            });
       }

       function updateDonutChartSubject(data,data2,name1,name2){  
        $("#bar_paper_sub").empty(); 
        $("#donut_paper_sub_left").empty();  
        $("#donut_paper_sub_right").empty();                                                 
        var sum1 = 0;
        for(var i=0;i<data.length;i++){
            sum1+=data[i].sub1_num;
        }

        var sum2 = 0;
        for(var i=0;i<data2.length;i++){
            sum2+=data2[i].sub1_num;
        }
        var data_new = [];
        for(var i=0;i<data.length;i++){
            var obj = data[i];
            var sub1_name = obj.sub1;
            var sub1_num = obj.sub1_num/sum1*100;    
            data_new.push({
                "label":sub1_name,
                "value":sub1_num.toFixed(2)
            });
        }
        var data2_new = [];
        for(var i=0;i<data2.length;i++){
            var obj = data2[i];
            var sub1_name = obj.sub1;
            var sub1_num = obj.sub1_num/sum2*100;    
            data2_new.push({
                "label":sub1_name,
                "value":sub1_num.toFixed(2)
            });
        }
        var data3_new = [];
        for(var i=0;i<data.length;i++){
            var obj = data[i];
            var sub1_name = obj.sub1;
            var sub1_num = obj.sub1_num;
            var sub1_num2 = 0;
            for (var j=0;j<data2.length;j++) {
              var obj2 = data2[j];
              if(sub1_name===obj2.sub1){
                  sub1_num2=obj2.sub1_num;
                  break;
              }
            }   
            data3_new.push({
                "x":sub1_name,
                "y1":sub1_num,
                "y2":sub1_num2
            });
        }

        Morris.Bar({
          element: 'bar_paper_sub',
          data: data3_new,
          xkey: 'x',
          ykeys: ['y1','y2'],
          labels: [name1,name2]
        });

        Morris.Donut({
          element: 'donut_paper_sub_left',
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

         Morris.Donut({
          element: 'donut_paper_sub_right',
          data: data2_new,
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
       }

       function updateBarTwo(data,data2,name1,name2,title,chart_id){ 
        $("#chart_id").empty();  
        var data3_new = [];
        data3_new.push({
          "x":title,
          "y1":data,
          "y2":data2
        });
        Morris.Bar({
          element: chart_id,
          data: data3_new,
          xkey: 'x',
          ykeys: ['y1','y2'],
          labels: [name1,name2]
        });

       } 

 

    </script>  
   
</body>
</html>
