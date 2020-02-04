<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
    <script src="assets/js/jquery.min.js"></script>
    	<script src="assets/js/jquery.ajaxchimp.min.js"></script>
    	<script src="tool/layer/layer.js"></script>
</head>
<body>
				
                  <div class="dashboard-section basic-info-input">
                    <h4><i data-feather="lock"></i>更改密码</h4>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">当前密码</label>
                      <div class="col-sm-9">
                        <input id="oldpassword" name="oldpwd" type="password" class="form-control" placeholder="当前密码">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">新密码</label>
                      <div class="col-sm-9">
                        <input type="password" name="password" id="pass" class="form-control" placeholder="新密码">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">确认密码</label>
                      <div class="col-sm-9">
                        <input type="password" id="pass2" class="form-control" placeholder="确认密码">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label"></label>
                      <div class="col-sm-9">
                        <button  id="changpwd" type="submit" class="btn btn-info">保存修改</button>
                      </div>
                    </div>
                  </div>
             
</body>
<script type="text/javascript">
$("#oldpassword").blur(function() {
	$.ajax({
		url : "company/CheckOldPassword",
		data : {
			'oldpwd' : $("#oldpassword").val()
		},
		type : "post",
		success : function(data) {
			console.log(data);
			if (!data) {
				alert("旧密码输入错误，请重新输入")
			}
		},
	});
});

 $("#changpwd").click(function() {
	$.ajax({
		url : "company/updateCompanyPassword",
		data : {
			'password' : $("#pass").val()
		},
		type : "post",
		success : function(data) {
			console.log(data);
			if (data) {
				alert("密码修改成功")
			}else{
				alert("密码修改失败")
			}
		},
	});
});
 
 $("#pass2").blur(function(){
	 if($("#pass").val()!=$("#pass2").val()){
		 alert("两次密码不一致")
	 }
 })


</script>
</html>