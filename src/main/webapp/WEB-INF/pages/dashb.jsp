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
                        <a class="active-menu"  ><i class="fa fa-dashboard fa-3x"></i> 首页 </a>
                    </li>
                     <li>
                        <a  href="/webapptest/overall"><i class="fa fa-desktop fa-3x"></i> 综合能力 </a>
                    </li>
                    <li>
                        <a  href="/webapptest/compare"><i class="fa fa-qrcode fa-3x"></i> 交叉对比 </a>
                    </li>
                    <li  >
                        <a  href="form.html"><i class="fa fa-edit fa-3x"></i> 联系我们 </a>
                    </li>				
					
					 <!--                  
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i> 横向对比<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">学科对比</a>
                            </li>
                            <li>
                                <a href="#">地区对比</a>
                            </li>
                            <li>
                                <a href="#">办学类型对比<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">本科院校</a>
                                    </li>
                                    <li>
                                        <a href="#">专科院校</a>
                                    </li>
                                    <li>
                                        <a href="#">民办院校</a>
                                    </li>

                                </ul>
                               
                            </li>
                        </ul>
                      </li> 
                      --> 
                  <li  >
                        <a  href="blank.html"><i class="fa fa-square-o fa-3x"></i> Blank Page</a>
                    </li>	
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>功能导航</h2>   
                        <h5>Welcome ${username} , 欢迎回来. </h5>
                    </div>
                </div>    
                
                 <!-- /. ROW  -->
       
                <div class="row" style="align-content: center">
	                <div class="col-md-4 col-sm-6 col-xs-12">    
	                    <img src="<c:url value="/resources/img/p1.png" />" alt="User" style="position: relative;width:100%" /> 
	                    <div style="position:absolute;left:20%;top:50%;width:60%;overflow-wrap:normal">
	                    以大数据为基础，提供全方位、多维度的科研能力综合评价、单项学科评价，及定制化报告下载，更全面地了解高校综合能力。             
	                    </div>  
	                  
	                    <!--<img src="<c:url value="/resources/img/b1.png" />"  href="/webapptest/overall" alt="User" class="col-md-4 imgCenter" style="position:absolute;bottom:5%;width:40%" />		-->
                       <a  href="/webapptest/overall" class="col-md-4 imgCenter" style="position:absolute;bottom:5%;width:40%" ><i class="fa fa-desktop fa-3x"></i> 综合能力 </a>	
			            </div>
	
	                <div class="col-md-4 col-sm-6 col-xs-12">    
	                   <img src="<c:url value="/resources/img/p2.png" />" alt="User" style="position: relative;width:100%" />    
	                    <div style="position:absolute;left:20%;top:50%;width:60%;overflow-wrap:normal">
	                    多种图表可视化数据分析，提供多所学校多项指标自定义对比，灵活了解高校间综合实力及单项学科的差距。             
	                    </div>  
	                    <!--<img src="assets/img/b2.png" class="col-md-4 center" style="position:absolute;left:25%;bottom:5%;width:40%">    -->                   
	                    <!--<img src="<c:url value="/resources/img/b2.png" />" href="/webapptest/compare" alt="User" class="col-md-4 imgCenter" style="position:absolute;bottom:5%;width:40%" />-->
                      <a  href="/webapptest/compare" class="col-md-4 imgCenter" style="position:absolute;bottom:5%;width:40%" ><i class="fa fa-qrcode fa-3x"></i> 交叉对比 </a>  
	                </div>

                  <!--
	                
	                <div class="col-md-4 col-sm-6 col-xs-12">    
	                    <img src="<c:url value="/resources/img/p3.png" />" alt="User" style="position: relative;width:100%" />  
	                    <div style="position:absolute;left:20%;top:50%;width:60%;overflow-wrap:normal">
	                    集论文、专利、项目、职称等多维指标为参考，提供全面的科研人员能力评析。          
	                    </div>  
	                    <img src="<c:url value="/resources/img/b3.png" />" alt="User" class="col-md-4 imgCenter" style="position:absolute;bottom:5%;width:40%" />              
	                </div>
	                
	                <div class="col-md-4 col-sm-6 col-xs-12">    
	                   <img src="<c:url value="/resources/img/p4.png" />" alt="User" style="position: relative;width:100%" /> 
	                    <div style="position:absolute;left:20%;top:50%;width:60%;overflow-wrap:normal">
	                    结合大数据分析，提供智能化未来发展策略报告，直击强势学科及当前弱点，为未来发展提供科学分析依据。          
	                    </div>  
	                    <img src="<c:url value="/resources/img/b4.png" />" alt="User" class="col-md-4 imgCenter" style="position:absolute;bottom:5%;width:40%" />       
	                </div>
	                
	                <div class="col-md-4 col-sm-6 col-xs-12">    
	                    <img src="<c:url value="/resources/img/p5.png" />" alt="User" style="position: relative;width:100%" />  
	                    <div style="position:absolute;left:20%;top:50%;width:60%;overflow-wrap:normal">
	                   
	                    庞大的高校科研能力数据库，提供一键式查询，为您提供实时更新的各项数据详情。        
	                    </div>  
	                    <img src="<c:url value="/resources/img/b5.png" />" alt="User" class="col-md-4 imgCenter" style="position:absolute;bottom:5%;width:40%" />
	                </div>  

                  -->   
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

    var c = [
            {label: "Download Sales", value: 12},
            {label: "In-Store Sales", value: 30},
            {label: "Mail-Order Sales", value: 20},
            {label: "tellme Sales", value: 50}
          ];

        Morris.Donut({
          element: 'example-1',
          data: [
            {value: 79, label: 'foo'},
            {value: 19, label: 'bar'},
            {value: 19, label: 'baz'},
            {value: 5, label: 'A really really long label'}
          ],
          resize: true
        });
    </script>
    
    
   
</body>
</html>
