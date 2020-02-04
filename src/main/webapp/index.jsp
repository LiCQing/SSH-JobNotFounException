<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7CRoboto:300i,400,500" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" href="images/favicon.png">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icon-114x114.png">

 
   <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


      <link rel="stylesheet" href="css/style.css">
    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->


</head>
<body>
   <!-- Header -->
    <header>
      <nav class="navbar navbar-expand-xl absolute-nav transparent-nav cp-nav navbar-light bg-light fluid-nav">
        <a class="navbar-brand" href="hotJoblist"> 
          <img src="images/logo.png" class="img-fluid" alt="">
        </a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          
          <ul class="navbar-nav ml-auto main-nav">
            <li class="menu-item active"><a title="Home" href="hotJoblist">主页</a></li>
        
             <c:if test="${sessionScope.tag  == 1}">
	              <li class="menu-item dropdown">
	             	 <a title="" href="personal-center.jsp"  class="dropdown-toggle" >个人中心</a>
	            </li>
             </c:if>
             
              <c:if test="${sessionScope.tag  == 2}">
	                <li class="menu-item dropdown">
	             	 <a title="" href="company-center.jsp"  class="dropdown-toggle"  >企业中心</a>
	            </li>
            </c:if>
    
          </ul>
          <ul class="navbar-nav ml-auto account-nav">
           
            <c:choose>
            <c:when test="${User==null}">
            
             <li class="menu-item login-popup"><a href="login-choose.jsp">登录</a></li>
            <li class="menu-item login-popup"><a href="register.jsp" >注册</a></li>
            </c:when>
            <c:otherwise>
              <li class="menu-item login-popup"><button title="Title" type="button">欢迎用户:${User.name}</button></li>
                <li class="menu-item login-popup"><a  href="loginout" title="Title" >退出</a></li>
            </c:otherwise>
            </c:choose>
            
           
          </ul> 
        
        </div>
      </nav>
      
         <div class="account-entry">
        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="form">

                    <ul class="tab-group">
                  <li class="tab active"> <a data-toggle="modal"onclick="Clicktwo()" data-target="#exampleModalLong4">企业</a></li>
                       <li class="tab"><a data-toggle="modal" onclick="Clickone()" data-target="#exampleModalLong4">求职者</a></li>   
                      
                   <!--   <li class="tab active"><button style="width:260px;height:50px;background-color: blue" type="button" onclick="Clicktwo()" data-toggle="modal" data-target="#exampleModalLong4">企业</button></li>
                    <li class="tab"><button style="width:260px;height:50px;background-color: blue" type="button" onclick="Clicktone()" data-toggle="modal" data-target="#exampleModalLong4">求职者</button></li> -->
                    </ul>
                     <script type="text/javascript">
      function Clickone()
      {
       
        $("#tag").val(1);
        $("#tagtwo").val(1);
      }
      function Clicktwo(){
    	  $("#tag").val(2);
    	  $("#tagtwo").val(2);
      }
       
      </script>
      </div>
      </div>
      </div>
      </div>
     
      </div>
      
         <!-- Modal -->
     
	</header>
    <!-- Header End -->

            <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="js/city.js"></script>
<script  src="js/position.js"></script>
                <script  src="js/index.js"></script>   
    <!-- Banner -->
    <div class="banner banner-1 banner-1-bg">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="banner-content">
              <h1>58,246 Job Listed</h1>
              <p>Create free account to find thousands Jobs, Employment & Career Opportunities around you!</p>
              <a href="add-resume.html" class="button">Upload Resume</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Banner End -->

    <!-- Search and Filter -->
    <div class="searchAndFilter-wrapper">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="searchAndFilter-block">
              <div class="searchAndFilter">
                <form action="searchPosition" class="search-form" method="post">
                  <input name="name" type="text" placeholder="搜个感兴趣的职位试试~">
                  <select class="selectpicker" id="search-location">
                    <option value="" selected>选择工作地</option>
                    
                  </select>
                  <select class="selectpicker" id="search-category">
                    <option value="" selected>选择类型</option>
                    
                  </select>
                  <button type="submit" class="button primary-bg"><i class="fas fa-search"></i>Search Job</button>
                </form>
                <div class="filter-categories">
                  <h4>职位类别</h4>
                  <ul id="job-categories">
                    
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Search and Filter End -->
    

      <!-- Jobs -->
  
                    
                    
<div class="section-padding-bottom alice-bg">
      <div class="container">
        <div class="row">
          <div class="col">
            <ul class="nav nav-tabs job-tab" id="myTab" role="tablist">
               <li class="nav-item">
               <a href="hotJoblist">热门工作</a>
                           
                        </li>
                        <li class="nav-item">
                          <a href="hotJoblist">所有职位</a>
                        </li>
            </ul>
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="recent" role="tabpanel" aria-labelledby="recent-tab">
             <c:forEach items="${hotjList}" var="h">
                <div class="row">
                  <div class="col-lg-6">





                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-3.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="jobdetail?id=${h.id}">${h.name}</a></h4>
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>${h.company.name }</a></span>
                            <span class="office-location"><a href="#"><i data-feather="map-pin"></i>地址：<span class="addr">${h.address}</span></a></span>
                            <span class="job-type freelance"><a href="#"><i data-feather="clock"></i>薪资：${h.salaryMax/1000 }K</a></span>
                          <span class="company"><a href="#"><i data-feather="briefcase"></i>类型：<span class="pType">${h.type }</span></a></span>
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                  </div>
     
                  <div class="col-lg-6">





                    <div class="job-list half-grid">
                      <div class="thumb">
                        <a href="#">
                          <img src="${imageServer }${h.company.head==null?'image/header/1.jpg':h.company.head}" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content">
                          <h4><a href="companydetail?cid=${h.company.id}">${h.company.name }</a></h4>
                          <div class="info">
                            <span class="company"><a href="companydetail?cid=${h.company.id}"><i data-feather="briefcase"></i>${h.company.description }</a></span>
                          
                            <span class="job-type part-time"><a href="companydetail?cid=${h.company.id}"><i data-feather="clock"></i>发布时间：${h.company.cTime}</a></span>
                              
                          </div>
                        </div>
                        <div class="more">
                          <div class="buttons">
                            <a href="#" class="button">Apply Now</a>
                            <a href="#" class="favourite"><i data-feather="heart"></i></a>
                          </div>
                          <p class="deadline">Deadline: Oct 31, 2018</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
</c:forEach>

 <script type="text/javascript" src="js/city.js"> </script>
        <script type="text/javascript" src="js/position.js"> </script>
       <script type="text/javascript">
     var typeDiv = $(".pType");
     $.each(typeDiv,function(index,span){
    	 console.log($(span).html());
    	 var name = getPositionName($(span).html());
    	 $(span).html(name);
     });
    
     
     var typeDiv = $(".addr");
     $.each(typeDiv,function(index,span){
    	// console.log(index);
    	 var name = getCityName($(span).html());
    	 $(span).html(name);
     });
     
    </script>

</div>
</div>
</div>
</div>
</div>
</div>
    <!-- Jobs End -->

    <!-- Top Companies -->
    <div class="section-padding-top padding-bottom-90" style="background-color: white">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="section-header">
              <h2>Top Companies</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="company-carousel owl-carousel">
       
             
          <c:forEach items="${hotcList }" var="h">
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="${imageServer }${h.head==null?'image/header/1.jpg':h.head}" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="companydetail?cid=${h.id}">${h.name}</a></h4>
                  <span>${h.description }</span>
                  <a href="companydetail?cid=${h.id}" class="button">${h.detailAddress }</a>
                </div>
              </div>
              </c:forEach>
              
              
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Top Companies End -->
    
   <!-- Fun Facts -->
    <div class="padding-top-90 padding-bottom-60 fact-bg">
      <div class="container">
        <div class="row fact-items">
          <div class="col-md-3 col-sm-6">
            <div class="fact">
              <div class="fact-icon">
                <i data-feather="briefcase"></i>
              </div>
              <p class="fact-number"><span class="count" data-form="0" data-to="12376"></span></p>
              <p class="fact-name">Live Jobs</p>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="fact">
              <div class="fact-icon">
                <i data-feather="users"></i>
              </div>
              <p class="fact-number"><span class="count" data-form="0" data-to="89562"></span></p>
              <p class="fact-name">Candidate</p>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="fact">
              <div class="fact-icon">
                <i data-feather="file-text"></i>
              </div>
              <p class="fact-number"><span class="count" data-form="0" data-to="28166"></span></p>
              <p class="fact-name">Resume</p>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="fact">
              <div class="fact-icon">
                <i data-feather="award"></i>
              </div>
              <p class="fact-number"><span class="count" data-form="0" data-to="1366"></span></p>
              <p class="fact-name">Companies</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Fun Facts End -->

    <!-- Registration Box -->
    <div class="section-padding" style="background-color: white">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="call-to-action-box candidate-box">
              <div class="icon">
                <img src="images/register-box/1.png" alt="">
              </div>
              <span>你想</span>
              <h3>找工作?</h3>
              <a href="#" data-toggle="modal" data-target="#exampleModalLong2">现在注册<i class="fas fa-arrow-right"></i></a>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="call-to-action-box employer-register">
              <div class="icon">
                <img src="images/register-box/2.png" alt="">
              </div>
              <span>你想</span>
              <h3>找伙伴?</h3>
              <a href="#" data-toggle="modal" data-target="#exampleModalLong3">现在注册 <i class="fas fa-arrow-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Registration Box End -->

    <!-- Modal -->
    <div class="account-entry">
      <div class="modal fade" id="exampleModalLong3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title"><i data-feather="edit"></i>注册</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="account-type">
                <a href="#" class="candidate-acc"><i data-feather="user"></i>Candidate</a>
                <a href="#" class="employer-acc active"><i data-feather="briefcase"></i>Employer</a>
              </div>
              <form action="#">
                <div class="form-group">
                  <input type="text" placeholder="Username" class="form-control">
                </div>
                <div class="form-group">
                  <input type="email" placeholder="Email Address" class="form-control">
                </div>
                <div class="form-group">
                  <input type="password" placeholder="Password" class="form-control">
                </div>
                <div class="more-option terms">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck3">
                    <label class="form-check-label" for="defaultCheck3">
                      I accept the <a href="#">terms & conditions</a>
                    </label>
                  </div>
                </div>
                <button class="button primary-bg btn-block">Register</button>
              </form>
              <div class="shortcut-login">
                <span>Or connect with</span>
                <div class="buttons">
                  <a href="#" class="facebook"><i class="fab fa-facebook-f"></i>Facebook</a>
                  <a href="#" class="google"><i class="fab fa-google"></i>Google</a>
                </div>
                <p>Already have an account? <a href="#">Login</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    
        </div>
      </div>
    </div>
    <!-- Testimonial End -->

    <!-- NewsLetter -->
    <div class="newsletter-bg padding-top-90 padding-bottom-90">
      <div class="container">
        <div class="row">
          <div class="col-xl-5 col-lg-6">
            <div class="newsletter-wrap">
              <h3>Newsletter</h3>
              <p>Get e-mail updates about our latest news and Special offers. We don’t send spam so don’t worry.</p>
              <form action="#" class="newsletter-form form-inline">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Email address...">
                </div>
                <button class="btn button">Submit<i class="fas fa-caret-right"></i></button>
                <p class="newsletter-error">0 - Please enter a value</p>
                <p class="newsletter-success">Thank you for subscribing!</p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- NewsLetter End -->

    <!-- Footer -->
    <footer class="footer-bg">
      <div class="footer-top border-bottom section-padding-top padding-bottom-40">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <div class="footer-logo">
                <a href="#">
                  <img src="images/footer-logo.png" class="img-fluid" alt="">
                </a>
              </div>
            </div>
            <div class="col-md-6">
              <div class="footer-social">
                <ul class="social-icons">
                  <li><a href="#"><i data-feather="facebook"></i></a></li>
                  <li><a href="#"><i data-feather="twitter"></i></a></li>
                  <li><a href="#"><i data-feather="linkedin"></i></a></li>
                  <li><a href="#"><i data-feather="instagram"></i></a></li>
                  <li><a href="#"><i data-feather="youtube"></i></a></li>
                </ul>
                <select class="selectpicker select-language" id="select-country">
                  <option value="United States of America" selected>EN</option>
                  <option value="United Kingdom">GB</option>
                  <option value="Spain">ES</option>
                  <option value="Portugal">PT</option>
                </select>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-widget-wrapper padding-bottom-60 padding-top-80">
        <div class="container">
          <div class="row">
            <div class="col-lg-5 col-sm-6">
              <div class="footer-widget widget-about">
                <h4>About Us</h4>
                <div class="widget-inner">
                  <p class="description">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                  <span class="about-contact"><i data-feather="phone-forwarded"></i>+8 246-345-0698</span>
                  <span class="about-contact"><i data-feather="mail"></i>supportmail@gmail.com</span>
                </div>
              </div>
            </div>
            <div class="col-lg-2 offset-lg-1 col-sm-6">
              <div class="footer-widget footer-shortcut-link">
                <h4>Information</h4>
                <div class="widget-inner">
                  <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms &amp; Conditions</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-2 col-sm-6">
              <div class="footer-widget footer-shortcut-link">
                <h4>Job Seekers</h4>
                <div class="widget-inner">
                  <ul>
                    <li><a href="#">Create Account</a></li>
                    <li><a href="#">Career Counseling</a></li>
                    <li><a href="#">My Oficiona</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Video Guides</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-2 col-sm-6">
              <div class="footer-widget footer-shortcut-link">
                <h4>Employers</h4>
                <div class="widget-inner">
                  <ul>
                    <li><a href="#">Create Account</a></li>
                    <li><a href="#">Products/Service</a></li>
                    <li><a href="#">Post a Job</a></li>
                    <li><a href="#">FAQ</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-bottom-area">
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="footer-bottom border-top">
                <div class="row">
                  <div class="col-xl-4 col-lg-5 order-lg-2">
                    <div class="footer-app-download">
                      <a href="#" class="apple-app">Apple Store</a>
                      <a href="#" class="android-app">Google Play</a>
                    </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 order-lg-1">
                    <p class="copyright-text">Copyright <a href="http://www.17sucai.com/">Oficiona</a> 2018, All right reserved</p>
                  </div>
                  <div class="col-xl-4 col-lg-3 order-lg-3">
                    <div class="back-to-top">
                      <a href="#">Back to top<i class="fas fa-angle-up"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- Footer End -->



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

      <script src="tool/layer/layer.js"></script>
    <script type="text/javascript">
$(function() {
	$("#phone_number").click(function() {
		var phone = $("#phone").val();
		layer.msg(phone);
		$.ajax({
			url : "getCode",
			data : {
				'phone' : phone,
			},
			type : "post",
			success : function(data) {
				if (data) {
					layer.msg("验证码已发送")
				}

			}

		});
	});


	$("#user").click(function() {
		$("#register_type").val(0);
	});

	$("#company").click(function() {
		$("#register_type").val(1);
	});

	$("#register").click(function() {
		$.ajax({
			url : "CheckCode",
			data : {
				'code' : $("#code").val()
			},
			type : "post",
			success : function(data) {
				if (!data) {
					layer.msg("验证码错误")
				}
			}
		})

	})
	
		$("#phone_numbertwo").click(function() {
		var phone = $("#phonetwo").val();
		layer.msg(phone);
		$.ajax({
			url : "getCode",
			data : {
				'phone' : phone,
			},
			type : "post",
			success : function(data) {
				if (data) {
					layer.msg("验证码已发送")
				}

			}

		});
	});
	
	$("#loginv").click(function() {
		$.ajax({
			url : "CheckCode",
			data : {
				'code' : $("#codetwo").val()
			},
			type : "post",
			success : function(data) {
				if (!data) {
					layer.msg("验证码错误")
				}
			}
		})

	})
	
	function checkCode(){
		alert("阻止表单提交");
		return false;
	}

	/* $("#phonetwo").blur(function() {
		$.ajax({
			url : "checkphone",
			data : {
				'phone' : $("#phonetwo").val()
			},
			type : "post",
			success : function(data) {
				console.log(data);
				if (data) {
					layer.msg("手机号存在")
				} else {
					layer.msg("手机号已不存在，换一个试试吧")
				} 
			},
		});
	}); */
});
</script>

</body>
</html>