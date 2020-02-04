<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Oficiona</title>

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

<style type="text/css">
	.loginDiv{
		width: 700px;
		border-radius:15px;
		box-shadow: 15px 15px 20px #EEE;
	}
	.loginDiv div{
		margin: 20px;
	}
</style>
</head>
<body>
 <div class="account-entry">
        <div class="" style="display: block;font-size: 20px" id="exampleModalLong" tabindex="-1" role="dialog" aria-hidden="true">

				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">
								<i data-feather="edit"></i>Registration
							</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">

							<div id="type" class="account-type">
								<a id="user" href="#" class="candidate-acc active"><i
									data-feather="user"></i>求职者注册</a> <a id="company" href="#"
									class="employer-acc"><i data-feather="briefcase"></i>企业注册</a>
							</div>
							<form action="register" method="post" onsubmit="return checkCode();">
								<input id="register_type" type="hidden" name="type" value="0" />
								<div class="form-group">
									<!-- onblur="checkphone(this)"  -->
									<input id="phone" name="phone" type="text" placeholder="手机号"
										class="form-control">
								</div>
								<div class="form-group">
									<div style="width: 400px;">
										<div style="float: left;">
											<input style="width: 260px;" id="code" class="input_verify"
												placeholder="验证码" name="verify" class="form-control"
												type="text">
										</div>
										<div>
											<button id="phone_number" type="button"
												class="btn btn-default btn-lg active">点击获取手机验证码</button>
										</div>
									</div>
								</div>
								<div class="form-group">
									<input id="pw1" name="pwd" type="password"
										 placeholder="密码"
										class="form-control">
								</div>
								<div class="form-group">
									<input id="pw2" type="password" placeholder="确认密码"
										class="form-control">
								</div>
								<div class="form-group"></div>
								<div class="more-option terms">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="defaultCheck2">
										<!-- <label class="form-check-label" for="defaultCheck2">
                        I accept the <a href="#">terms & conditions</a>
                      </label>-->
									</div>
								</div>
								<button id="register" class="button primary-bg btn-block">注册</button>
							</form>
							<div class="shortcut-login">
								<span>其他注册方式</span>
								<div class="buttons"></div>
								<p>
									已经有一个账户? <a href="#exampleModalLong">登录</a>
								</p>
							</div>
						</div>
					</div>
					</div>
					</div>
					</div>
			
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

		<script
			src="http://ditu.google.cn/maps/api/js?key=AIzaSyC87gjXWLqrHuLKR0CTV5jNLdP4pEHMhmg"></script>
		<script src="js/map.js"></script>
		<script src="tool/layer/layer.js"></script>
		<script type="text/javascript">
		
		function checkCode() {
			var result = false;
			if( $("#code").val()=="") {
				alert("请输入验证码");
				return false;
			}
			
				
			$.ajax({
				url : "CheckCode",
				async:false,
				data : {
					'verify' : $("#code").val()
				},
				type : "post",
				success : result=function(data) {
					result = data;
					if (!data) {
						layer.msg("验证码错误")
					}else {
						layer.msg("注册成功")
					}
				}
			})
			if(!result) return false;
		return result;
		};

			
			$(function() {
			/* 	$("#phone_number").click(function() {
					var phone = $("#phone").val();
					
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
				}); */

				$("#user").click(function() {
					$("#register_type").val(0);
				});

				$("#company").click(function() {
					$("#register_type").val(1);
				});

			/*  	$("#register").click(function() {
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

				})  */

				$("#phone_number").click(function() {
					var phone = $("#phone").val();
					
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

		 
				 $("#phone").blur(function() {
					$.ajax({
						url : "checkphone",
						data : {
							'phone' : $("#phone").val()
						},
						type : "post",
						success : function(data) {
							console.log(data);
							if (data) {
								layer.msg("手机号可以注册")
							} else {
								layer.msg("手机号不可以注册")
							} 
						},
					});
				}); 
			});
		</script>
</body>
</html>