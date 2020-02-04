<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7CRoboto:300i,400,500" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" href="images/favicon.png">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icon-114x114.png">
    
    
   <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
      <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


      <link rel="stylesheet" href="css/style.css">
       <style>
        /*隐藏input*/
        label.bui-radios-label input[type="radio"]{
            position: absolute;
            opacity: 0;
            visibility: hidden;
        }
        /*自定义radio*/
        label.bui-radios-label .bui-radios{
            display: inline-block;
            position: relative;
            width: 13px;
            height: 13px;
            background-color: #fff;
            border: 1px solid #979797;
            border-radius: 50%;
            vertical-align: -2px;
            margin-right: 5px;
        }
        /*单选框选中后，自定义radio的样式*/
        label.bui-radios-label input[type="radio"]:checked + .bui-radios:after{
            position: absolute;
            content: "";
            width: 7px;
            height: 7px;
            background-color: #fff;
            border-radius: 50%;
            top: 3px;
            left: 3px;
        }
        label.bui-radios-label input[type="radio"]:checked + .bui-radios{
            background-color: #00B066;
            border:1px solid #00B066;
        }
        label.bui-radios-label input[type="radio"]:disabled + .bui-radios{
            background-color: #e8e8e8;
            border:1px solid #979797;
        }
        label.bui-radios-label input[type="radio"]:disabled:checked + .bui-radios:after{
            background-color: #c1c1c1;
        }
        /*自定义radio的过渡效果*/
        label.bui-radios-label.bui-radios-anim .bui-radios{
            -webkit-transition:background-color ease-out .5s;
            transition:background-color ease-out .5s;
        }
    </style>

  </head>
  <body>

    <!-- Header -->
    <header>
      <nav class="navbar navbar-expand-xl absolute-nav transparent-nav cp-nav navbar-light bg-light fluid-nav">
        <a class="navbar-brand" href="index.html"> 
          <img src="images/logo.png" class="img-fluid" alt="">
        </a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          
          <ul class="navbar-nav ml-auto main-nav">
            <li class="menu-item active"><a title="Home" href="index.html">主页</a></li>
            <li class="menu-item dropdown">
              <a title="" href="job-listing-z.html" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">职位列表</a>
              <ul  class="dropdown-menu">
                <li class="menu-item"><a title="About" href="job-listing-z.html">职位列表</a></li>
                <li class="menu-item"><a title="About" href="job-listing-with-map.html">Job Listing With Map</a></li>
                <li class="menu-item"><a title="About" href="job-details.html">Job Details</a></li>
                <li class="menu-item"><a title="About" href="post-job.html">Post Job</a></li>
              </ul>
            </li>
            <li class="menu-item dropdown">
              <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">招聘企业</a>
              <ul  class="dropdown-menu">


                <li class="menu-item"><a title="About" href="recruitment-enterprises.html">招聘企业</a></li>
                <li class="menu-item"><a title="About" href="job-details.html">职位详情</a></li>
              </ul>
            </li>
            <li class="menu-item dropdown">
              <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">个人中心</a>
              <ul  class="dropdown-menu">
                <li class="menu-item"><a title="About" href="resume.html">简历</a></li>
                <li class="menu-item"><a title="About" href="job-management.html">求职管理</a></li>
                <li class="menu-item"><a title="About" href="personal-center.html">个人中心</a></li>


              </ul>
            </li>
            <li class="menu-item dropdown">
              <a title="" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false">Pages</a>
              <ul  class="dropdown-menu">
                <li class="menu-item"><a title="About" href="about-us.html">About Us</a></li>
                <li class="menu-item"><a title="About" href="blog.html">Blog</a></li>

              </ul>
            </li>
            <li class="menu-item post-job"><a title="Title" href="post-job.html"><i class="fas fa-plus"></i>Post a Job</a></li>
          </ul>
          <ul class="navbar-nav ml-auto account-nav">
            <li class="dropdown menu-item header-top-notification">
              <a href="#" class="notification-button"></a>
              <div class="notification-card">
                <div class="notification-head">
                  <span>Notifications</span>
                  <a href="#">Mark all as read</a>
                </div>
                <div class="notification-body">
                  <a href="home-2.html" class="notification-list">
                    <i class="fas fa-bolt"></i>
                    <p>Your Resume Updated!</p>
                    <span class="time">5 hours ago</span>
                  </a>
                  <a href="#" class="notification-list">
                    <i class="fas fa-arrow-circle-down"></i>
                    <p>Someone downloaded resume</p>
                    <span class="time">11 hours ago</span>
                  </a>
                  <a href="#" class="notification-list">
                    <i class="fas fa-check-square"></i>
                    <p>You applied for Project Manager <span>@homeland</span></p>
                    <span class="time">11 hours ago</span>
                  </a>
                  <a href="#" class="notification-list">
                    <i class="fas fa-user"></i>
                    <p>You changed password</p>
                    <span class="time">5 hours ago</span>
                  </a>
                  <a href="#" class="notification-list">
                    <i class="fas fa-arrow-circle-down"></i>
                    <p>Someone downloaded resume</p>
                    <span class="time">11 hours ago</span>
                  </a>
                </div>
                <div class="notification-footer">
                  <a href="#">See all notification</a>
                </div>
              </div>
            </li>
            <li class="menu-item login-popup"><button title="Title" type="button" data-toggle="modal" data-target="#exampleModalLong">登录</button></li>
            <li class="menu-item login-popup"><button title="Title" type="button" data-toggle="modal" data-target="#exampleModalLong2">注册</button></li>
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
                      
                     <li class="tab"><button style="width:260px;height:50px;background-color: blue" type="button" onclick="Clicktwo()" data-toggle="modal" data-target="#exampleModalLong4">企业</button></li>
                    <li class="tab"><button style="width:260px;height:50px;background-color: blue" type="button" onclick="Clicktone()" data-toggle="modal" data-target="#exampleModalLong4">求职者</button></li>
                    </ul>
      </div>
      </div>
      </div>
      </div>
      <script type="text/javascript">
      function Clickone()
      {
       
        $("#tag").val(1);
      }
      function Clicktwo(){
    	  $("#tag").val(2);
      }
       
      </script>
      </div>
      
     

     
   
      
      <!-- Modal -->
      <div class="account-entry">
        <div class="modal fade" id="exampleModalLong4" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="form">

                    <ul class="tab-group">
                
                        <li class="tab active"><a href="#signup">密码登录</a></li>
                        <li class="tab"><a href="#login">快速登录</a></li>
                    </ul>

                    <div class="tab-content">
                    
                    
                        <div id="signup" >
                            <h1>前程堪忧欢迎您！</h1>

                            <form id="loginform" action="login"  method="post">
							<input type="hidden" id="tag" name="tag" value=""/>
                                <div class="field-wrap">
                                    <label>
                                        请输入11位手机号<span class="req" style="float:right">*</span>
                                    </label>
                                    <input type="tel" name="phone" required autocomplete="off"/>
                                </div>

                                <div class="field-wrap">
                                    <label>
                                        请输入至少5位密码<span class="req">*</span>
                                    </label>
                                    <input type="password" name="pwd" required autocomplete="off"/>
                                </div>

                                <p class="forgot"><a href="#">忘记密码?</a></p>

                                <button  type="submit" class="button button-block"/>登录</button>

                            </form>

                        </div>

                        
                        
               
                    <div id="login">   
          <h1>前程堪忧欢迎您！</h1>
          
          <form action="/" method="post">
          
            <div class="field-wrap">
            <label>
              请输入手机号<span class="req">*</span>
            </label>
            <input type="tel"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              请输入验证码<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a>没有获取到验证码?再次点击发送验证码试试</a></p>
          
          <button class="button button-block"/>登录</button>
          
          </form>

        </div>
      <!--   <script type="text/javascript">
        $(document).ready(function(){
        	$('#login').click(function(){
        	$('#login').show();
        	});
        	})
        </script> -->
     

                    </div>
                    
                    <!-- tab-content -->

                </div> <!-- /form -->
                <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

                <script  src="js/index.js"></script>

            </div>
          </div>
        </div>
        <div class="modal fade" id="exampleModalLong2" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title"><i data-feather="edit"></i>Registration</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="account-type">
                  <a href="#" class="candidate-acc active"><i data-feather="user"></i>求职者</a>
                  <a href="#" class="employer-acc"><i data-feather="briefcase"></i>应聘者</a>
                </div>
                <form action="#">
                  <div class="form-group">
                    <input type="text" placeholder="用户名" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="email" placeholder="邮箱" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="password" placeholder="密码" class="form-control">
                  </div>
                  <div class="more-option terms">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                     <!-- <label class="form-check-label" for="defaultCheck2">
                        I accept the <a href="#">terms & conditions</a>
                      </label>-->
                    </div>
                  </div>
                  <button class="button primary-bg btn-block">注册</button>
                </form>
                <div class="shortcut-login">
                  <span>其他注册方式</span>
                  <div class="buttons">
                    <a href="#" class="facebook"><i class="fab fa-facebook-f"></i>脸谱网</a>
                    <a href="#" class="google"><i class="fab fa-google"></i>谷歌</a>
                  </div>
                  <p>已经有一个账户? <a href="#">登录</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- Header End -->




            
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
                <form action="#" class="search-form">
                  <input type="text" placeholder="Enter Keywords">
                  <select class="selectpicker" id="search-location">
                    <option value="" selected>Location</option>
                    <option value="california">California</option>
                    
                  </select>
                  <select class="selectpicker" id="search-category">
                    <option value="" selected>Category</option>
                    <option value="real-state">Real State</option>
                    
                  </select>
                  <button class="button primary-bg"><i class="fas fa-search"></i>Search Job</button>
                </form>
                <div class="filter-categories">
                  <h4>Job Category</h4>
                  <ul>
                    <li><a href="job-listing.html"><i data-feather="bar-chart-2"></i>Accounting / Finance <span>(233)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="edit-3"></i>Education <span>(46)</span></a></li>
                    <li><a href="job-listing.html"><i data-feather="feather"></i>Design & Creative <span>(156)</span></a></li>
                    
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
                            <a class="nav-link active" id="recent-tab" data-toggle="tab" href="#recent" role="tab" aria-controls="recent" aria-selected="true">热门工作</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" id="recent-tab" data-toggle="tab" href="#recent" role="tab" aria-controls="recent" aria-selected="true" >所有职位</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="recent" role="tabpanel" aria-labelledby="recent-tab">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="job-list half-grid">
                                        <div class="thumb">
                                            <a href="#">
                                                <img src="images/job/company-logo-8.png" class="img-fluid" alt="">
                                            </a>
                                        </div>
                                        <div class="body">
                                            <div class="content">
                                                <h4><a href="job-details.html">中级软件工程师</a> &nbsp; &nbsp;&nbsp;&nbsp;<label style="color: orangered;">15k-20k/月</label></h4>
                                                <div><span class="glyphicon .glyphicon .glyphicon-usd"></span>
                                                </div>
                                                <div class="info">
                                                    <span class="company"><a href="#"><i data-feather="briefcase"></i>广州欣欣科技有限公司</a></span>
                                                    <span class="office-location"><a href="#"><i data-feather="map-pin"></i>广州天河区</a></span>

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
                                                <img src="images/job/company-logo-1.png" class="img-fluid" alt="">
                                            </a>
                                        </div>
                                        <div class="body">
                                            <div class="content">
                                                <h4><a href="job-details.html">Designer Required</a></h4>
                                                <div class="info">
                                                    <span class="company"><a href="#"><i data-feather="briefcase"></i>Theoreo</a></span>
                                                    <span class="office-location"><a href="#"><i data-feather="map-pin"></i>New York City</a></span>
                                                    <span class="job-type full-time"><a href="#"><i data-feather="clock"></i>Full Time</a></span>
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
              <h2>热门企业</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="company-carousel owl-carousel">
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-1.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">本公司主张......</a></h4>
                  <span>杭州</span>
                  <a href="job-listing.html" class="button">岗位招聘</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-2.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">广州华为</a></h4>
                  <span>广州白云区</span>
                  <a href="job-listing.html" class="button">岗位招聘</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-3.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">几个公司</a></h4>
                  <span>深圳</span>
                  <a href="job-listing.html" class="button">岗位招聘</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-4.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">技术公司</a></h4>
                  <span>Ajax, Ontarioland</span>
                  <a href="job-listing.html" class="button">公司岗位</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-1.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">上海石油科技有限公司</a></h4>
                  <span>上海</span>
                  <a href="job-listing.html" class="button">公司岗位</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-2.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">长沙科技园</a></h4>
                  <span>长沙雨花区</span>
                  <a href="job-listing.html" class="button">公司岗位招</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-3.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">Realhouse</a></h4>
                  <span>London, United Kingdom</span>
                  <a href="job-listing.html" class="button">4 Open Positions</a>
                </div>
              </div>
              <div class="company-wrap">
                <div class="thumb">
                  <a href="#">
                    <img src="images/company/company-logo-4.png" class="img-fluid" alt="">
                  </a>
                </div>
                <div class="body">
                  <h4><a href="employer-details.html">BioPro</a></h4>
                  <span>Ajax, Ontarioland</span>
                  <a href="job-listing.html" class="button">1 Open Positions</a>
                </div>
              </div>
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
              <span>Are You</span>
              <h3>Candidate?</h3>
              <a href="#" data-toggle="modal" data-target="#exampleModalLong2">Register Now <i class="fas fa-arrow-right"></i></a>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="call-to-action-box employer-register">
              <div class="icon">
                <img src="images/register-box/2.png" alt="">
              </div>
              <span>Are You</span>
              <h3>Employer?</h3>
              <a href="#" data-toggle="modal" data-target="#exampleModalLong3">Register Now <i class="fas fa-arrow-right"></i></a>
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

    <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyC87gjXWLqrHuLKR0CTV5jNLdP4pEHMhmg"></script>
    <script src="js/map.js"></script>
   

</body>
</html>