<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ page isELIgnored="false"%>
  <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Apply</title>
 <base href="<%=basePath%>">
 <link rel="stylesheet" href="assets/css/bootstrap.min.css">
 <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- External Css -->
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css" />
    <link rel="stylesheet" href="assets/css/et-line.css" />
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css" />
    <link rel="stylesheet" href="assets/css/plyr.css" />
    <link rel="stylesheet" href="assets/css/flag.css" />
    <link rel="stylesheet" href="assets/css/slick.css" /> 
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="assets/css/jquery.nstSlider.min.css" />
    
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/city.js"> </script>
    <script type="text/javascript" src="js/initCity.js"> </script>
      <script type="text/javascript" src="js/position.js"> </script>
    <script type="text/javascript" src="js/initPosition.js"> </script>
    <script type="text/javascript" src="js/education.js"></script>
<script type="text/javascript" src="js/index.js"></script>

    <!-- Custom Css -->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="dashboard/css/dashboard.css">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7CRoboto:300i,400,500" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" href="images/favicon.png">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icon-114x114.png">
    


    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
   iframe {
	width: 100%;
	height: 100%;
	border: none;
	
}
    
    </style>

</head>
<body>

     <div class="dashboard-content-wrapper">
                <div class="dashboard-applied">
                  <h4 class="apply-title">收藏列表</h4>
                  <div class="dashboard-apply-area">

                   <from action="collect" method="post">
                   <c:forEach items="${collectlist }" var="collect">
                    <div class="job-list">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-10.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a  style="font-size: 28px;" href="jobdetail?id=${collect.tbPosition.id }">${collect.tbPosition.name }</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        	<label style="font-size:24px;color: orangered;">${collect.tbPosition.salaryMin /1000}k-${collect.tbPosition.salaryMax /1000}k/月</label></h4>
                     
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>${collect.tbPosition.company.name}</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i><span class="pType"> ${collect.tbPosition.type} </span> </a></span>
                             <span class="job-type part-time"><a href="#"><i data-feather="user"></i><span class="eType">${collect.tbPosition.education}</span> </a></span>
                            <span class="job-type part-time"><a href="#"><i data-feather="clock"></i>发布于${collect.tbPosition.cTime}</a></span>
                         
                          </div>
                        
                        </div>
                        <div class="more">
                          <a href="user/collectDelete?id=${collect.id }" class="bookmark-remove"><i class="fas fa-times"></i></a>
                        </div>
                      </div>
                    </div>
                    </c:forEach>
                    <script type="text/javascript">
								$(function(){
									$(".pType").each(function(i,item){
										 var name = getPositionName($(item).html());
							    		  $(item).html(name);
									});
									
									$(".eType").each(function(i,item){
										  var name = getEducation($(item).html());
							    		  $(item).html(name);
									});
									
								});
								
								
					</script>
                  
                     </from>
                  </div>
                </div>
                
              </div>
             
</html>