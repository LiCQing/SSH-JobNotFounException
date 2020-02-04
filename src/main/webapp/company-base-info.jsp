<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
<script src="js/jquery.min.js"></script>
<!-- Custom Css -->
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css"
	href="dashboard/css/dashboard.css">

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

<style type="text/css">
html {
	overflow-x: hidden;
}
</style>
</head>
<body>

             <form action="showCompany" class="dashboard-form" method="post">
								<div class="dashboard-section upload-profile-photo">
									<div class="update-photo">
										<img src="${applicationScope.imageServer }${User.head==null?'image/header/1.jpg':User.head}" class="img-fluid" alt="">
									</div>
								</div>
								<div class="dashboard-section basic-info-input">
									<h4>
										<i data-feather="user-check"></i>基本信息
									</h4>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">公司名称</label>
										<div class="col-sm-9">
											<a class="form-control">${User.name }</a>
										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-3 col-form-label">公司规模</label>
										<div class="col-sm-9">
											<a class="form-control">${User.scaleStr }</a>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">公司标签</label>
										<div class="col-sm-9">
											<a class="form-control">${User.tag }</a>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">公司详细地址</label>
										<div class="col-sm-9">
											<a class="form-control">${User.detailAddress }</a>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">公司HR</label>
										<div class="col-sm-9">
											<a class="form-control">${User.hrName }</a>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">公司HR联系方式</label>
										<div class="col-sm-9">
											<a class="form-control">${User.chrContec }</a>
										</div>
									</div>
							
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">公司简介</label>
										<div class="col-sm-9">
											<a class="form-control">${User.description }</a>
										</div>
									</div>
									
									
								</div>
							
							</form>



</body>

</html>