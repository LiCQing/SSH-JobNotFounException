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
										<tr class="candidates-list">
											<td class="title">
												<div class="thumb">
													<img src="dashboard/images/user-1.jpg" class="img-fluid"
														alt="">
												</div>
												<div class="body">
													<h5>
														<a href="#">Lula Wallace</a>
													</h5>
													<div class="info">
														<span class="designation"><a href="#"><i
																data-feather="check-square"></i>Senior UI / UX Designer</a></span>
														<span class="location"><a href="#"><i
																data-feather="map-pin"></i>New Orleans</a></span>
													</div>
												</div>
											</td>
											<td class="status"><i data-feather="check-circle"></i>Shortlisted</td>
											<td class="action"><a href="#" class="download"><i
													data-feather="download"></i></a> <a href="#" class="inbox"><i
													data-feather="mail"></i></a> <a href="#" class="remove"><i
													data-feather="trash-2"></i></a></td>
										</tr>
										<tr class="candidates-list">
											<td class="title">
												<div class="thumb">
													<img src="dashboard/images/user-1.jpg" class="img-fluid"
														alt="">
												</div>
												<div class="body">
													<h5>
														<a href="#">Lula Wallace</a>
													</h5>
													<div class="info">
														<span class="designation"><a href="#"><i
																data-feather="check-square"></i>Senior UI / UX Designer</a></span>
														<span class="location"><a href="#"><i
																data-feather="map-pin"></i>New Orleans</a></span>
													</div>
												</div>
											</td>
											<td class="status"><i data-feather="check-circle"></i>Shortlisted</td>
											<td class="action"><a href="#" class="download"><i
													data-feather="download"></i></a> <a href="#" class="inbox"><i
													data-feather="mail"></i></a> <a href="#" class="remove"><i
													data-feather="trash-2"></i></a></td>
										</tr>
										<tr class="candidates-list">
											<td class="title">
												<div class="thumb">
													<img src="dashboard/images/user-1.jpg" class="img-fluid"
														alt="">
												</div>
												<div class="body">
													<h5>
														<a href="#">Lula Wallace</a>
													</h5>
													<div class="info">
														<span class="designation"><a href="#"><i
																data-feather="check-square"></i>Senior UI / UX Designer</a></span>
														<span class="location"><a href="#"><i
																data-feather="map-pin"></i>New Orleans</a></span>
													</div>
												</div>
											</td>
											<td class="status"><i data-feather="check-circle"></i>Shortlisted</td>
											<td class="action"><a href="#" class="download"><i
													data-feather="download"></i></a> <a href="#" class="inbox"><i
													data-feather="mail"></i></a> <a href="#" class="remove"><i
													data-feather="trash-2"></i></a></td>
										</tr>
										<tr class="candidates-list">
											<td class="title">
												<div class="thumb">
													<img src="dashboard/images/user-1.jpg" class="img-fluid"
														alt="">
												</div>
												<div class="body">
													<h5>
														<a href="#">Lula Wallace</a>
													</h5>
													<div class="info">
														<span class="designation"><a href="#"><i
																data-feather="check-square"></i>Senior UI / UX Designer</a></span>
														<span class="location"><a href="#"><i
																data-feather="map-pin"></i>New Orleans</a></span>
													</div>
												</div>
											</td>
											<td class="status"><i data-feather="check-circle"></i>Shortlisted</td>
											<td class="action"><a href="#" class="download"><i
													data-feather="download"></i></a> <a href="#" class="inbox"><i
													data-feather="mail"></i></a> <a href="#" class="remove"><i
													data-feather="trash-2"></i></a></td>
										</tr>
									</tbody>
								</table>
								<div class="pagination-list text-center">
									<nav class="navigation pagination">
									<div class="nav-links">
										<a class="prev page-numbers" href="#"><i
											class="fas fa-angle-left"></i></a> <a class="page-numbers"
											href="#">1</a> <span aria-current="page"
											class="page-numbers current">2</span> <a class="page-numbers"
											href="#">3</a> <a class="page-numbers" href="#">4</a> <a
											class="next page-numbers" href="#"><i
											class="fas fa-angle-right"></i></a>
									</div>
									</nav>
								</div>
							</div>
</body>

</html>