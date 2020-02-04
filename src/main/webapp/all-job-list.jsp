<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- 所有职位列表页面 -->
<!-- 导入头部 -->
<%@include file="component/header2.jsp"%>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="js/city.js"></script>
<script  src="js/position.js"></script>
<script  src="js/index.js"></script>   

<!-- Breadcrumb -->
<div class="alice-bg padding-top-70 padding-bottom-70">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="breadcrumb-area">
					<h1>岗位列表</h1>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">公司名称</a></li>
							<li class="breadcrumb-item active" aria-current="page">岗位列表</li>
						</ol>
					</nav>
				</div>
			</div>
			<div class="col-md-6">
				<div class="breadcrumb-form">
					<form action="#">
						<input type="text" placeholder="请输入你想要了解的职位">
						<button>
							<i data-feather="search"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb End -->



<!-- Job Listing -->
<div id="app" class="alice-bg section-padding-bottom">
	<div class="container">
		<div class="row no-gutters">
			<div class="col">
				<div class="job-listing-container">
					<div class="filtered-job-listing-wrapper">
						<div class="job-view-controller-wrapper">
							<div class="job-view-controller">
								<div class="controller list active">
									<i data-feather="menu"></i>
								</div>
								<div class="controller grid">
									<i data-feather="grid"></i>
								</div>
								<div class="job-view-filter">
									<select class="selectpicker">
										<option value="" selected>筛选</option>
										<option value="california">热门</option>
										<option value="las-vegas">默认</option>
									</select>
								</div>
							</div>
							<div class="showing-number">
								<span>每页显示1-8个工作岗位</span>
							</div>
						</div>
						<!-- vue渲染求职列表部分 -->
						<div  class="job-filter-result">
							<div class="job-list" v-for="job in jobList">
								<div class="thumb">
									<a href="#"> <img src="images/job/company-logo-8.png"
										class="img-fluid" alt="">
									</a>
								</div>
								<div class="body">
						
									<div class="content">
										<h4>
											<a :href="'jobdetail?id='+job.id"></a>{{job.name}} <label
												style="font-size: 24px; color: orangered;">{{job.salaryMin/1000}}k-{{job.salaryMax/1000}}k/月</label>
										</h4>
										<div class="info">
											<span class="company">  {{job.company.name}}  <a href="#"><i
											
													data-feather="briefcase"></i></a></span> <span
												class="office-location"><a href="#"><i
													data-feather="map-pin"></i>{{ getCityName(job.address)}}</a></span>
													<span
												class="office-location"><a href="#"><i
													data-feather="map-pin"></i>{{ getPositionName(job.type)}}</a></span>

										</div>
									</div>
									<div class="more">
										<div class="buttons">
											<a :href="'jobdetail?id='+job.id" class="button">查看详情</a> 
											<!-- <a
												href="#" class="favourite"><i data-feather="heart"></i></a> -->
										</div>
										<p class="deadline">发布时间：{{job.createTime}}</p>
									</div>
								</div>
							</div>

						</div>
						<div class="pagination-list text-center">
						<a onclick="prePage()" v-if="page.hasPre" class="prev page-numbers" href="javascript:void(0);"><i class="fas fa-angle-left"></i></a> 
									<!-- <a v-for="i in page.totlePage"  class="page-numbers" href="#">{{i}}</a>  -->
									<a> {{page.currentPage}} /{{page.totlePage}} </a>
									
									<a  onclick="nextPage()" v-if="page.hasNext"   class="next page-numbers" href="javascript:void(0);"><i class="fas fa-angle-right"></i></a>
							<!-- <nav class="navigation pagination">
								分页数据
								<div class="nav-links">
									
								</div>
							</nav> -->
						</div>
					</div>
					<div class="job-filter-wrapper">
						<div class="selected-options">
							<div class="selection-title">
								<h4>You Selected</h4>
								<a href="#">Clear All</a>
							</div>
							<ul class="filtered-options">
							</ul>
						</div>


						<div class="job-filter">
							<h4 class="option-title">薪资</h4>
							<div class="price-range-slider">
								<div class="nstSlider" data-range_min="2000"
									data-range_max="100000" data-cur_min="0" data-cur_max="6000">
									<div class="bar"></div>
									<div class="leftGrip"></div>
									<div class="rightGrip"></div>
									<div class="grip-label">
										<span class="leftLabel"></span> <span class="rightLabel"></span>
									</div>
								</div>
							</div>
						</div>
					

						<div class="job-filter-dropdown location">
							<h4 class="option-title">职业类型</h4>
							<select class="selectpicker">
								<option value="" selected>计算机/互联网</option>
								<option value="california">java</option>
								<option value="california">web前端</option>
								<option value="california">PHP</option>
								<option value="california">后端开发</option>

							</select><br /> <select class="selectpicker">
								<option value="" selected>设计</option>
								<option value="california">UI设计</option>
								<option value="california">室内设计</option>
								<option value="california">工程设计</option>
								<option value="california">系统设计</option>

							</select> <select class="selectpicker">
								<option value="" selected>学历</option>
								<option value="california">大专</option>
								<option value="california">本科</option>
								<option value="california">硕士</option>
								<option value="california">博士</option>

							</select>
						</div>

						<div data-id="experience" class="job-filter experience"></div>
						</select>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
<!-- Job Listing End -->


<%@include file="component/footer.jsp"%>



</body>
<script src="js/vue.min.js">
	
</script>
<script>
var page = 1 ;
var row =  6;
	$(function() {
		getJobList();
	});
	
	function nextPage(){
		page++;
		getJobList();
	}
	function prePage(){
		page--;
		getJobList();
	}

	
	
	function getJobList() {
		$.post("positionlist.action", {
			'page' : page,
			'row' : row
		}, function(data) {
			vm.page = data;
			vm.jobList = data.list;
			console.log(data);
		});
	}

	var vm = new Vue({
		el : "#app",
		data : {
			page:{},
			jobList : [ {}, {} ],
		}
	});
</script>

</html>