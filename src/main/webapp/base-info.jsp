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
<!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->


</head>
<body>
	<form action="usermessageUpdate" method="post" class="dashboard-form">
		<h4>
			<i data-feather="user-check"></i>基本信息
		</h4>
		<div class="dashboard-section upload-profile-photo">
			<div class="update-photo">
				<img class="image"
					src="${applicationScope.imageServer }${User.head==null?'image/header/1.jpg':User.head}" alt="">
			</div>
			<div class="file-upload">
				<input id="userHeader" name="head" onchange="loadImg(this)"
					type="file" class="file-input">更换头像
			</div>
		</div>

		<div class="dashboard-section basic-info-input">
			<h4>
				<i data-feather="user-check"></i>基本信息
			</h4>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">姓名</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="user.name"
						value="${User.name }" placeholder="姓名">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-3 col-form-label">性别</label>
				<c:if test="${User.sex ==null}">
				<div class="col-sm-2">
				  <input type="radio" name="user.sex"  value="1"> <span>男</span>
				</div>
				<div class="col-sm-2">
					<input type="radio" name="user.sex"   value="0"> <span>女</span>
				</div>
				</c:if>
				<c:if test="${User.sex ==1}">
				<div class="col-sm-2">
				  <input type="radio" name="user.sex" checked value="1"> <span>男</span>
				</div>
				<div class="col-sm-2">
					<input type="radio" name="user.sex"   value="0"> <span>女</span>
				</div>
				</c:if>
				<c:if test="${User.sex ==0}">
				<div class="col-sm-2">
					<input type="radio" name="user.sex"  value="1"> <span>男</span>
				</div>
				<div class="col-sm-2">
					<input type="radio" name="user.sex"  checked value="0"> <span>女</span>
				</div>
				</c:if>
			
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">手机号码</label>
				<div class="col-sm-9">
					<input type="tel" class="form-control" name="user.phone"
						value="${User.phone}" placeholder="+86 123 4563 4643">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">微信号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="user.wechat"
						value="${User.wechat}" placeholder="手机号或微信号">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">出生年月</label>
				<div class="col-sm-9">
					<input id="birthday" type="date" class="form-control" name="user.birthday"
						value="${User.birthday}">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">邮箱</label>
				<div class="col-sm-9">
					<input type="email" class="form-control" name="user.email"
						value="${User.email}" placeholder="中国.北京">
				</div>
			</div>
			
			<!-- <div class="form-group row">
				<label class="col-sm-3 col-form-label">是否公开简历</label>
				<div class="col-sm-2">
					<input type="radio" name="user.visible" value="0"> <span>是</span>
				</div>

				<div class="col-sm-7">
					<input type="radio" name="user.visible" value="1"> <span>否</span>
				</div>
			</div> -->
		</div>
		<div class="dashboard-section basic-info-input">
			<div class="form-group row">
				<label class="col-sm-3 col-form-label"></label>
				<div class="col-sm-9">
					<button class="button">保存更改</button>
				</div>
			</div>
		</div>
	</form>
</body>
<script type="text/javascript">
	$("#userHeader").on("change", function(e) {
		var e = e || window.event;
		//获取 文件 个数 取消的时候使用
		var files = e.target.files;
		console.log(files);
		if (files.length > 0) {
			// 获取文件名 并显示文件名
			var fileName = files[0].name;
			console.log(fileName);
		} else {
			//清空文件名
		}

	});

	function upload() {

		var image = new FormData();
		image.append('file', $('#userHeader')[0].files[0]);
		image.append('type', 'img');

		$.ajax({
			url : "user/uploadHead",
			type : 'POST',
			data : image,
			cache : false,
			processData : false,
			contentType : false,
			success : function(data) {
				if (!data) {
					layer.msg("系统繁忙");
				}
			}
		});
	}
	//图片实时预览
	function loadImg(e) {
		$(".image").attr('src', URL.createObjectURL($(e)[0].files[0]));
		upload();

	}
	
	var date= "${User.birthday}";
	$(function(){
		$("#birthday").attr("value",date.split(' ')[0]);
	});
</script>
</html>
