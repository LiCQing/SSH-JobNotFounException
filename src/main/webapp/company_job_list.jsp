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
<title>Company   job  list</title>
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

                   <from action="company/companylist" method="post">
                   <c:forEach items="${companyPosition.list}" var="position">
                    <div class="job-list">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-10.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a  style="font-size: 28px;" href="job-details.html">${position.name } <c:if test="${position.status==0 }">
                        	(未发布)
                        </c:if></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        	<label style="font-size:24px;color: orangered;">${position.salaryMin /1000}k-${position.salaryMax /1000}k/月</label></h4>
                     
                          <div class="info">
                            <span class="job-type part-time"><a href="#"><i data-feather="clock"></i>发布于${position.cTime}</a></span>
                          </div>
                        
                        </div>
                        <div class="more">
                         
                      	  <a href="toUpdate?id=${position.id}" class="bookmark-remove"><i class="fas fa-edit"></i></a>
                          <a href="company/companyDelete?id=${position.id}" class="bookmark-remove"><i class="fas fa-times"></i></a>
                        </div>
                      </div>
                    </div>
                    </c:forEach>
                    <div style="width: 600px; padding-left: 300px;display: unset; position: relative;">
                    <c:if test="${companyPosition.currentPage!=1 }">
						<a href="company/companylist?page=${companyPosition.currentPage-1}">上一页</a>
						</c:if>
						<c:if test="${companyPosition.currentPage!=companyPosition.totlePage }">
						<a href="company/companylist?page=${companyPosition.currentPage+1}">下一页</a>
						</c:if>
					        &nbsp; &nbsp; &nbsp; 当前第${companyPosition.currentPage}页 &nbsp; &nbsp; &nbsp;
					
						 总共有${companyPosition.totlePage }页
						 </div>
                     </from>
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
</body>
</html>