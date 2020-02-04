 <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%@include file="component/header2.jsp" %>
 <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/city.js"> </script>
      <script type="text/javascript" src="js/position.js"> </script>
        <script  type="text/javascript" src="js/index.js"></script>
    <!-- Company Details -->
    <div class="alice-bg padding-top-60 section-padding-bottom">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="company-details">
              <div class="title-and-info">
                <div class="title">
                  <div class="thumb">
                    <img src="${imageServer }${company.head==null?'image/header/1.jpg':company.head}" class="img-fluid" alt="">
                  </div>
                  <div class="title-body">
                    <h4>${company.name }</h4>
                    <div class="info">
                      <span class="company-type"><i data-feather="briefcase"></i><span id="scale">${company.scaleStr }</span></span>
                      <span class="office-location"><i data-feather="map-pin"></i>${company.detailAddress }</span>
                    </div>
                  </div>
                </div>
                <div class="download-resume">
                  <a href="#">共${pList.size() }个职位在招</a>
                </div>
                 <div class="download-resume">
                  <a onclick="doSendtoSomeOne('c,${company.id}','${company.name }')" href="javascript: void(0);">联系我们</a>
                </div>
              </div>
              <div class="details-information padding-top-60">
                <div class="row">
                  <div class="col-xl-7 col-lg-8">
                     <div class="open-job details-section">
                      <h4><i data-feather="check-circle"></i>职位列表</h4>
                      <c:forEach items="${pList}" var="p">
                      <div class="job-list">
                        <div class="body">
                          <div class="content">
                            <h4><a href="jobdetail?id=${p.id}">${p.name} </a></h4>
                            <div class="info">


                                <span class="office-location"><a href="#"><i data-feather="map-pin"></i><span class="addr">地址：${p.address}</span></a></span>
                              <span class="job-type temporary"><a href="#"><i data-feather="clock"></i>${p.cTime}</a></span>
                       
    
  

                            </div>
                            
                          </div>
                          <div class="more">
                            <div class="buttons">
                              <a href="jobdetail?id=${p.id }" class="button">查看详情</a>
                              <a href="#" class="favourite"><i data-feather="heart"></i></a>
                            </div>
                            <p class="deadline">Deadline: Oct 31, 2018</p>
                          </div>
                        </div>
                      </div>
                   <script type="text/javascript">
      
     var typeDiv = $(".addr");
     $.each(typeDiv,function(index,span){
    	 console.log(index);
    	 var name = getCityName($(span).html());
    	 $(span).html(name);
     });
       
     
    </script>
                      </c:forEach>
                    </div>
                       
                    
                    <div class="portfolio details-section">
                      <h4><i data-feather="grid"></i>招聘负责人</h4>
                       <a href="#">
                       	HR：<span style="color: #246df8">${company.hrName }</span> 
                       	</br>
                       	联系方式：${company.chrContec }
                       </a>
                    </div>
                  
                    <div class="portfolio details-section">
                      <h4><i data-feather="grid"></i>企业福利</h4>
                       <div>
                       	 
                       </div>
                    </div>
                    
                     <div class="about-details details-section">
                      <h4><i data-feather="align-left"></i>关于我们</h4>
                     	<p>
                     		${company.description }
                     	</p>
                    </div>
                    
                     <div  class="about-details details-section">
                      <h4><i data-feather="align-left"></i>公司位置</h4>
                     	 <div id="mapLoaction"  style="height: 300px;">
                     	 
                     	 </div>
                    </div>
                    
                  </div>
                  <div class="col-xl-4 offset-xl-1 col-lg-4">
                    <div class="information-and-contact">
                      <div class="information">
                        <h4>工商信息</h4>
                        <ul>
                          <li><span>法人代表:</span> 霍太稳</li>
                          <li><span>成立时间:</span> 2008-04-18</li>
                          <li><span>企业类型:</span> 有限责任公司(自然人投资或控股)</li>
                          <li><span>注册地址:</span> 北京市朝阳区望京利泽中园二区203号内3号六层1607室</li>
                          <li><span>统一信用代码:</span> <a href="#">91110105674271114W</a></li>
                       	  <li><span>经营范围:</span> 投资管理；资产管理；设计、制作、代理、发布广告；会议服务；计算机技术培训（不得面向全国招生）；技术开发、技术咨询、技术转让、技术推广、技术服务；市场调查；货物进出口、技术进出口；礼仪服务；组织文化艺术交流活动（不含演出）；翻译服务；经济贸易咨询；企业管理咨询；出版物零售；互联网信息服务；人才中介服务；从事互联网文化活动。</li>
                        </ul>
                      </div>
                      <div class="buttons">
                        <a href="#" class="button contact-button" data-toggle="modal" data-target="#exampleModal">Contact Us</a>
                      </div>
                      <!-- Modal -->
                      <div class="modal fade contact-form-modal" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-body">
                              <h4><i data-feather="edit"></i>Contact Us</h4>
                              <form action="#">
                                <div class="form-group">
                                  <input type="text" class="form-control" placeholder="Your Name">
                                </div>
                                <div class="form-group">
                                  <input type="email" class="form-control" placeholder="Your Email">
                                </div>
                                <div class="form-group">
                                  <textarea class="form-control" placeholder="Your Message"></textarea>
                                </div>
                                <button class="button">Submit</button>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <div class="share-job-post">
                      <span class="share">Social Profile:</span>
                      <a href="#"><i class="fab fa-facebook-f"></i></a>
                      <a href="#"><i class="fab fa-twitter"></i></a>
                      <a href="#"><i class="fab fa-linkedin-in"></i></a>
                      <a href="#"><i class="fab fa-google-plus-g"></i></a>
                      <a href="#"><i class="fab fa-pinterest-p"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Company Details End -->

 	<%@include file="component/footer.jsp" %>

    <script src="js/custom.js"></script>
    <script src="dashboard/js/dashboard.js"></script>
    <script src="dashboard/js/datePicker.js"></script>
    <script src="dashboard/js/upload-input.js"></script>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.15&key=3c4c37aa786229902cbeb234d2f288db"></script> 
	 
<script>
 //113.478178,22.56614
 console.log("1111");
var map = new AMap.Map('mapLoaction', {
		        resizeEnable: true, //是否监控地图容器尺寸变化
		        zoom:11, //初始化地图层级
		        center: [113.478178,22.56614] //初始化地图中心点
		    });	
var marker = new AMap.Marker({
    position: new AMap.LngLat(113.478178,22.56614),   // 经纬度对象，也可以是经纬度构成的一维数组[116.39, 39.9]
    title: '北京'
});
map.add(marker);
  
</script>
    
   
  </body>
</html>