<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
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
                        <a  href="/webapptest/dashb"><i class="fa fa-dashboard fa-3x"></i> 首页</a>
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
                <div class="row">
                  <p style="text-align: center" style="color: gray"> <b>请选择您想要进行对比的学校</b></p>
                </div>
                <hr>

                <!-- /. ROW  -->
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="panel panel-default">
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
                          <p>请输入目标学校名称：</p>

                          <div id="container">
                              <div id="container">
                                <input id="input_name" name="local" type="" style="width: 400px;">
                              </div>
                
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

        //处理用户输入栏
        var input_val = document.getElementById("input_name").value;
        $.ajax({
            url  : "college_input", 
            type : 'GET',
            data : {
                'college_name' : input_val
            },
            dataType : 'json',
            error:function()
            {
                alert('未找到结果，请重新输入');
            },
            success:function(msg)
            {
                var data_clg = msg;  
                alert(data_clg.college_title);
                
            }
        });

    </script>  
   
</body>
</html>
