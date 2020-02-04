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
</head>
<body>

	<form action="changebsi" class="dashboard-form" method="post">
	 	<div class="dashboard-section upload-profile-photo">
		</div>
		<div class="dashboard-section basic-info-input">
			<h4>
				<i data-feather="user-check"></i>工商信息
			</h4>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">法定代表人</label>
				<div class="col-sm-9">
					  <input type="text" name="bsi.person" class="form-control" value="${User.bsi.person }" placeholder="法定代表人">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-3 col-form-label">注册资本</label>
				<div class="col-sm-9">
					  <input type="text" name="bsi.capital" class="form-control" value="${User.bsi.capital }" placeholder="注册资本">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">成立时间</label>
				<div class="col-sm-9">
					  <input type="text" name="bsi.createTime" class="form-control" value="${User.bsi.createTime }" placeholder="成立时间">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">企业类型</label>
				<div class="col-sm-9">
					  <input type="text" name="bsi.type" class="form-control" value="${User.bsi.type }" placeholder="企业类型">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">经营状态</label>
				<div class="col-sm-9">
				  <input type="text" name="bsi.status" class="form-control" value="${User.bsi.status }" placeholder="经营状态">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">注册地址</label>
				<div class="col-sm-9">
					  <input type="text" name="bsi.addr" class="form-control" value="${User.bsi.addr }" placeholder="注册地址">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">统一信用代码</label>
				<div class="col-sm-9">
					  <input type="text" name="bsi.creditCode" class="form-control" value="${User.bsi.creditCode }" placeholder="统一信用代码">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">经营范围</label>
				<div class="col-sm-9">
					 <textarea  name="bsi.scope" rows="10" cols="70">${User.bsi.scope }</textarea>
				</div>
			</div>
			
		</div>  
	 <div class="form-group row">
                      <label class="col-sm-3 col-form-label"></label>
                      <div class="col-sm-9">
                        <button type="submit" class="button">保存修改</button>
                      </div>
                    </div>
	</form>

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
				url : "company/uploadHead",
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
	</script>


</body>

</html>