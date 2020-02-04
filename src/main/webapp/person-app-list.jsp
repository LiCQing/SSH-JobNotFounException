<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Oficiona</title>

    <!-- Bootstrap CSS -->
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
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/city.js"> </script>
      <script type="text/javascript" src="js/position.js"> </script>
        <script  type="text/javascript" src="js/index.js"></script>
                    
</head>
<body>
 
          
              <div class="dashboard-content-wrapper">
                <div class="dashboard-applied">
                  <h4 class="apply-title">申请列表</h4>
                  <div class="dashboard-apply-area">
                  
                   
                  
                  <c:forEach items="${tbApplies}" var="t">
                    <div class="job-list">
                      <div class="thumb">
                        <a href="jobdetail?id=${t.tbPosition.id }">
                          <img src="images/job/company-logo-3.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="#">职位名称：${t.tbPosition.name }</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>Realouse</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i><span class="addr">地点：${t.tbPosition.address }</span></a></span>
                            <span class="job-type freelance"><a href="#"><i data-feather="clock"></i>发布时间:${t.tbPosition.cTime}</a></span>
                          <span class="job-type freelance"><a href="#"><i data-feather="clock"></i>企业返回信息:${t.msg}</a></span>
                              <span class="job-type freelance"><a href="#"><i data-feather="clock"></i>
                                  <c:choose>
                                  <c:when test ="${t.status eq 0}">
                                                                                   状态 ：申请中，待处理
                                  </c:when>
                                    <c:when test ="${t.status eq -1}">
                                                                                    状态 ：已取消
                                  </c:when>
                                    <c:when test ="${t.status eq 1}">
                                                                                  状态 ：已通过
                                  </c:when>
                                  <c:otherwise>
                                                                                  状态 ：已拒绝
                                  </c:otherwise>
                                  </c:choose>    
                                      
                                                                            
                                </a>
                              </span>
                          </div>
                        </div>
                        <div class="more">
                       <c:choose>
                       <c:when test="${t.status == 0 }">
                        <a href="updatePersonApp?id=${t.id}" class="bookmark-remove"><i class="fas fa-times"></i></a>
                                                                          取消申请
                       </c:when>
                       <c:otherwise>
                                                                         已经取消
                       </c:otherwise>
                       </c:choose>
                      
                      
                       
                          
                        </div>
                      </div>
                    </div>
                     </c:forEach>
                  </div>
                </div>
              </div>
               
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