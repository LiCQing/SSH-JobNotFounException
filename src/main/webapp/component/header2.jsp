 <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>JobNotFoundException</title>

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
<link rel="stylesheet" href="css/base.css">

<!-- Custom Css -->
<link rel="stylesheet" type="text/css" href="css/main.css">

<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7CRoboto:300i,400,500"
	rel="stylesheet">

<!-- Favicon -->
<link rel="icon" href="images/favicon.png">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="images/icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/icon-114x114.png">

<!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<header class="header-2">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="header-top">
					<div class="logo-area">
						<a href="#"><img src="images/logo-2.png" alt=""></a>
					</div>
					<div class="header-top-toggler">
						<div class="header-top-toggler-button"></div>
					</div>
					<div class="top-nav">
						<div class="dropdown header-top-notification">
						</div>
						<div class="dropdown header-top-account">
							<a href="personal-center.jsp" class="account-button">
							${User!=null?User.name:'未登陆' }
							</a>
							<div class="account-card">
								<div class="header-top-account-info">
									<a href="hotJoblist" class="account-thumb"> <img
										src="images/account/thumb-1.jpg" class="img-fluid" alt="">
									</a>
									<div class="account-body">
										<h5>
											<a href="hotJoblist">账号用户名</a>
										</h5>
										<span class="mail">chavez@domain.com</span>
									</div>
								</div>
								<ul class="account-item-list">
									<li><a href="#"><span class="ti-user"></span>Account</a></li>
									<li><a href="#"><span class="ti-settings"></span>Settings</a></li>
									<li><a href="#"><span class="ti-power-off"></span>Log
											Out</a></li>
								</ul>
							</div>
						</div>
				 
					</div>
				</div>
				<nav class="navbar navbar-expand-lg cp-nav-2">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li class="menu-item active"><a title="Home"
							href="hotJoblist">主页</a></li>
						<li class="menu-item dropdown"><a title="" href="#"
							data-toggle="dropdown" class="dropdown-toggle"
							aria-haspopup="true" aria-expanded="false">Jobs</a>
							<ul class="dropdown-menu">
								<li class="menu-item"><a title="About"
									href="job-listing.html">岗位列表</a></li>
								<li class="menu-item"><a title="About"
									href="job-listing-with-map.html">Job Listing With Map</a></li>
								<li class="menu-item"><a title="About"
									href="job-details.html">Job Details</a></li>
								<li class="menu-item"><a title="About" href="post-job.html">Post
										Job</a></li>
							</ul></li>

					</ul>
				</div>
				</nav>
			</div>
		</div>
	</div>
	</header>