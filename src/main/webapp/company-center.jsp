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
iframe {
	width: 100%;
	height: 100%;
	border: none;
}
</style>

</head>
<body>

	<%@include file="component/header-without-css.jsp"%>


	<!-- Breadcrumb -->
	<div class="alice-bg padding-top-70 padding-bottom-70">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="breadcrumb-area">
						<h1>我的企业 | 
						<c:if test="${User.status == 0 }">
												<span>待审核</span>
											</c:if>
											<c:if test="${User.status == 1 }">
												<span>已审核</span>
											</c:if>
						</h1>

					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<div class="alice-bg section-padding-bottom">
		<div class="container no-gliters">
			<div class="row no-gliters">
				<div class="col">
					<div class="dashboard-container" style="height: 1600px">
						<div class="dashboard-content-wrapper">
							<iframe src="showCompany"  > 
							
							
							</iframe>
						</div>
						<div class="dashboard-sidebar">
							<div class="user-info">
								<div class="thumb">
									<img src="${applicationScope.imageServer }${User.head==null?'image/header/1.jpg':User.head}" class="img-fluid" alt="">
								</div>
								<div class="user-body">
									<h5>${User.name }</h5>
								</div>
							</div>
							<div class="profile-progress">
								<div class="progress-item">
								</div>
							</div>
							<div class="dashboard-menu">
								<ul>
								<li class="active"><i class="fas fa-home"></i><a onclick="changeSrc('showCompany')" href="javascript:void(0);">公司信息</a></li>
								<li ><i class="fas fa-home"></i><a onclick="changeSrc('employer-dashboard-edit-profile.jsp')" href="javascript:void(0);">编辑信息</a></li>	
										<!-- employer-dashboard-edit-profile.jsp -->
										
									<li  ><i class="fas fa-home"></i><a
										onclick="changeSrc('company/companylist')"href="javascript:void(0);">发布的职位</a></li>
									<li><i class="fas fa-user"></i><a
										onclick="changeSrc('publish.jsp')" href="javascript:void(0);">发布新职位</a></li>
									<li><i class="fas fa-file-alt"></i><a
									onclick="changeSrc('companyMAppList?cid=${User.id}')" 	href="javascript:void(0);">申请管理</a></li>
									<li><i class="fas fa-edit"></i><a
										onclick="changeSrc('updatePassword.jsp')" href="javascript:void(0);">修改密码</a></li>
									<li><i class="fas fa-edit"></i><a
										onclick="changeSrc('company-businessinfo.jsp')" href="javascript:void(0);">工商信息
										 |
											<c:if test="${User.status == 0 }">
												<span>待审核</span>
											</c:if>
											<c:if test="${User.status == 1 }">
												<span>已审核</span>
											</c:if>
											
										</a></li>
								</ul>
								
								<ul class="delete">
									<li><i class="fas fa-power-off"></i><a
										href="loginout">退出</a></li>

								</ul>
								<!-- Modal -->
								<div class="modal fade modal-delete" id="modal-delete"
									tabindex="-1" role="dialog" aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-body">
												<h4>
													<i data-feather="trash-2"></i>Delete Account
												</h4>
												<p>Are you sure! You want to delete your profile. This
													can't be undone!</p>
												<form action="#">
													<div class="form-group">
														<input type="password" class="form-control"
															placeholder="Enter password">
													</div>
													<div class="buttons">
														<button class="delete-button">Save Update</button>
														<button class="">Cancel</button>
													</div>
													<div class="form-group form-check">
														<input type="checkbox" class="form-check-input" checked="">
														<label class="form-check-label">You accepts our <a
															href="#">Terms and Conditions</a> and <a href="#">Privacy
																Policy</a></label>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="component/footer.jsp"%>
</body>
<script type="text/javascript">
	function changeSrc(src) {
		$("iframe").attr("src", src);
	}
</script>
</html>