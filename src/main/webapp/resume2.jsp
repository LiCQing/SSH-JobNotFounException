<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Oficiona修改</title>

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
<style type="text/css">
.fromin {
	width: 200px;
	height: calc(2.25rem + 2px);
	margin-left: 20px;
	padding: .375rem .75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}
</style>
</head>
<body>
		<form action="resume/updateResume" method="post">
	<div class="dashboard-content-wrapper">
		<div class="download-resume dashboard-section">
			<a href="#">上传简历<i data-feather="download"></i></a> <a href="#">上传求职信<i
				data-feather="download"></i></a>
		</div>
		<div class="skill-and-profile dashboard-section">
			<div class="skill">
				<label>技能:<div  class="form-group">
							 <select name="resume.skill" value="${resume.skill }"
									 class="fromin">
									<option>技能</option>
									<option value="0">运营管理</option>
									<option value="1">技术开发</option>
									<option value="2">销售服务</option>
									<option value="3">高科技技术</option>
									<option value="4">互联网</option>
									<option value="5">机械</option>
								</select>
							</div></label>

			</div>
			<div class="social-profile">
				<label>社交:</label> <a href="#"><i class="fab fa-facebook-f"></i></a>
				<a href="#"><i class="fab fa-twitter"></i></a> <a href="#"><i
					class="fab fa-google-plus"></i></a> <a href="#"><i
					class="fab fa-linkedin-in"></i></a> <a href="#"><i
					class="fab fa-pinterest-p"></i></a> <a href="#"><i
					class="fab fa-behance"></i></a> <a href="#"><i
					class="fab fa-dribbble"></i></a> <a href="#"><i
					class="fab fa-github"></i></a>
			</div>
		</div>
		<div class="about-details details-section dashboard-section">
			<h4>
				<i data-feather="align-left"></i>关于我
			</h4>
			<p></p>
			<p></p>
			<div class="information-and-contact">
				<div class="information">
					<h4>信息</h4>
					<ul>
						<li><span>姓名:</span><input type="text"
							name="user.name" value="${user.name }"
							class="fromin"></li>
						<li>
							<div class="form-group">
								性别: <select name="user.sex" value="${user.sex }"
									 class="fromin">
									<option>请选择</option>
									<option value="0">女</option>
									<option value="1">男</option>
								</select>
							</div>
						</li>


						<li><span>生日:</span><input type="text" name="user.birthday" valu="${user.birthday }"
							  placeholder="年/月/日" class="fromin"></li>
						<li>
							<div class="form-group">
								学历: <select name="user.education" value="${education.level}"
									 class="fromin">
									<option>学历</option>
									<option value="0">无要求</option>
									<option value="1">高中</option>
									<option value="2">专科</option>
									<option value="3">本科</option>
									<option value="4">硕士</option>
									<option value="5">博士</option>
								</select>
							</div>
						</li>
						<li><span>联系方式:<input type="text"  value="${user.phone }"
								name="user.phone" 
								class="fromin"></span>
								</li>
						<li><span>微信:<input type="text" value="${user.wechat }"
								name="user.wechat" 
								class="fromin"></span>
								</li>
						
					</ul>
				</div>
			</div>
		</div>
		<div class="edication-background details-section dashboard-section">
			<h4>
				<i data-feather="book"></i>教育背景
			</h4>
				<div class="information">
					<h4>信息</h4>
					<ul>
						<li><span>学校:</span><input type="text" 
							name="education.schoolName" 
							class="fromin"></li>
						<li>
							<span>专业:</span><input type="text"
							name="education.specialty" 
							class="fromin">
						</li>


						<li><span>入学时间:<input type="text" name="education.startTime"
							 class="fromin"></span>	</li>
							<li><span>至:<input type="text"
								name="education.endTime" 
								class="fromin"></span>
								</li>
					
						<li><span>校园经历:<input type="text"
								name="education.schoolExperien" 
								class="fromin"></span></li>
						
					</ul>
				</div>
		</div>
		<div class="experience dashboard-section details-section">
			<h4>
				<i data-feather="briefcase"></i>工作经历
			</h4>
				<div class="information">
					<h4>信息</h4>
					<ul>
						<li><span>公司名称:</span><input type="text"
							name="Wordexperiecnce.companyName"
							class="fromin"></li>
						<li>
							<span>部门:</span><input type="text"
							name="Wordexperiecnce.dept" 
							class="fromin">
						</li>
						
						<li><span>开始时间:<input type="text" name="Wordexperiecnce.startWorkTime"
							value="${word.companyName }" class="fromin"></span></li>
					<li><span>结束时间:<input type="text" name="Wordexperiecnce.endWordTime"
							 class="fromin"></span>
							</li>
						
						<li>
							<span>职业类型:</span><input type="text"
							name="Wordexperiecnce.positionType" 
							class="fromin">
						</li>
						<li><span>工作内容:<input type="text"
								name="Wordexperiecnce.workContent" 
								class="fromin"></span></li>
						
					</ul>
				</div>
			
		</div>

		<div class="special-qualification dashboard-section details-section">
			<h4>
				<i data-feather="gift"></i>项目经历
			</h4>
				<div class="information">
					<h4>信息</h4>
					<ul>
						<li><span>项目名:</span><input type="text"
							name="ProjectExperience.projectName" 
							class="fromin">
							</li>
					<li><span>项目角色:</span><input type="text"
							name="ProjectExperience.role" value="${projo.role }"
							class="fromin">
							</li>
							<li><span>开始时间:</span><input type="text"
							name="ProjectExperience.startTime" 
							class="fromin"></li>
							<li><span>结束时间:</span><input type="text"
							name="ProjectExperience.endTime" 
							class="fromin"></li>
							
						<li><span>项目成果:</span><input type="text" name="ProjectExperience.result"
							 class="fromin">
							</li>
					</ul>
				</div>
		</div>

		<div
			class="personal-information dashboard-section last-child details-section">
			<h4>
				<i data-feather="user-plus"></i>期望职位
			</h4>
			<div class="information">
					<h4>信息</h4>
					<ul>
						<li><span>职位类型:</span><input type="text"
							name="WantedPosition.positionType" value="wwwwww"
							class="fromin">
							</li>
					<li><span>薪资:</span><input type="text"
							name="WantedPosition.salary" "
							class="fromin">
							</li>
						<li><span>城市:</span><input type="text" name="WantedPosition.city"
							 class="fromin">
							</li>
							
					</ul>
				</div>
		</div>
		
		<div
			class="personal-information dashboard-section last-child details-section">
			<h4>
				<i data-feather="user-plus"></i>自我评价
			</h4>
			<div class="information">
			<h4>信息</h4>
			<li><span>自我评价内容:</span><input type="text" name="resume.summary"
							class="fromin">
							</li>
			</div>
			</div>
		<input type="submit" value="取消">
		<input type="submit" value="保存">
	</div>
</form>
</body>
</html>