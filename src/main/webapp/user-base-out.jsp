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

<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/city.js"> </script>
    <script type="text/javascript" src="js/initCity.js"> </script>
      <script type="text/javascript" src="js/position.js"> </script>
    <script type="text/javascript" src="js/initPosition.js"> </script>
        <script type="text/javascript" src="js/index.js"> </script>
          <script type="text/javascript" src="js/education.js"> </script>
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
.resumemessge{
   width: 100%;
    height: auto;
    padding-top: 20px;
    padding-top: 30px;
}
.resumeheader{
	width: 60%;
    float: left;
    }
.resume-left{
	width: 300px;
    float: left;
}
.resume-right{
	width: 15%;
    float: right;
.education-label-lef{
   width:84%;
    float: left;
    display: unset;
    
}
.form-group {
    margin-bottom: 1rem;
    padding-left: 20px;
}
.education-label-right{
   width:15%;
   float:right;
}
span{
font-size:14px;
}

img{
	width: 50px;
}
</style>
<!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->

</head>
<body  style="background: #eeee;">
<div  style="margin-left: 260px;width: 800px;height: 1500px;" class="dashboard-content-wrapper container" >
		<div class="dashboard-section basic-info-input">
			<h3 style="margin-left: 240px">
				<i data-feather="user-check"></i>基本信息
			</h3>
			 <div class="resumeheader" >
		   <div style="padding-left:25px;" class="resume-left">
		    <h4><span>姓名 :${User.name}  </span></h4>
		     <h4> <span>  性别 ：${User.sex==0?'女':'男'}  </span></h4>
		        <h4><span>邮箱 ：${User.email} </span></h4>
		        <h4><span>手机号码:${User.phone}   </span></h4>
			</div>
			<div  class="resume-right" >
			<img class="image"
					src="${applicationScope.imageServer }${User.head==null?'image/header/1.jpg':User.head} " alt="">
			</div>
			</div>
			<div class="form-group row">
			</div>
			</div>
            <div style="margin-top: 200px;height:auto;">
		<div class=" details-section ">
		 <div class="resumeheader" >
		   <div class="resume-left">
			<h4>教育背景</h4>
			</div>
			</div>
		<div class="resumemessge" >
			<c:forEach items="${eList }" var="education" varStatus="idxStatus">
			<div class="edication-background details-section dashboard-section">
                  <div class="education-label-lef" style="display: unset;width: 100%;float: left;" >
                  <div class="form-group row">
                   <span > <span class="glyphicon glyphicon .glyphicon-home"></span> <label>学校：</label> ${education.schoolName} </span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                   <label>学历：</label><span id="educationlevel"></span>
                    <script type="text/javascript">
                  					var edu=${education.level};
 									$("#educationlevel").html(getEducation(edu));
						</script>
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
						 <label>专业：</label> <span><span class="glyphicon glyphicon .glyphicon-book"></span> ${education.specialty}</span>
						</div>
						 <div class="form-group row">
                    <label>入学时间：</label> <span>${education.startTime}- ${education.endTime}</span>
                    </div>
                   <div class="form-group row">
                    <label>校园经历：</label> <p>${education.schoolExperien}</p>
                   </div>
                   	</div>
			</div>
			</c:forEach>
			</div>
			</div>
		</div>
		<div class=" details-section ">
		 <div class="resumeheader" >
		   <div class="resume-left">
			<h4>工作经历</h4>
			</div>
			</div>
		<div class="resumemessge" >
			<c:forEach items="${workList }" var="work" varStatus="idxStatus" >
			<div  style=" margin-top: 20px;" class="edication-background details-section dashboard-section" >
                    <div class="education-label-lef" style="display: unset;width: 100%;float: left;" >
                  <div class="form-group row">
                    <label>公司名称：</label><span> ${work.companyName} </span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                      <label>公司部门：</label><span> ${work.dept}</span>
                  </div>
                  <div class="form-group row">
                     <label>工作时间：</label><span class="study-year">${work.startWorkTime}- ${work.endWordTime}</span>
                     </div>
                  <div class="form-group row">
                     <label>工作总结：</label><span class="study-year">${work.workContent}</span>
                   </div>
                  </div>
			</div>
				</c:forEach>
		</div>
			</div>
			<div class=" details-section ">
		 <div class="resumeheader" >
		   <div class="resume-left">
			<h4>项目经历</h4>
			</div>
			</div>
			<div class="resumemessge" >
			<c:forEach items="${pList}" var="project" varStatus="idxStatus">
			<div style="margin-top:20px;" class="edication-background details-section dashboard-section">
                  <div class="education-label-lef" style="display: unset;width: 100%;float: left;" >
                    <div class="form-group row">
                  <label>项目名称：</label><span>${project.projectName}</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                    <label>项目时间：</label><span class="study-year">${project.startTime}- ${project.endTime}</span>
                    <span class="study-year"></span>
                   </div>
                  <div class="form-group row">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    <label>项目总结：</label><p>${project.result}</p>
                     </div>
                  </div> 
			</div>
			</c:forEach>
			</div>
			</div>
					<div class=" details-section ">
			   <div class="resumeheader" >
		   <div class="resume-left">
			<h4>期望职位</h4>
			</div>
			</div>
			<div class="resumemessge" >
			<c:forEach items="${wantList}" var="wanted" varStatus="idxStatus">
			<div style="margin-top:20px;" class="edication-background details-section dashboard-section">
			   <div class="education-label-lef" style="display: unset;width: 100%;float: left;" >
                    <div class="form-group row">
                    <span >    职业类型：</span><span id="pType" class="wanted"> ${wanted.positionType}</span>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
               <label>期待薪资：</label> <span class="glyphicon glyphicon-usd" aria-hidden="true">${wanted.salary}</span>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                   <label>期待职位地点：</label><span class="cityName">${wanted.city}</span>
                   </div>
                 </div>
			</div>
			</c:forEach>
			</div>
			</div>
			<div class=" details-section ">
			   <div class="resumeheader" >
		   <div class="resume-left">
			<h4>自我评价</h4>
			</div>
			</div>
			<div class="resumemessge" >
			<c:forEach items="${wantList}" var="wanted" varStatus="idxStatus">
			<div  class="edication-background details-section dashboard-section">
			   <div class="education-label-lef" style="display: unset;width: 100%;float: left;" >
                    <div class="form-group row">
			<span>${summary }</span>
                  </div>
                   </div>
			</div>
			</c:forEach>
			</div>
			</div>
		</div>
</body>

    <script type="text/javascript">
    
     $(function(){
    	//加载
 		initChoosePosition("#position1", "#position2");
    	initChooseLocation("#location", "#location2");
     });
     
     $(function(){
    	 var want=$(".wanted");
    	  $.each(want, function (index, item){
    		  console.log($(item).html());
    		  var name = getPositionName( $(item).html());
    		   
    		  $(item).html(name);
    		  console.log(name);
    	  });
    });
     
$(function(){
	var cityname=$(".cityName");
	$.each(cityname, function (index, item){
		console.log($(item).html);
		console.log(index);
		console.log(item);
		var wantedcity=getCityName($(item).html());
		console.log(item);
		$(item).html(wantedcity);
		console.log(name);
		
	});

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
</script>
</html>
