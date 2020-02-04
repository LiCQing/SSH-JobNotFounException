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
          <div class="modal-dialog"  style="display: block;" role="document">
            <div class="modal-content"  style="display: block;">
              <div class="modal-header">
                <h5 class="modal-title"><i data-feather="user"></i>企业用户</h5>
                  <span aria-hidden="true"><a href="login-choose.jsp">切换求职用户</a></span>
                </button>
              </div>
               <div class="modal-body">
                  <form action="logintwo" method="post" onsubmit="return checkCode();">
	                  <input type="hidden" name="tag"  value="2">
                  <div class="form-group">
                    <input type="text" name="phone" placeholder="输入电话号码" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="text" id="code" name="code" placeholder="输入验证码" class="form-control">
                    	<button id="phone_numbertwo" type="button"class="btn btn-default btn-lg active">点击获取手机验证码</button>
                  </div>
                  <div class="more-option">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                      <label class="form-check-label" for="defaultCheck1">
                        Remember Me
                      </label>
                    </div>
                    <a href="#">Forget Password?</a>
                  </div>
                  <button class="button primary-bg btn-block">登录</button>
                </form>
                <div class="shortcut-login">
                  <span>Or connect with</span>
                  <div class="buttons">
                    <a href="login-choose-company.jsp" class="facebook"><i class="fab fa-facebook-f"></i>密码登录</a>
                   
                  </div>
                  <p>还没有账号? <a href="#">登录</a></p>
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
					alert(data);
					if (!data) {
						layer.msg("验证码错误")
					}
				}
			})
			if(!result) return false;
		return result;
		};

			
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