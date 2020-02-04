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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/education.js"></script>
<script type="text/javascript" src="js/position.js"></script>
<script type="text/javascript" src="js/city.js"></script>
<script type="text/javascript" src="js/index.js"></script>

<script type="text/javascript" src="tool/bootstrap/js/bootstrap.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="tool/bootstrap/css/bootstrap.css">

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
	


<style type="text/css">
h4 {
	padding-bottom: 0;
	padding-left: 0;
}

label {
	line-height: 40px;
}

/* .fromin {
	width: 200px;
	height: calc(2.25rem + 2px);
	padding: .375rem .75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
} */
.resumemessge{
   width: 100%;
    height: auto;
    padding-top: 20px;
    padding-top: 30px;
}
.resumeheader{
	width: 100%;
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
.education-label-right{
   width:15%;
   float:right;
}
</style>
</head>
<body>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
  <form action="resume/education" method="post">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4 class="modal-title" id="myModalLabel">添加教育背景</h4>
      </div>
      <div class="modal-body">
            <div class="job-post-form ">
				<div class="form-group">
				<div class="row">
					<label class="col-xs-2 col-form-label">学校</label>
						<div class="col-xs-10">
							<input type="text" name="education.schoolName" class="form-control"
								placeholder="学校名称">
						</div>
						
				</div>
					<div class="row">
							<label class="col-xs-2 col-form-label">学历：</label>
							<div class="col-xs-10">
								 <select name="education.level"  class="fromin form-control">
										<option>请选择学历</option>
										<option value="0">高中及以下</option>
										<option value="1">高中</option>
										<option value="2">本科</option>
										<option value="3">硕士</option>
										<option value="4">博士及以上</option>
									</select>
							</div>
				</div>
				<div class="row">
				<label class="col-xs-2 col-form-label">专业</label>
					<div class="col-xs-10">
						<input type="text" name="education.specialty" class="form-control"
							placeholder="专业名称">
					</div>
				</div>
				
				<div class="row">
				    <label class="col-xs-2 col-form-label">入学时间</label>
					<div class="col-xs-4">
						<input type="date" name="education.startTime" class="form-control" />
					</div>
					<label class="col-xs-2 col-form-label">毕业时间</label>
					<div class="col-xs-4">
						<input type="date" name="education.endTime" class="form-control" />
					</div>
				</div>
			
				
				
				<div class="row">
					<label class="col-xs-2 col-form-label">校园经历</label>
					<div class="col-xs-10">
						<textarea  name="education.schoolExperien"  cols="50px" rows="5px"></textarea>
					</div>
				</div>
					
					
				</div>
			</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
       <input  class="btn btn-info btn-sm" type="submit" value="保存"> 
      </div>
    </div>
</form>
  </div>
</div>
 
 <!-- 工作经验模态框 -->
 <div class="modal fade" id="workModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
  <form action="resume/wordexperiecnce" method="post">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4 class="modal-title" id="myModalLabel">添加工作经历</h4>
      </div>
      <div class="modal-body">
            <div class="job-post-form ">
				<div class="form-group">
				<div class="row">
					<label class="col-xs-2 col-form-label">公司名称</label>
						<div class="col-xs-10">
							<input type="text" name="word.companyName" class="form-control"
								placeholder="公司名称">
						</div>
				</div>
				<div class="row">
				<label class="col-xs-2 col-form-label">部门</label>
					<div class="col-xs-10">
						<input type="text" name="word.dept" class="form-control"
							placeholder="部门名称">
					</div>
				</div>
				
				<div class="row">
					<label class="col-xs-2 col-form-label">职位类型</label>
						<div class="col-xs-10">
							<input type="text" name="word.positionType" class="form-control"
								placeholder="部门名称">
						</div>
				</div>
				
				<div class="row">
				    <label class="col-xs-2 col-form-label">开始时间</label>
					<div class="col-xs-4">
						<input type="date" name="word.startWorkTime" class="form-control" />
					</div>
					<label class="col-xs-2 col-form-label">结束时间</label>
					<div class="col-xs-4">
						<input type="date" name="word.endWordTime" class="form-control" />
					</div>
				</div>
				
				<div class="row">
					<label class="col-xs-2 col-form-label">工作经历</label>
					<div class="col-xs-10">
						<textarea  name="word.workContent"  cols="50px" rows="5px"></textarea>
					</div>
				</div>
					
					
				</div>
			</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
       <input  class="btn btn-info btn-sm" type="submit" value="保存"> 
      </div>
    </div>
    </form>
  </div>
</div>
 
 <!-- 项目经历模态框 -->
  <div class="modal fade" id="projectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
  <form action="resume/project" method="post">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4 class="modal-title" id="myModalLabel">添加项目经历</h4>
      </div>
      <div class="modal-body">
            <div class="job-post-form ">
				<div class="form-group">
				<div class="row">
					<label class="col-xs-2 col-form-label">项目名称</label>
						<div class="col-xs-10">
							<input type="text" name="project.projectName" class="form-control"
								placeholder="项目名称">
						</div>
				</div>
				<div class="row">
				<label class="col-xs-2 col-form-label">项目角色</label>
					<div class="col-xs-10">
						<input type="text" name="project.role" class="form-control"
							placeholder="部门名称">
					</div>
				</div>
				
				
				<div class="row">
				    <label class="col-xs-2 col-form-label">开始时间</label>
					<div class="col-xs-4">
						<input type="date" name="project.startTime" class="form-control" />
					</div>
					<label class="col-xs-2 col-form-label">结束时间</label>
					<div class="col-xs-4">
						<input type="date" name="project.endTime" class="form-control" />
					</div>
				</div>
				
				<div class="row">
					<label class="col-xs-2 col-form-label">项目成果</label>
					<div class="col-xs-10">
						<textarea  name="project.result"  cols="50px" rows="5px"></textarea>
					</div>
				</div>
					
					
				</div>
			</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
      <input  class="btn btn-info btn-sm" type="submit" value="保存"> 
      </div>
    </div>
    </form>
  </div>
</div>

<!-- 期望职位模态框 -->
   <div class="modal fade" id="wantedJob" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <form action="resume/wanted"  method="post">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4 class="modal-title" id="myModalLabel">添加期望职位</h4>
      </div>
      <div class="modal-body">
            <div class="job-post-form ">
				<div class="form-group">
				<div class="row">
					<label class="col-xs-2 col-form-label">职位类型</label>
					<div  style="display: unset;" class="form-group">
							 <select id="position1" 
									 class="fromin">
									<option>请选择职位类型</option>
								</select>
								<select id="position2" name="wanted.positionType" 
									 class="fromin">
									<option>请选择职位类型</option>
								</select>
							</div>
				</div>
				<div class="row">
				<label class="col-xs-2 col-form-label">职位薪资</label>
					<div class="col-xs-10">
						<input type="text" name="wanted.salary" class="form-control"
							placeholder="职位薪资">
					</div>
				</div>
				
				
				<div class="row">
				    <label class="col-xs-2 col-form-label">工作地点</label>
				    <div  style="display: unset;" class="form-group">
							 <select id="location"  
									 class="fromin">
									<option>请选择工作地点</option>
									
								</select>
							</div>
							 <select id="location2" name="wanted.city" 
									 class="fromin">
									<option>请选择市区</option>
								</select>
				</div>
				</div>
			</div>
			
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
         <input  class="btn btn-info btn-sm" type="submit" value="保存"> 
      </div>
    </div>
     </form>
  </div>
</div>
 
  <!-- 自我评价模态框 -->
  <div class="modal fade" id="MyselfModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
  <form action="resume/resumesummary" method="post">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4 class="modal-title" id="myModalLabel">自我评价</h4>
      </div>
      <div class="modal-body">
            <div class="job-post-form ">
				<div class="form-group">
				<div class="row">
					<label class="col-xs-2 col-form-label"></label>
						<div class="col-xs-10">
						<textarea  name="summary" cols="50px" rows="5px"></textarea>
						
						</div>
				</div>
					
				</div>
			</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
      <input  class="btn btn-info btn-sm" type="submit" value="保存"> 
      </div>
    </div>
    </form>
  </div>
</div>
 
 <!-- 模态框结束 -->
 
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
   			
    </div>
  </div>
</div>				
	<div class="dashboard-content-wrapper">
		<div class="download-resume ">
			<a href="export/resume">导出简历<i data-feather="download"></i></a> <a
			id="question" >简历预览<i data-feather="download"></i></a>
		</div>
   
		<hr>
		<div class=" details-section " >
		   <div class="resumeheader" >
		   <div class="resume-left">
			<h4>教育背景</h4>
				<hr>
			</div>
			<div  class="resume-right" >
			<button  role="button" data-toggle="modal" data-target="#myModal"> 
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
			</button>
			</div>
			</div>
			<div class="resumemessge" >
			<c:forEach items="${eList }" var="education" varStatus="idxStatus">
			<div class="edication-background details-section dashboard-section">
                  <i data-feather="book"></i>${education.schoolName}
                   <div class="education-label">
                  <div class="education-label-lef" style="display: unset;width: 84%;float: left;" >
                   <span id="educationlevel" class="eLevel">${education.level}</span>
                    <span class="study-year">${education.startTime}- ${education.endTime}</span>
                    <span class="study-year">${education.specialty}</span>
                    <p>${education.schoolExperien}</p>
                   </div>
                   <div class="education-label-right">
                  <a href="resume/deleteResumeedu?id=${idxStatus.index}" type="button" class="btn btn-default btn-sm">
					  <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> delete
					</a>
                   </div>
                  </div>
			</div>
			</c:forEach>
			</div>
			  
		</div>
		<div class=" details-section " style="margin-top: 20px">
		<hr>
				   <div class="resumeheader" >
		   <div class="resume-left">
			<h4>工作经历</h4>
				<hr>
			</div>
			<div  class="resume-right" >
			<button  role="button" data-toggle="modal" data-target="#workModal"> 
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
			</button>
			</div>
			</div>
			<div class="resumemessge" >
		
			<c:forEach items="${workList }" var="work" varStatus="idxStatus" >
			<div  style=" margin-top: 20px;" class="edication-background details-section dashboard-section" >
                  <i data-feather="book"></i>${work.companyName}  ${work.dept}
                  <div class="education-label">
                  <div class="education-label-lef" style="display: unset;width: 84%;float: left;" >
                    <span class="study-year">${work.startWorkTime}- ${work.endWordTime}</span>
                    <span class="study-year">${work.workContent}</span>
                    <p></p>
                   </div>
                   <div class="education-label-right">
                  <a href="resume/deleteResumework?id=${idxStatus.index}" type="button" class="btn btn-default btn-sm">
					  <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> delete
					</a>
                   </div>
                  </div>
			</div>
				</c:forEach>
		</div>
		</div>

		<div class=" details-section " style="margin-top: 20px">
			   <div class="resumeheader" >
		   <div class="resume-left">
			<h4>项目经历</h4>
				<hr>
			</div>
			<div  class="resume-right" >
			<button  role="button" data-toggle="modal" data-target="#projectModal"> 
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
			</button>
			</div>
			</div>
			<div class="resumemessge" >
			<c:forEach items="${pList}" var="project" varStatus="idxStatus">
			<div style="margin-top:20px;" class="edication-background details-section dashboard-section">
		 

                   <i data-feather="book"></i>${project.projectName}
                  <div class="education-label">
                  <div class="education-label-lef" style="display: unset;width: 84%;float: left;" >
                    <span class="study-year">${project.startTime}- ${project.endTime}</span>
                    <span class="study-year"></span>
                    <p>${project.result}</p>
                   </div>
                   <div class="education-label-right">
                  <a href="resume/deleteResumePro?id=${idxStatus.index}" type="button" class="btn btn-default btn-sm">
                 
					  <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> delete
					</a>
                   </div>
                  </div>  
                  
			</div>
			</c:forEach>
			</div>
			  
		</div>

	<div class=" details-section " style="margin-top: 20px">

			   <div class="resumeheader" >
		   <div class="resume-left">
			<h4>期望职位</h4>
				<hr>
			</div>
			<div  class="resume-right" >
			<button  role="button" data-toggle="modal" data-target="#wantedJob"> 
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
			</button>
			</div>
			</div>
		 
			<div class="resumemessge" >
			<c:forEach items="${wantList}" var="wanted" varStatus="idxStatus">
			<div class="edication-background details-section dashboard-section">
        
            <span >    职业类型：</span><span id="pType" class="wanted"> ${wanted.positionType}</span>
                  		<!-- <script type="text/javascript">
                  					var type =;
 									$("#pType").html(getPositionName(type));
						</script> -->
                  <div class="education-label">
                  <div class="education-label-lef" style="display: unset;width: 84%;float: left;" >
                    <span class="study-year"></span>
                    <span class="study-year"><span class="glyphicon glyphicon-usd" aria-hidden="true">${wanted.salary}</span>
                   <p id="pCity"  class="cityName">${wanted.city}</p>
                  <!--  	<script type="text/javascript">
                  					var city = ${wanted.city};
 									$("#pCity").html(getCityName(city));
						</script> -->
                   </div>
                   <div class="education-label-right">
                <a href="resume/deleteResumewant?id=${idxStatus.index}" type="button" class="btn btn-default btn-sm">
                 
					  <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> delete
					</a>
                   </div>
                  </div>

			</div>
		 
			</c:forEach>
			</div>
		</div>
		
		<div class=" details-section " style="margin-top: 20px">
			 <div class="resumeheader" >
		   <div class="resume-left">
			<h4>自我评价</h4>
			 	<hr>
			</div>
			<div  class="resume-right" >
			<button  role="button" data-toggle="modal" data-target="#MyselfModal"> 
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
			</button>
			</div>
			</div>
			<div class="resumemessge" >
			<span>${summary }</span>
			</div>
			</div>
	
	</div>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/city.js"> </script>
    <script type="text/javascript" src="js/initCity.js"> </script>
      <script type="text/javascript" src="js/position.js"> </script>
    <script type="text/javascript" src="js/initPosition.js"> </script>
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
    	  
    	   $(".eLevel").each(function(i,item){
			 console.log(item);
			 var edu = $(item).html();
			  $(item).html(getEducation(edu));
		})
    });
     
$(function(){
	var cityname=$(".cityName");
	$.each(cityname, function (index, item){
		console.log($(item).html);
		console.log(index);
		console.log(item);
		var wantedcity=getCityName($(item).html());
		$(item).html(wantedcity);
		console.log(name);
		
	});

	});    
	
$('#question').click(function(){
    window.open("./resume/lookResumetouser");  
})
    </script>

</html>