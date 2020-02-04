<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
    <link rel="stylesheet" type="text/css" href="dashboard/css/dashboard.css">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7CRoboto:300i,400,500" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" href="images/favicon.png">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icon-114x114.png">


    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
<style>
 body{
 	overflow-x: hidden;
 }
</style>
  </head>
  <body>

    

    <!-- Breadcrumb -->
    
    <!-- Breadcrumb End -->

   <form action="updateCompany" class="dashboard-form" method="post">
                  <div class="dashboard-section upload-profile-photo">
                    <div class="update-photo">
                      <img src="${applicationScope.imageServer }${User.head==null?'image/header/1.jpg':User.head}"  alt="">
                    </div>
                    <div class="file-upload">            
                      <input onchange="upload" id="userHeader" type="file" class="file-input">更换头像
                    </div>
                  </div>
                  <div class="dashboard-section basic-info-input">
                    <h4><i data-feather="user-check"></i>基本信息</h4>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">企业名称</label>
                      <div class="col-sm-9">
                        <input type="text" name="company.name" value="${User.name }" class="form-control" placeholder="XXX有限公司">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">H R</label>
                      <div class="col-sm-9">
                        <input type="text" name="company.hrName" value="${User.hrName }" class="form-control" placeholder="H R">
                      </div>
                    </div>
                     <div class="form-group row">
                      <label class="col-sm-3 col-form-label">HR联系方式</label>
                      <div class="col-sm-9">
                        <input type="tel" name="company.chrContec" value="${User.chrContec }" class="form-control" placeholder="+55 123 4563 4643">
                      </div>
                    </div>
                    <div class="form-group row">
											<label class="col-sm-3 col-form-label">规模</label>
											<div class="col-sm-2">
												<input type="radio" name="company.scale" value="0"> <span>50人左右</span>
											</div>
	
											<div class="col-sm-2">
												<input type="radio" name="company.scale" value="1"> <span>100人左右</span>
											</div>
											<div class="col-sm-2">
												<input type="radio" name="company.scale" value="2"> <span>100-500人</span>
											</div>
											<div class="col-sm-2">
												<input type="radio" name="company.scale" value="3"> <span>1000人以上</span>
											</div>
									</div>
                   
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">标签</label>
                      <div class="col-sm-9">
                        <input type="text" name="company.tag" value="${User.tag }" class="form-control" placeholder="互联网 IT 金融">
                      </div>
                    </div>
                   
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">简介</label>
                      <div class="col-sm-9">
                        <textarea class="form-control" name="company.description"   placeholder="简单的介绍一下你们公司吧！">
                        ${User.description }
                        </textarea>
                      </div>
                    </div>
                    
                     <div class="form-group row">
                      <label class="col-sm-3 col-form-label">公司地址</label>
                      <div class="col-sm-7">
                      	<input id="lnglat" name="company.locationPoint" type="hidden"/ >
                      	<input id="address" type="text" name="company.detailAddress" value="${User.detailAddress }" class="form-control" placeholder="公司所在地">
                      </div>
                      <div class="col-sm-2">
                      	<button id="geo" type="button">定位</button>
                      </div>
                    </div>
                     <div class="row">
	                       <label class="col-sm-3 col-form-label"></label>
	                      <div class="col-sm-9">
		                       <div id="mapLoaction"  style="height: 300px;">
		                     	 </div>
	                      </div>
                      </div>
                    
                    
                  </div>
                  
                    
                 <!--  <div class="dashboard-section media-inputs">
                    <h4><i data-feather="image"></i>宣传图片</h4>
                   
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label"></label>
                      <div class="col-sm-9">
                        <div class="input-group image-upload-input">
                          <div class="active">
                            <div class="upload-images">
                              <div class="pic">
                                <span class="ti-plus"></span>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div> -->
                  <!-- <div class="dashboard-section basic-info-input">
                    <h4><i data-feather="lock"></i>更改密码</h4>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">当前密码</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" placeholder="当前密码">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">新密码</label>
                      <div class="col-sm-9">
                        <input type="password" class="form-control" placeholder="新密码">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">确认密码</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" placeholder="确认密码">
                      </div>
                    </div> -->
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label"></label>
                      <div class="col-sm-9">
                        <button type="submit" class="button">保存修改</button>
                      </div>
                    </div>
                </form>

    <!-- Call to Action -->
   
    <!-- Call to Action End -->

    <!-- Footer -->
    
    <!-- Footer End -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/feather.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/jquery.nstSlider.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/visible.js"></script>
    <script src="assets/js/jquery.countTo.js"></script>
    <script src="assets/js/chart.js"></script>
    <script src="assets/js/plyr.js"></script>
    <script src="assets/js/tinymce.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/jquery.ajaxchimp.min.js"></script>

    <script src="js/custom.js"></script>
    <script src="dashboard/js/dashboard.js"></script>
    <script src="dashboard/js/datePicker.js"></script>
    <script src="dashboard/js/upload-input.js"></script>
    <script src="https://a.amap.com/jsapi_demos/static/demo-center/js/demoutils.js"></script>
 <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.15&key=c0be866cbfc4782eade527cd1b68e326&plugin=Amap.Geocoder"></script> 
	 
      <script type="text/javascript">
      
      $(function(){
    	  $('#userHeader').change(function(){
    		  upload();
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
  
  var getLUrl="http://restapi.amap.com/v3/geocode/geo?key=c0be866cbfc4782eade527cd1b68e326&s=rsv3&city=35&address=";
  
  //地图相关
  $("#geo").click(function(){
	  var addr = $("#address").val();
	  
	  $.ajax({
          type: "get",
          async: false,
          url: getLUrl  + addr,
          dataType: "jsonp",
          jsonp: "callback",//传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
          jsonpCallback:"LocationHandler",//自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
          success: function(json){
        	  console.log(json);
        	  console.log(json.geocodes);
        	  console.log(json.geocodes[0].location);
        	  var lnglat = json.geocodes[0].location
              document.getElementById('lnglat').value = lnglat;
              if(!marker){
                  marker = new AMap.Marker();
                  map.add(marker);
              }
              var position = lnglat.split(',');
              marker.setPosition(position);
              map.setFitView(marker);
          },
          error: function(){
              alert('fail');
          }
      });

	  console.log(addr);
  });
  
  
  var map = new AMap.Map('mapLoaction', {
      resizeEnable: true, //是否监控地图容器尺寸变化
      zoom:11, //初始化地图层级
      center: [113.478178,22.56614] //初始化地图中心点
  });	
/* 	var marker = new AMap.Marker({
	position: new AMap.LngLat(113.478178,22.56614),   // 经纬度对象，也可以是经纬度构成的一维数组[116.39, 39.9]
	title: '北京'
	});
	map.add(marker); */
	
	
	var geocoder,marker;
	
	AMap.plugin(["AMap.Geocoder"],function(){
		geocoder = new AMap.Geocoder();
	});
	
    var geocoder,marker;
    function regeoCode() {
        if(!geocoder){
            geocoder = new AMap.Geocoder({
                city: "010", //城市设为北京，默认：“全国”
                radius: 1000 //范围，默认：500
            });
        }
        var lnglat  = document.getElementById('lnglat').value.split(',');
         if(!marker){
            marker = new AMap.Marker();
            map.add(marker);
        }
        marker.setPosition(lnglat);
        
        geocoder.getAddress(lnglat, function(status, result) {
        	console.log(result);
            if (status === 'complete'&&result.regeocode) {
                var address = result.regeocode.formattedAddress;
                document.getElementById('address').value = address;
            }else{
                log.error('根据经纬度查询地址失败')
            }
        });
    }
    map.on('click',function(e){
        document.getElementById('lnglat').value = e.lnglat;
        regeoCode();
    })
    document.getElementById('lnglat').onkeydown = function(e) {
        if (e.keyCode === 13) {
            regeoCode();
            return false;
        }
        return true;
    };
  </script>
  </body>

</html>