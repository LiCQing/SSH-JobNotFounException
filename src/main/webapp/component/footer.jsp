<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>	
	
	
	<style>
		.rightBase{
			height: 100%;
			position: fixed;
			background-color: #FFF;
			z-index:1004;
			top:0;
			box-shadow:-15px 10px 15px #EEE;
		
		}
	
		.rightSmall{
			right:-380px;
		}
		
		.rightBig{
			right:15px;
		}
		
		.open{
			height: 50px;
			line-height: 50px;
		}
		
		.chatBody{
			border-left:2px solid #EEE;
			background-color: #fbfbfd;
			padding: 0;
		}
		
		
		.msgHeader{
			height: 50px;
			text-align: center;
			line-height: 50px;
			background: rgba(36, 109, 248, 0.15);
		}
		
		.msgBody{
			max-height: 70%;
			height:60%;
			overflow:auto;
		}
		
		/* .msgBody div{
			margin-top: 10px;
		} */
		
		.msgFooter{
			border-top:1px solid #000;
			padding-top:5px;
			height: 100px;
		}
		
		.otherMsg{
			width:auto;
			background: #EEE;
			padding-left: 10px;
		 	margin-right: 20px; 
			border-radius:0px 8px 8px 0px;
		}
		
		.ownerMsg{
			background: #ade8e5;
			padding-left: 10px;
			 margin-left: 20px; 
			border-radius:8px 0px 0px 8px;
		}
		
		.time{
			font-size: 10px;
			color: #888;
			text-align: center;
		}
	</style>
	
	
	
	<div id="chat" class="rightBase rightSmall row">
		<div class="col-sm-2">
			<div class="open">
				<<
			</div>
		</div>
		
		<div class="col-sm-10 chatBody" >
			<div class="msgHeader">
				未指定联系人
			</div>
			<div class="msgBody">
			
			</div>
			<div class="msgFooter">
				<textarea id="inputMsg" rows="4" cols="46"></textarea>
				<button id="sendMsg" class="btn btn-default">send</button>
			</div>
		</div>
	</div>
	<input id="WSUserId" type="hidden"  value="${User.id }"/>
	<input id="WSUserType" type="hidden"  value="${sessionScope.tag ==1?'u,':'c,' }"/>
	<input id="WSUserName" type="hidden"  value="${User.name }"/>
    <!-- Footer -->
    <footer class="footer-bg">
      <div class="footer-top border-bottom section-padding-top padding-bottom-40">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <div class="footer-logo">
                <a href="#">
                  <img src="images/footer-logo.png" class="img-fluid" alt="">
                </a>
              </div>
            </div>
            <div class="col-md-6">
              <div class="footer-social">
                <ul class="social-icons">
                  <li><a href="#"><i data-feather="facebook"></i></a></li>
                  <li><a href="#"><i data-feather="twitter"></i></a></li>
                  <li><a href="#"><i data-feather="linkedin"></i></a></li>
                  <li><a href="#"><i data-feather="instagram"></i></a></li>
                  <li><a href="#"><i data-feather="youtube"></i></a></li>
                </ul>
                <select class="selectpicker select-language" id="select-country">
                  <option value="United States of America" selected>EN</option>
                  <option value="United Kingdom">GB</option>
                  <option value="Spain">ES</option>
                  <option value="Portugal">PT</option>
                </select>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-bottom-area">
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="footer-bottom border-top">
                <div class="row">
                  <div class="col-xl-4 col-lg-5 order-lg-2">
                    <div class="footer-app-download">
                      <a href="#" class="apple-app">Apple Store</a>
                      <a href="#" class="android-app">Google Play</a>
                    </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 order-lg-1">
                    <p class="copyright-text">Copyright <a href="http://www.17sucai.com/">Oficiona</a> 2018, All right reserved</p>
                  </div>
                  <div class="col-xl-4 col-lg-3 order-lg-3">
                    <div class="back-to-top">
                      <a href="#">Back to top<i class="fas fa-angle-up"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
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
    <script type="text/javascript" src="js/webSocket.js"></script>

    
    <script type="text/javascript">
   	   var userId =  $("#WSUserId").val();
	   var userType = $("#WSUserType").val();
	   var sendName = $("#WSUserName").val();
	   var chatBox ;
	 /*   wsReceive = "c,1"; */
	 wsReceive = "";
    
       if(ws ==null){
	   	    if(userId!="" && userType !=""){
	   	    	connect("ws://192.168.21.215:8080/webDemo/websocket/" +userType + userId);
	   	    	//connect("ws://localhost:8080/webDemo/websocket/" +userType + userId);
	   	    }
       }
       
      
       
		
		$(function(){
			 chatBox = $(".rightBase");
			 
			$(".open").click(function(){
				console.log(this);
				//console.log(chatBox);
				if(chatBox.hasClass("rightSmall")){
					chatBox.removeClass("rightSmall");
					chatBox.addClass("rightBig");
				}else{
					chatBox.removeClass("rightBig");
					chatBox.addClass("rightSmall"); 
				}
				
			});
			
			$("#inputMsg").keydown(function (evt) {
				console.log(evt.which);
	            if (evt.which === 13) { //按下Enter发送消息
	            	if(wsReceive == ""){
						alert("未指定联系人");
						return ;
					}
	            	clickSendMsg();
	            }
	        });
			
			
			$("#sendMsg").click(function(){
				if(wsReceive == ""){
					alert("未指定联系人");
					return ;
				}
				
				wsSend = userType + userId;
				if(wsReceive == "" || ws == null){
					alert("system is beasy");
					return ;
				}
				clickSendMsg();
			});
		});
		
		function doSendtoSomeOne(receive,name){
			wsReceive = receive;
			chatBox.removeClass("rightSmall");
			chatBox.addClass("rightBig");
			$(".msgHeader").html(name);
			
		}
		
		function clickSendMsg(){
			msg = $("#inputMsg").val();
			if(msg == ""){
				return ;
			}
			console.log(wsReceive + " "  + msg);
			doSend(wsReceive,wsSend,msg);
			$("#inputMsg").val("");
		}
		
		function doSend(recerive,send,msg) {
			var data={
					'receive':recerive,
					'sender':send,
					'senderName':sendName,
					'msg':msg
			}
			
			addNewMsg('ownerMsg',data);
			
			var send={
					'code':1,
					'data':JSON.stringify(data)
			}
			console.log(JSON.stringify(send));
		    ws.send(JSON.stringify(send));
		}
		
		function addNewMsg(cla,data){
			var oldBody = $(".msgBody").html();
			var oneMsg="<div style='margin-top: 10px;'> <div class='time'>" + new Date().Format("yyyy-MM-dd HH:mm:ss") +
			" </div> <div  class='" + cla + "'> " + data.msg  + " </div> </div>";
			oldBody += oneMsg;
			$(".msgBody").html(oldBody);
		}
		
		
		function MessageHandler(message){
			console.log(message.data);
			var dataJson =eval("(" + message.data + ")");
			if(dataJson.code == 1){
				console.log(dataJson.data.senderName);
				$(".msgHeader").html(dataJson.data.senderName);
				wsReceive = dataJson.data.sender;
				addNewMsg("otherMsg",dataJson.data);
			}
			console.log(dataJson);
		}
		
	

		Date.prototype.Format = function (fmt) {
		    var o = {
		        "M+": this.getMonth() + 1, //月份 
		        "d+": this.getDate(), //日 
		        "H+": this.getHours(), //小时 
		        "m+": this.getMinutes(), //分 
		        "s+": this.getSeconds(), //秒 
		        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
		        "S": this.getMilliseconds() //毫秒 
		    };
		    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
		    for (var k in o)
		    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
		    return fmt;
		}
		
	</script>


