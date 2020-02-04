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
  <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search   Position  list</title>
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
</head>
<body>
  


  
                <div class="dashboard-applied">
                  <h4 class="apply-title">职位列表</h4>
                  <div class="dashboard-apply-area">

                   <c:forEach items="${searchPosition.list}" var="position">
                    <div class="job-list">
                      
                      <div class="body">
                        <div class="content">
                          <h4><a  style="font-size: 28px;" href="job-detailsid=?">${position.name }</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        	<label style="font-size:24px;color: orangered;">${position.salaryMin /1000}k-${position.salaryMax /1000}k/月</label></h4>
                     
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i><span class="pType">${position.type }</span></a></span>
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>${position.educationStr }</a></span>
                            <span class="company"><a href="#"><i data-feather="briefcase"></i><span class="addr">${position.address}</span></a></span>
                   
                          </div>
                      
                        </div>
                        <%-- <div class="more">
                        <a class="bookmark-remove"><i class="fas fa-edit"></i>${position.educationStr}</a>
                          <a class="bookmark-remove"><i class="fas fa-times"></i>${position.address}</a>
                          <p class="deadline">发布时间：2018-8-5</p>
                        </div> --%>
                      </div>
                    </div>
                    </c:forEach>
                     <div style="width: 600px; padding-left: 300px;display: unset; position: relative;">
                    <c:if test="${searchPosition.currentPage!=1 }">
						<a href="searchPosition?page=${searchPosition.currentPage-1}">上一页</a>
						</c:if>
						<c:if test="${searchPosition.currentPage!=searchPosition.totlePage }">
						<a href="searchPosition?page=${searchPosition.currentPage+1}">下一页</a>
						</c:if>
					        &nbsp; &nbsp; &nbsp; 当前第${searchPosition.currentPage}页 &nbsp; &nbsp; &nbsp;
					
						 总共有${searchPosition.totlePage }页
						 </div> 
                  </div>
                </div>
          

      

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/feather.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/jquery.nstSlider.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/visible.js"></script>
    <script src="assets/js/jquery.countTo.js"></script>
    <script src="assets/js/chart.js"></script>
    <script src="assets/js/plyr.js"></script>
    <script src="assets/js/tinymce.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/jquery.ajaxchimp.min.js"></script>

    <script src="js/custom.js"></script>
    <script src="dashboard/js/dashboard.js"></script>
    <script src="dashboard/js/datePicker.js"></script>
    <script src="dashboard/js/upload-input.js"></script>

    <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyC87gjXWLqrHuLKR0CTV5jNLdP4pEHMhmg"></script>
    <script src="js/map.js"></script>
    <script type="text/javascript" src="js/city.js"> </script>
    <script type="text/javascript" src="js/initCity.js"> </script>
      <script type="text/javascript" src="js/position.js"> </script>
    <script type="text/javascript" src="js/initPosition.js"> </script>
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript">
     var typeDiv = $(".pType");
     $.each(typeDiv,function(index,span){
    	 console.log(index);
    	 var name = getPositionName($(span).html());
    	 $(span).html(name);
     });
    
     
     var typeDiv = $(".addr");
     $.each(typeDiv,function(index,span){
    	 console.log(index);
    	 var name = getCityName($(span).html());
    	 $(span).html(name);
     });
     
    </script>
</body>
</html>