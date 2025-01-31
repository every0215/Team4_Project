<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getServerName() + ":" + request.getServerPort() + path + "/";
	String baseUrlPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客服系統</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/sockjs.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cs_style.css" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/chat.css" type="text/css" media="all" />
<style>
body{
font-size:16px;
background-color:#f3f3f3;
}



</style>
</head>

<body>
<!--header start-->
<section class="chatSec">
<div class="header">
	<div class="inHeader">
        <div class="style">
        	<p>當前登入用戶：${sessionScope.customer!=null?sessionScope.customer.nickName:"请登入" }&nbsp;&nbsp;&nbsp;
        	<c:if test="${!empty sessionScope.customerService}">
    			<button id="exitBtn">退出登入</button>
    		</c:if>  	
        	</p>
        </div>
    </div>
</div>
<!--header end-->
<!--chatting section start-->	
<div class="chatArea" id="chatArea">
	<div class="inChatArea">
    	<div id="chatSidebar" class="chatSidebar">
    		<c:if test="${!empty sessionScope.customerService}">
    			<h2 id="chatOnline">諮詢人數<span></span>人</h2>
    		</c:if>   
    		<c:if test="${empty sessionScope.customerService}">
    			<h2 id="chatOnline">服務客服<span></span>人</h2>
    		</c:if>    	
            <ul id="chatUserList">
               <!--  <li>bobo老师</li>
                 -->
            </ul>
        </div>
    	<div class="chatCon">
        	<div class="up" id="up">
            	<ul id="contentUl">
                	<!-- <li><b>14:08</b><em>江山如此多娇</em><span>今天天气不大家出来嗨！！！！！</span></li>
                	-->
                </ul>
            </div>
            <div class="down">
                <textarea placeholder="請輸入訊息...." class="textInfo" id="msg" title="按ctrl+enter直接发送"></textarea>
                <button class="btn" id="sendBtn">發送</button>
            </div>
        </div>
        
    </div>
</div>
</section>
<!--chatting section start end-->

<script type="text/javascript">
	var path = '<%=basePath%>';
	
	var uid='${sessionScope.customer.id}';
	//發送人编号
	var from='${sessionScope.customer.id}';
	var fromName='${sessionScope.customer.nickName}';
	//接收人编号
	var to="-1";
	
	// 创建一个Socket实例
	//参数为URL，ws表示WebSocket协议。onopen、onclose和onmessage方法把事件连接到Socket实例上。每个方法都提供了一个事件，以表示Socket的状态。
	var websocket;
	//不同浏览器的WebSocket对象类型不同
	//alert("ws://" + path + "/ws?uid="+uid);
	if ('WebSocket' in window) {
		websocket = new WebSocket("ws://" + path + "ws");
		console.log("=============WebSocket");
		//火狐
	} else if ('MozWebSocket' in window) {
		websocket = new MozWebSocket("ws://" + path + "ws");
		console.log("=============MozWebSocket");
	} else {
		websocket = new SockJS("http://" + path + "ws/sockjs");
		console.log("=============SockJS");
	}
	
	console.log("ws://" + path + "ws");
	
	//打开Socket,
	websocket.onopen = function(event) { 
		console.log("WebSocket:已连接");
	}
	
	// 监听消息
	//onmessage事件提供了一个data属性，它可以包含消息的Body部分。消息的Body部分必须是一个字符串，可以进行序列化/反序列化操作，以便传递更多的数据。
	websocket.onmessage = function(event) { 
		console.log('Client received a message',event);
		//var data=JSON.parse(event.data);
		var data=$.parseJSON(event.data);
		console.log("WebSocket:收到一条消息",data);
		
		//2种推送的消息
		//1.用户聊天信息：发送消息触发
		//2.系统消息：登录和退出触发
		
		//判断是否是欢迎消息（没用户编号的就是欢迎消息）
		if(data.from==undefined||data.from==null||data.from==""){
			//===系统消息
			$("#contentUl").append("<li><b>"+data.date+"</b><em>系统消息：</em><span>"+data.text+"</span></li>");
			//刷新在线用户列表
			$("#chatOnline span").html(data.userList.length);
			$("#chatUserList").empty();
			$(data.userList).each(function(){
				$("#chatUserList").append("<li data-id="+ this.id +">"+this.nickName+"</li>");
			});
			
		}else{
			//===普通消息
			//处理一下个人信息的显示：
			if(data.fromName==fromName){
				data.fromName="我";
				$("#contentUl").append("<li><span  style='display:block; float:right;'><em>"+data.fromName+"</em><span>"+data.text+"</span><b>"+data.date+"</b></span></li><br/>");
			}else{
				$("#contentUl").append("<li><b>"+data.date+"</b><em>"+data.fromName+"</em><span>"+data.text+"</span></li><br/>");
			}
			
		}
		
		scrollToBottom();
	}; 
	
	// 监听WebSocket的关闭
	websocket.onclose = function(event) { 
		$("#contentUl").append("<li><b>"+new Date().Format("yyyy-MM-dd hh:mm:ss")+"</b><em>系统消息：</em><span>連接已中斷</span></li>");
		scrollToBottom();
		console.log("WebSocket:已关闭：Client notified socket has closed",event); 
	}; 
	
	//监听异常
	websocket.onerror = function(event) {
		$("#contentUl").append("<li><b>"+new Date().Format("yyyy-MM-dd hh:mm:ss")+"</b><em>系统消息：</em><span>連接異常，建議重新登錄</span></li>");
		scrollToBottom();
		console.log("WebSocket:发生错误 ",event);
	};
	
	//onload初始化
	$(function(){
		//发送消息
		$("#sendBtn").on("click",function(){
			sendMsg();
		});
		
		//给退出聊天绑定事件
		$("#exitBtn").on("click",function(){
			closeWebsocket();
			location.href="${pageContext.request.contextPath}/cs/loginOut	";
		});
		
		//给输入框绑定事件
		$("#msg").on("keydown",function(event){
			keySend(event);
		});
		
		//初始化时如果有消息，则滚动条到最下面：
		scrollToBottom();
		
	});

	//使用ctrl+回车快捷键发送消息
	function keySend(e) {
		var theEvent = window.event || e; 
		var code = theEvent.keyCode || theEvent.which; 
		if (theEvent.ctrlKey && code == 13) {
			var msg=$("#msg");
			if (msg.innerHTML == "") {
				msg.focus();
				return false;
			}
			sendMsg();
		}
	}
	
	//发送消息
	function sendMsg(){
		//对象为空了
		if(websocket==undefined||websocket==null){
			//alert('WebSocket connection not established, please connect.');
			alert('您的連接已經丟失，請退出聊天重新進入');
			return;
		}
		//获取用户要发送的消息内容
		var msg=$("#msg").val();
		if(msg==""){
			return;
		}else{
			var data={};
			data["from"]=from;
			data["fromName"]=fromName;
			data["to"]=to;
			data["text"]=msg;
			//发送消息
			websocket.send(JSON.stringify(data));
			//发送完消息，清空输入框
			$("#msg").val("");
		}
	}

	//关闭Websocket连接
	function closeWebsocket(){
		if (websocket != null) {
			websocket.close();
			websocket = null;
		}
		
	}
	
	//div滚动条(scrollbar)保持在最底部
	function scrollToBottom(){
		//var div = document.getElementById('chatCon');
		var div = document.getElementById('up');
		div.scrollTop = div.scrollHeight;
	}	
	//格式化日期
	Date.prototype.Format = function (fmt) { //author: meizz 
	    var o = {
	        "M+": this.getMonth() + 1, //月份 
	        "d+": this.getDate(), //日 
	        "h+": this.getHours(), //小时 
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
</body>
</html>
