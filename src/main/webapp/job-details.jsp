<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="component/header2.jsp" %>
<script type="text/javascript" src="js/jquery.min.js"> </script>
<script type="text/javascript">
var rid=-1;

$(function(){
	$("input").each(function(i,ridio){
		 console.log(ridio);
		 $(ridio).click(function(){
			 console.log(this);
			 rid = this.id;
		 })
	})
})

function applyJob(id){
	console.log(id + "  " +rid);
			$.post("user/apply",{'id':id,'rid':rid},function(data){
				if(data){
					layer.msg("申请成功，请静候佳音");
					location.reload();
				}else{
					layer.msg("系统繁忙");
				}
			});
	}
	
function collectJob(id){
	//user/apply?id=
		$.post("user/collect",{'id':id},function(data){
			if(data){
				layer.msg("收藏成功");
				location.reload();
			}else{
				layer.msg("系统繁忙");
			}
		});
}
</script>

	 <!-- 自我评价模态框 -->
  <div class="modal fade" id="MyselfModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">

    <div class="modal-content">
      <div class="modal-header">

                <h4>选择简历</h4>   
      </div>
      <div class="modal-body">
            <div class="job-post-form "  style="padding:20px;">
				<div class="form-group">
				<div class="row">
					<label class="col-xs-2 col-form-label"></label>
					 <div  style="padding:20px;height: 80px;" class="job-list">
                      <div style="height:60px;" class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-10.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content"  style="width:300px;">
                        <input id="-1" type="radio" name="resume.id" ><span  style="font-size: 28px;">默认简历</span>
                    </div>
                      </div>
                    </div>
					
						  <c:forEach items="${list}" var="resume">
                    <div  style="padding:20px;height: 80px;" class="job-list">
                      <div style="height:60px;" class="thumb">
                        <a href="#">
                          <img src="images/job/company-logo-10.png" class="img-fluid" alt="">
                        </a>
                      </div>
                      <div class="body">
                        <div class="content"  style="width:300px;">
                        <input  id="${resume.id}" type="radio" name="resume.id" ><span  style="font-size: 28px;">${resume.name }</span>
                    </div>
                      </div>
                    </div>
                    </c:forEach>
				</div>	
				</div>
			</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
      <%-- <input  class="btn btn-info btn-sm" onclick="applyJob(${position.id})" type="submit" value="申请 ">  --%>
      	   <button type="button" class="btn btn-default" onclick="applyJob(${position.id})">提交</button>
      </div>
    </div>
 
  </div>
</div>
	 <!-- 自我评价模态框 -->

 
<!-- 职位详细页面 -->
	<!-- Candidates Details -->
	<div class="alice-bg padding-top-60 section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="job-listing-details">
						<div class="job-title-and-info">
							<div class="title">
								<div class="thumb">
									<img src="images/job/company-logo-1.png" class="img-fluid"
										alt="">
								</div>
								<div class="title-body">
									<h4>${position.name } &nbsp;&nbsp;&nbsp;${position.salaryMin/1000 }K -${position.salaryMax/1000 }K  </h4>
									<div class="info">
										<span class="company"><a href="#"><i
												data-feather="briefcase"></i>${position.company.name }</a></span>
												<span
											class="job-type "><a id="jobType" href="#"><i data-feather="bar-chart-2"></i> </a></span>
												 <span
											class="office-location"><a id="address" href="#"><i
												data-feather="map-pin"></i> </a></span> <span
											class="job-type full-time"><a href="#"><i
												data-feather="clock"></i>${position.createTime }</a></span>
									</div>
								</div>
							</div>
							<div class="buttons">
						          <c:if test="${position.collectStatus==0}">
								<a class="save"  onclick="collectJob(${position.id})" role="button"><i data-feather="heart"></i>收藏职位</a>
							</c:if>
							 <c:if test="${position.collectStatus==2}">
								<a class="save"   role="button"><i data-feather="heart"></i>已收藏</a>
							</c:if>
								<c:if test="${position.userStatus==0}">
								 <a class="apply" <%-- onclick="applyJob(${position.id})"  --%> 
								 href="resumeList" data-toggle="modal" data-target="#MyselfModal" role="button">在线申请</a>
							</c:if>
							<c:if test="${position.userStatus==2}">
								 <a class="apply" <%-- onclick="applyJob(${position.id})"  --%> 
								data-toggle="modal"  role="button">已申请</a>
							</c:if>
							</div>
						</div>
						<div class="details-information section-padding-60">
							<div class="row">
								<div class="col-xl-7 col-lg-8">
									<div class="description details-section">
										<h4>
											<i data-feather="align-left"></i>职位描述
										</h4>
										<p>${position.description }</p>
									</div>
									 
									 
									<div class="other-benifit details-section">
										<h4>
											<i data-feather="gift"></i>职工福利/津贴
										</h4>
										<ul>
										<c:forEach items="${position.tags }" var = "tag">
											<li>${tag }</li>
											 </c:forEach>
										</ul>
									</div>
							
								</div>
								<div class="col-xl-4 offset-xl-1 col-lg-4">
									<div class="information-and-share">
										<div class="job-summary">
											<h4>工商信息</h4>
											<ul>
												<li><span>发布时间:</span> Oct 6, 2018</li>
												<li><span>所剩职位数:</span> 08</li>
												<li><span>就业情况:</span> Full-time</li>
												<li><span>工作经验:</span> 2 to 3 year(s)</li>
												<li><span>工作地点:</span> New ork City</li>
												<li><span>薪资:</span> $32k - $36k</li>
												<li><span>性别:</span> Any</li>
												<li><span>申请截止时间:</span> Oct 15, 2018</li>
											</ul>
										</div>
										

									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xl-7 col-lg-8">
								<div class="company-information details-section">
									<h4>
									<i data-feather="briefcase"></i>	<a href="companydetail?cid=${position.CId }">关于本公司</a>
									</h4>
									<ul>
										<li><span>公司名称:</span>${position.company.name }</li>
										<li><span>招聘负责人:</span>${position.company.hrName }</li>
										<li><span>负责人联系方式:</span>${position.company.chrContec }</li>
										<li><span>公司简介:</span></li>
										<li>${position.company.description }</li>
										<li><span>地址:</span> ${position.company.detailAddress }</li>
										<li>
										<input id="lnglat" type="hidden" value="${position.company.locationPoint }">
											<div id="mapLoaction" style="height: 300px;">
												
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Candidates Details End -->

	<!-- Jobs -->
	<div class="section-padding-bottom alice-bg">
		<div class="container">
			<div class="row">
				<div class="col">
					<div
						class="section-header section-header-2 section-header-with-right-content">
						<h2>相似职位</h2>
						<a href="#" class="header-right">+ Browse All Jobs</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="job-list">
						<div class="thumb">
							<a href="#"> <img src="images/job/company-logo-1.png"
								class="img-fluid" alt="">
							</a>
						</div>
						<div class="body">
							<div class="content">
								<h4>
									<a href="job-details.html">Designer Required</a>
								</h4>
								<div class="info">
									<span class="company"><a href="#"><i
											data-feather="briefcase"></i>Theoreo</a></span> <span
										class="office-location"><a href="#"><i
											data-feather="map-pin"></i>New York City</a></span> <span
										class="job-type full-time"><a href="#"><i
											data-feather="clock"></i>Full Time</a></span>
								</div>
							</div>
							<div class="more">
								<div class="buttons">
									<a href="#" class="button">Apply Now</a> <a href="#"
										class="favourite"><i data-feather="heart"></i></a>
								</div>
								<p class="deadline">Deadline: Oct 31, 2018</p>
							</div>
						</div>
					</div>
			
			
				</div>
			</div>
		</div>
	</div>
	<!-- Jobs End -->

	<!-- Call to Action -->
	<div class="call-to-action-bg padding-top-90 padding-bottom-90">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="call-to-action-2">
						<div class="call-to-action-content">
							<h2>For Find Your Dream Job or Candidate</h2>
							<p>Add resume or post a job. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Ut elit tellus, luctus nec.</p>
						</div>
						<div class="call-to-action-button">
							<a href="add-resume.html" class="button">Add Resume</a> <span>Or</span>
							<a href="post-job.html" class="button">Post A Job</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Call to Action End -->

	<%@include file="component/footer.jsp" %>

</body>
<script  src="js/position.js"></script>
<script  src="js/city.js"></script>
<script type="text/javascript" src="tool/layer/layer.js">
<script src="https://a.amap.com/jsapi_demos/static/demo-center/js/demoutils.js"></script>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.15&key=c0be866cbfc4782eade527cd1b68e326&plugin=Amap.Geocoder"></script> 
	 
<script type="text/javascript">
 	$(function(){
 		var key = ${position.address};
 		var type=${position.type};
 		var addName = getCityName(key);
 		var pName = getPositionName(type);
 		$("#address").append(addName);
 		$("#jobType").append(pName);
 		initMap();
 	});
 	
 
 	
 	function test(){
 		
 	}
 	
 	
 	//根据 城市代码获取城市名称
 	function getCityName(key) {
 		var re = getNameByCode(citys, key);
 		return re == null ? "其他地区" : re;
 	}
 	// 根据 职位代码获取职位类型
 	function getPositionName(key) {
 		var re = getNameByCode(positions, key);
 		return re == null ? "其他职业" : re;
 	}

 	function getNameByCode(arr, code) {
 		for ( var i in arr) {
 			var city = arr[i];
 			if(city.code == code){
 				return city.name;
 			}
 			if (city.subLevelModelList != null) {
 				for ( var i in city.subLevelModelList) {
 					var tem = city.subLevelModelList[i];
 					// console.log(tem.code);
 					if (code == tem.code) {
 						return tem.name;
 					}
 				}
 			}
 		}
 		return null;
 	}
 	
 	//地图相关
 	var map;
 	
 	function initMap(){
 		console.log("加载地图");
 		map= new AMap.Map('mapLoaction', {
 		      resizeEnable: true, //是否监控地图容器尺寸变化
 		      zoom:15, //初始化地图层级
 		      center: [113.478178,22.56614] //初始化地图中心点
 		 	});
 		
 		var lnglat  = document.getElementById('lnglat').value.split(',');
        marker = new AMap.Marker();
        map.add(marker);
    	marker.setPosition(lnglat);
 	}
 	
 	
 	
 	
 	
 	
</script>
</html>