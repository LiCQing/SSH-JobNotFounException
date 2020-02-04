 <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	  
<header class="header-2">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="header-top">
					<div class="logo-area">
						<a href="hotJoblist"><img src="images/logo-2.png" alt=""></a>
					</div>
					<div class="header-top-toggler">
						<div class="header-top-toggler-button"></div>
					</div>
					<div class="top-nav">
						<div class="dropdown header-top-notification">
						</div>
						<div class="dropdown header-top-account">
							<a href="#" class="account-button">${User!=null?User.name:'未登陆' }</a>
							<div class="account-card">
								<div class="header-top-account-info">
									<a href="hotJoblist" class="account-thumb"> <img
										src="images/account/thumb-1.jpg" class="img-fluid" alt="">
									</a>
									<div class="account-body">
										<h5>
											<a href="hotJoblist">账号用户名</a>
										</h5>
										<span class="mail">chavez@domain.com</span>
									</div>
								</div>
								<ul class="account-item-list">
									<li><a href="#"><span class="ti-user"></span>Account</a></li>
									<li><a href="#"><span class="ti-settings"></span>Settings</a></li>
									<li><a href="#"><span class="ti-power-off"></span>Log
											Out</a></li>
								</ul>
							</div>
						</div>
				 
					</div>
				</div>
				<nav class="navbar navbar-expand-lg cp-nav-2">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li class="menu-item active"><a title="Home"
							href="hotJoblist">主页</a></li>
						<li class="menu-item dropdown"><a title="" href="#"
							data-toggle="dropdown" class="dropdown-toggle"
							aria-haspopup="true" aria-expanded="false">Jobs</a>
							<ul class="dropdown-menu">
								<li class="menu-item"><a title="About"
									href="job-listing.html">岗位列表</a></li>
								<li class="menu-item"><a title="About"
									href="job-listing-with-map.html">Job Listing With Map</a></li>
								<li class="menu-item"><a title="About"
									href="job-details.html">Job Details</a></li>
								<li class="menu-item"><a title="About" href="post-job.html">Post
										Job</a></li>
							</ul></li>

					</ul>
				</div>
				</nav>
			</div>
		</div>
	</div>
	</header>