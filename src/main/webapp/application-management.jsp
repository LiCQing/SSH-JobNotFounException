<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/feather.min.js"></script>
	<script src="assets/js/bootstrap-select.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/visible.js"></script>
	<script src="assets/js/chart.js"></script>
	<script src="assets/js/plyr.js"></script>
	<script src="assets/js/tinymce.min.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/jquery.ajaxchimp.min.js"></script>

	<script src="js/custom.js"></script>

<!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
<link href="css/component.css" rel="stylesheet">

</head>
<body>

  <div class="modal fade" id="MyselfModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
  <form action="updatecompanyMApp" method="post">
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title" id="myModalLabel">输入反馈信息</h4>
      </div>
      <div class="modal-body">
            <div class="job-post-form ">
				<div class="form-group">
				<div class="row">
					<label class="col-md-2 col-form-label"></label>
						<div class="col-md-10">
					<input type="hidden" id="applyId" name="id">
					<input type="hidden" id="tag" name="tag" >
						<textarea  name="msg" cols="50px" rows="5px"></textarea>
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


	<div class="manage-candidate-container">
		<table class="table">
			<thead>
				<tr>
					<th>申请列表</th>
					<th>状态</th>
					<th class="action">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cApplies}" var="t">
					<tr class="candidates-list">
						<td class="title">
							<div class="thumb">
								<img src="${applicationScope.imageServer }${t.tbUser.head==null?'image/header/1.jpg':t.tbUser.head}" class="img-fluid" alt="">
							</div>
							<div class="body">
							<c:if test="${t.rfile.id==-1 }">
								<h5>
									<a href="export/resume?uId=${t.tbUser.id}">申请人：${t.tbUser.name}</a>
								</h5>
								</c:if> 
								<c:if test="${t.rfile.id==1 }">
								<h5>
									<a href="http://116.62.113.54/${t.rfile.url}?n=${t.rfile.name}">申请人：${t.tbUser.name}</a>
								</h5>
								</c:if>
								<div class="info">
									<span class="designation"><a href="#"><i
											data-feather="check-square"></i>申请职位：${t.tbPosition.name }</a></span> <span
										class="location"><a href="#"><i
											data-feather="map-pin"></i>电话：${t.tbUser.phone }</a></span>
								</div>
							</div>
						</td>
						<!--        状态 -->
						<c:choose>
							<c:when test="${t.status eq 0}">
								<td class="status"> 未处理</td>
							</c:when>
							<c:when test="${t.status eq -1}">
								<td class="status"> 已取消</td>
							</c:when>
							<c:when test="${t.status eq 1}">
								<td class="status"> 已通过</td>
							</c:when>
							<c:otherwise>
								<td class="status"><i data-feather="check-circle"></i>已拒绝</td>
							</c:otherwise>
						</c:choose>


						<td class="action"><input type="hidden" id="agree"
							value="${t.id }"> 
							<c:choose>
							<c:when test="${t.status eq 2}">
								<button  style="background-color: white;border-radius: 15px;border-style:solid;" onclick="window.parent.doSendtoSomeOne('u,${t.tbUser.id}','${t.tbUser.name }')">  
								联系我
						</button>
							<button  style="background-color: white;border-radius: 15px;border-style:solid;" id="${t.id }" data-toggle="modal" data-target="#MyselfModal" onclick="change(this)">  
								 同意
						</button>
						</c:when>
						<c:when test="${t.status eq 1}">
						<button style="background-color: white;border-radius: 15px;border-style:solid;" id="${t.id }" data-toggle="modal"  data-target="#MyselfModal" onclick="change2(this)">
						拒绝
						</button>
						</c:when>
							<c:when test="${t.status eq -1}">
						<a>
						不可操作
						</a>
						</c:when>
						<c:otherwise>
						<button  style="background-color: white;border-radius: 15px;border-style:solid;" onclick="window.parent.doSendtoSomeOne('u,${t.tbUser.id}','${t.tbUser.name }')">  
								联系我
						</button>
						<button  style="background-color: white;border-radius: 15px;border-style:solid;" id="${t.id }" data-toggle="modal" data-target="#MyselfModal" onclick="change(this)">  
								 同意
						</button>
						<button style="background-color: white;border-radius: 15px;border-style:solid;" id="${t.id }" data-toggle="modal"  data-target="#MyselfModal" onclick="change2(this)">
						拒绝
						</button>
						</c:otherwise>
							</c:choose>
							
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>





	<script type="text/javascript">
		function change(elm) {
			console.log(elm.id);
			$("#applyId").val(elm.id);
			document.getElementById("tag").value=1;
		}
		function change2(elm) {
			console.log(elm.id);
			$("#applyId").val(elm.id);
			document.getElementById("tag").value=2;
		}
	</script>


</body>
</html>