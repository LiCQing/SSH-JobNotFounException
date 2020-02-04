<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- 所有职位列表页面 -->
<!-- 导入头部 -->
<%@include file="component/header2.jsp"%>
<style>
	select{
		font-size: 30px;
	}
</style>
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
					<form action="searchPosition" method="post">
						<input name="name" type="text" placeholder="请输入你想要了解的职位">
						<button type="submit" class="button primary-bg"><i class="fas fa-search"></i>Search Job</button>
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
						<div class="dashboard-applied">
                  <h4 class="apply-title">职位列表</h4>
                  <div class="dashboard-apply-area">

                   <c:forEach items="${searchPosition.list}" var="position">
                    <div class="job-list">
                      
                      <div class="body">
                        <div class="content">
                          <h4><a  style="font-size: 28px;" href="jobdetail?id=${position.id }">${position.name }</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        	<label style="font-size:24px;color: orangered;">${position.salaryMin /1000}k-${position.salaryMax /1000}k/月</label></h4>
                     
                          <div class="info">
                            <span class="company"><a href="#"><i data-feather="briefcase"></i><span class="pType">${position.type }</span></a></span>
                            <span class="company"><a href="#"><i data-feather="briefcase"></i>${position.educationStr }</a></span>
                            <span class="company"><a href="#"><i data-feather="briefcase"></i><span class="addr">${position.address}</span></a></span>
                   
                          </div>
                      
                        </div>
                        <%-- <div class="more">
                        <a class="bookmark-remove"><i class="fas fa-edit"></i>${position.educationStr}</a>
                          <a class="bookmark-remove"><i class="fas fa-times"></i>${position.address}</a>
                          <p class="deadline">发布时间：2018-8-5</p>
                        </div> --%>
                      </div>
                    </div>
                    </c:forEach>
                     <div style="width: 600px; padding-left: 300px;display: unset; position: relative;">
                    <c:if test="${searchPosition.currentPage!=1 }">
						<a href="searchPosition?page=${searchPosition.currentPage-1}">上一页</a>
						</c:if>
						<c:if test="${searchPosition.currentPage!=searchPosition.totlePage }">
						<a href="searchPosition?page=${searchPosition.currentPage+1}">下一页</a>
						</c:if>
					        &nbsp; &nbsp; &nbsp; 当前第${searchPosition.currentPage}页 &nbsp; &nbsp; &nbsp;
					
						 总共有${searchPosition.totlePage }页
						 </div> 
                  </div>
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
				 <form action="searchPosition" method="post">	 
	                <div class="job-filter-dropdown location">
	               
								<h4 class="option-title">学历要求</h4>
						 
	 							<select class="selectpicker">
									<option value="" selected>学历</option>
								</select>
							</div>
	
							<div class="job-filter-dropdown location">
								<h4 class="option-title">职业类型</h4>
								<select id="position1" class="form-control">
									<option value="" >请选择职业类型</option>
								</select><br /> 
								<select name ="type" id="position2"  class="form-control">
									<option value="" >请选择职业类型</option>
								</select> 
							</div>
							
							<div class="job-filter-dropdown location">
								<h4 class="option-title">地区</h4>
								<select id="location1"  class="form-control">
									<option value="" selected>请选择地区</option>
								</select><br /> 
								<select name="address" id="location2" class="form-control">
									<option value="" selected>请选择地区</option>
								</select> 
							</div>
							<div class="job-filter-dropdown location">
							 <button class="button primary-bg"><i class="fas fa-search"></i>Search Job</button>
							</div>

					 </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
 
<!-- Job Listing End -->


<%@include file="component/footer.jsp"%>


<script type="text/javascript" src="js/city.js"> </script>
    <script type="text/javascript" src="js/initCity.js"> </script>
      <script type="text/javascript" src="js/position.js"> </script>
    <script type="text/javascript" src="js/initPosition.js"> </script>
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript">
     var typeDiv = $(".pType");
     $.each(typeDiv,function(index,span){
    	 console.log(index);
    	 var name = getPositionName($(span).html());
    	 $(span).html(name);
     });
    
     
     var typeDiv = $(".addr");
     $.each(typeDiv,function(index,span){
    	 console.log(index);
    	 var name = getCityName($(span).html());
    	 $(span).html(name);
     });
     
     
     //渲染筛选条件
     initChooseLocation("#location1", "#location2");
     initChoosePosition("#position1", "#position2");
     
     //筛选条件
     var name,type,addr;
     //绑定选择事件
     $(
    	function(){
    		$("#position2").click(function(){
    			type = $("#position2").val();
    			//console.log(type);
    			//请求搜索函数
    			search();
    		});
    		
    		$("#location2").change(function(){
    			addr = $("#location2").val();
    			//请求搜索函数
    			search();
    		});
    	}		 
     );
     
 
     
    </script>
</body>
</html>