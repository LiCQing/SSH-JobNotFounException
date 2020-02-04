
var ws = null;
var wsReceive = "";
// 判断当前浏览器是否支持WebSocket


function connect(url){
	console.log(url);
	if ('WebSocket' in window) {
		ws = new WebSocket( url);
		initWsEvent();
	} else {
		alert('当前浏览器 Not support websocket')
	}
}

function initWsEvent(){
	/*
	 * 监听三种状态的变化js会回调
	 */
	ws.onopen = function(message) {
		console.log("连接回调" + message);
	};
	ws.onclose = function(message) {
		console.log("断开连接回调" + message);
		// 断开连接回调
		//onClose(message);
	};
	ws.onmessage = function(message) {
		console.log("消息监听" + message);
		showMessage(message);
	};
	
}



// 监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
window.onbeforeunload = function() {
	ws.close();
};
// 关闭连接
function closeWebSocket() {
	ws.close();
}
// 发送消息
function send() {

	var input = document.getElementById("msg");
	var text = input.value;

	// 消息体JSON 对象 对应JAVA 的 Msg对象
	var data = {
		// 定点发送给其他用户的userId
		toUid : "3d535429-5fcb-4490-bcf7-96fd84bb17b6",
		data : text
	}

	ws.send(JSON.stringify(data));
	input.value = "";
}

function showMessage(message) {
 
	MessageHandler(message);
	
	
  /*  var dataJson = eval("(" + message.data.replace("\\","") + ")");
    console.log(dataJson);*/
	/*var text = document.createTextNode(message);
	document.getElementById("showText").appendChild(text);*/

}