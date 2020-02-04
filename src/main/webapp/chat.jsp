<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="tool/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="tool/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="tool/font-awesome/css/font-awesome.min.css">
<script src="tool/layer/layer.js"></script>
<script src="js/vue.min.js"></script>
<link rel="stylesheet" href="css/base.css">

<script type="text/javascript" src="js/webSocket.js"></script>
<title>这个是样例网页</title>
<style type="text/css">
	//这里写样式
	

</style>
</head>
<body>
<div>
	<!--  -->
	<input id="WSUserId" type="hidden"  value="${User.id }"/>
	<!-- 这里是网页头部 -->
	<div class="header">网页头部</div>
	
	<!-- 这里是网页主体 -->
	<div class="middle">
		<div class="container">
			 会居中显示,你的内容写这里
		</div>
	</div>
	
	<!-- 这里是网页脚部 -->
	<div class="footer">&copy; 2019 - ZHONSHAN F4</div>
</div>
</body>
<script type="text/javascript">
	//这里写js
	
	
	
var serverName = document.location.hostname;
var port = document.location.port;
var path = document.location.pathname;
var userId =  $("#WSUserId").val();
if(userId!=""){
	connect("ws://localhost:8080/webDemo/websocket/" + userId);
}


	

	//例如  var list = Ajax("user/list","page=1&size=5");
	//          list 就是从服务器返回的数据
	//ajax函数调用,请求链接，数据。。返回服务器的数据
	function Ajax(url, da) {
			var returnData;
			console.log(da);
			$.ajax({
				type: "post",
				data: da,
				url: url,
				processData: false,
				async: false,
				success: function(data) {
					returnData = data;
				},
				error: function() { // 这个用的比较少
					alert("请求链接 -->" + url + "失败");
				}
			})
			return returnData;
		}
	
</script>
</html>