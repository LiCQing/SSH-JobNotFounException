<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


<!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
h4 {
	padding-bottom: 0;
	padding-left: 0;
}

label {
	line-height: 40px;
}

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

	<div class="dashboard-content-wrapper">
		<div class="download-resume ">
			<a href="#">上传简历<i data-feather="download"></i></a> <a
				href="javascript:void(0);">简历预览<i data-feather="download"></i></a>
		</div>
	 <form action="resume/updateResume" method="post"> 
		<hr>
		<div class=" details-section " style="margin-top: 20px">
			<h4>教育背景</h4>
			<div class="job-post-form ">
				<div class="form-group row">
					<label class="col-md-2 col-form-label">学校</label>
					<div class="col-md-4">
						<input type="text" name="education.schoolName" class="form-control"
							placeholder="学校名称">
					</div>
				
					<label class="col-md-2 col-form-label">专业</label>
					<div class="col-md-4">
						<input type="text" name="education.specialty" class="form-control"
							placeholder="专业名称">
					</div>
					
					<label class="col-md-2 col-form-label">入学时间</label>
					<div class="col-md-4">
						<input type="date" name="education.startTime" class="form-control" />
					</div>
					<label class="col-md-2 col-form-label">毕业时间</label>
					<div class="col-md-4">
						<input type="date" name="education.endTime" class="form-control" />
					</div>
					<label class="col-md-2 col-form-label">校园经历</label>
					<div class="col-md-10">
						<textarea  name="education.schoolExperien"  cols="70px" rows="5px"></textarea>
					</div>
					
				</div>
			</div>
		</div>
		<div class=" details-section " style="margin-top: 20px">
			<h4>工作经历</h4>
			<div class="job-post-form ">
				<div class="form-group row">
					<label class="col-md-2 col-form-label">公司名称</label>
					<div class="col-md-4">
						<input type="text" name="Wordexperiecnce.companyName" class="form-control" value="${wordexperiecnce.companyName}"
							placeholder="公司名称">
					</div>
				
					<label class="col-md-2 col-form-label">部门</label>
					<div class="col-md-4">
						<input type="text" name="Wordexperiecnce.dept"  class="form-control" value="${wordexperiecnce.dept}"
							placeholder="专业名称">
					</div>
					
					<label class="col-md-2 col-form-label">开始时间</label>
					<div class="col-md-4">
						<input type="date" name="Wordexperiecnce.startWorkTime"  value="${wordexperiecnce.startWorkTime}" class="form-control" />
					</div>
					<label class="col-md-2 col-form-label">结束时间</label>
					<div class="col-md-4">
						<input type="date" name="Wordexperiecnce.endWordTime" value="${wordexperiecnce.endWordTime}" class="form-control" />
					</div>
					<label class="col-md-2 col-form-label">工作经历</label>
					<div class="col-md-10">
						<textarea name="Wordexperiecnce.workContent"  value="${wordexperiecnce.workContent }" cols="70px" rows="5px"></textarea>
					</div>
					
				</div>
			</div>
		</div>

		<div class=" details-section " style="margin-top: 20px">
			<h4>项目经历</h4>
			<div class="job-post-form ">
				<div class="form-group row">
					<label class="col-md-2 col-form-label">项目名称</label>
					<div class="col-md-4">
						<input type="text" 	name="ProjectExperience.projectName" class="form-control" value="${projectExperience.projectName }"
							placeholder="项目名称">
					</div>
				
					<label class="col-md-2 col-form-label">项目角色</label>
					<div class="col-md-4">
						<input type="text" name="ProjectExperience.role"  class="form-control"  value="${projectExperience.role }"
							placeholder="专业名称">
					</div>
					
					<label class="col-md-2 col-form-label">项目开始时间</label>
					<div class="col-md-4">
						<input type="date" name="ProjectExperience.startTime" class="form-control" />
					</div>
					<label class="col-md-2 col-form-label">项目完成时间</label>
					<div class="col-md-4">
						<input type="date" name="ProjectExperience.endTime"  class="form-control" />
					</div>
					<label class="col-md-2 col-form-label">项目经历</label>
					<div class="col-md-10">
						<textarea  name="ProjectExperience.result"  cols="70px" rows="5px"></textarea>
					</div>
					
				</div>
			</div>
		</div>

	<div class=" details-section " style="margin-top: 20px">
			<h4>期望职位</h4>
			<div class="job-post-form ">
				<div class="form-group row">
					<label class="col-md-2 col-form-label">职务类型</label>
					<div class="col-md-4">
						<input type="text" name="WantedPosition.positionType"  class="form-control"
							placeholder="职务类型">
					</div>
				
					<label class="col-md-2 col-form-label">薪资</label>
					<div class="col-md-4">
						<input type="text" name="WantedPosition.salary" " class="form-control"
							placeholder="职位薪资">
					</div>
					<label class="col-md-2 col-form-label">工作地点</label>
					<div class="col-md-4">
						<input type="text" name="WantedPosition.city" class="form-control"
							placeholder="工作地点">
					</div>
				</div>
			</div>
		</div>
		<div class=" details-section " style="margin-top: 20px">
			<h4>自我评价</h4>
			<div class="job-post-form ">
				<label class="col-md-2 col-form-label">自我评价</label>
					<div class="col-md-10">
						<textarea  name="resume.summary" cols="70px" rows="5px"></textarea>
					</div>
			</div>
		</div><br/>
		<div class=" details-section " style="margin-top: 20px;text-align: center;">
		<input type="submit" value="取消"> <input type="submit"
			value="保存">
			</div>
	</div>
</form> 
</body>
</html>