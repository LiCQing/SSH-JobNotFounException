<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	<!--   <header>
      
         <div class="account-entry">
        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="form">

                    <ul class="tab-group">
                  <li class="tab active"> <a data-toggle="modal"onclick="Clicktwo()" data-target="#exampleModalLong4">企业</a></li>
                       <li class="tab"><a data-toggle="modal" onclick="Clickone()" data-target="#exampleModalLong4">求职者</a></li>   
                      
                     <li class="tab active"><button style="width:260px;height:50px;background-color: blue" type="button" onclick="Clicktwo()" data-toggle="modal" data-target="#exampleModalLong4">企业</button></li>
                    <li class="tab"><button style="width:260px;height:50px;background-color: blue" type="button" onclick="Clicktone()" data-toggle="modal" data-target="#exampleModalLong4">求职者</button></li>
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
      
         Modal
            <div class="modal-content">
                <div class="form">
                    <ul class="tab-group">
                        <li class="tab active"><a href="#signup">密码登录</a></li>
                        <li class="tab"><a href="#login">快速登录</a></li>
                    </ul>

                    <div class="tab-content">
                    密码登录
                    
                        <div id="signup" >
                            <h1>前程堪忧欢迎您！</h1>
 id="loginform" 
                            <form onsubmit="return checkCode();" action="login"  method="post">
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

                        
             快速登录           
               
       <div id="login">   
          <h1>前程堪忧欢迎您！</h1>
          
          <form action="logintwo" method="post">
          <input type="hidden" id="tagtwo" name="tagt" value=""/>
            <div class="field-wrap">
            <label>
              请输入手机号<span class="req">*</span>
            </label>
            <input id="phonetwo" name="phone" type="tel"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              请输入验证码<span class="req" >*</span>
            </label>
            <input name="verify" id="codetwo"  type="password" required autocomplete="off"/>
            <div>
			<button id="phone_numbertwo" type="button"class="btn btn-default btn-lg active">点击获取手机验证码</button>
		    </div>
		    	
          </div>
          
          <p class="forgot"><a>没有获取到验证码?再次点击发送验证码试试</a></p>
          
          <button id ="loginv"   class="button button-block"/>登录 </button>
          
          </form>

    
                    </div>
            </div>
          </div>
        </div> 
 -->
	 <div class="account-entry">
        <div class="" style="display: block;font-size: 20px" id="exampleModalLong" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog"  style="display: block;" role="document">
            <div class="modal-content"  style="display: block;">
              <div class="modal-header">
                <h5 class="modal-title"><i data-feather="user"></i>企业用户</h5>
                  <span aria-hidden="true"><a href="login-choose.jsp"> 切换为求职用户</a></span>
                </button>
              </div>
              <div class="modal-body">
                <form action="logintwo" method="get">
                      <input type="hidden" name="tag"  value="2">
                  <div class="form-group">
                    <input type="text" name="phone" placeholder="输入电话号码" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="password" name="pwd" placeholder="输入密码" class="form-control">
                  </div>
                  <div class="more-option">
                    <div class="form-check">
                    </div>
                    <a href="#">Forget Password?</a>
                  </div>
                  <button class="button primary-bg btn-block">登录</button>
                </form>
                <div class="shortcut-login">
                  <span>Or connect with</span>
                  <div class="buttons">
                    <a href="login-other-company.jsp" class="facebook"><i class="fab fa-facebook-f"></i>快速登录</a>
                   
                  </div>
                  <p>还没有账号? <a href="#">登录</a></p>
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

		<script
			src="http://ditu.google.cn/maps/api/js?key=AIzaSyC87gjXWLqrHuLKR0CTV5jNLdP4pEHMhmg"></script>
		<script src="js/map.js"></script>
		<script src="tool/layer/layer.js"></script>
		<!-- <script type="text/javascript">
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

				function checkCode() {
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
		</script> -->
</body>
</html>