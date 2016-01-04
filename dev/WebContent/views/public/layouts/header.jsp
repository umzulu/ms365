<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path + "/";
	request.setAttribute("basePath", basePath);
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="<%=path%>/views/public/assets/css/iscroll.css"/>
<script type="text/javascript" src="<%=path%>/views/public/assets/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/views/public/assets/js/iscroll.js"></script>
<script type="text/javascript" src="<%=path%>/views/public/assets/js/playbox.js"></script>

<script type="text/javascript"> 
var basePath = '<%=basePath%>';
var myScroll;
function loaded() {
	myScroll = new iScroll('wrapper', {
		snap: true,
		momentum: false,
		vScroll: false,
		hScroll: true,
		hScrollbar: false,
		onScrollEnd: function () {
			document.querySelector('#indicator > li.active').className = '';
			document.querySelector('#indicator > li:nth-child(' + (this.currPageX+1) + ')').className = 'active';
		}
	});
}
document.addEventListener('DOMContentLoaded', loaded, false);
</script>

</head>
<body>

<span id="playbox" class="btn_music"><audio id="audio" loop src="<%=path%>/views/public/assets/images/4.mp3"></audio></span>

<div class="banner">
	<div id="wrapper">
		<div id="scroller">
			<ul id="thelist">
				<li><p></p><a href="javascript:void(0)"><img src="<%=path%>/views/public/assets/images/1.jpg" /></a></li>
				<li><p></p><a href="javascript:void(0)"><img src="<%=path%>/views/public/assets/images/2.jpg" /></a></li>
				<li><p></p><a href="javascript:void(0)"><img src="<%=path%>/views/public/assets/images/3.jpg" /></a></li>
				<li><p></p><a href="javascript:void(0)"><img src="<%=path%>/views/public/assets/images/4.jpg" /></a></li>
			</ul>
		</div>
	</div>
	<div id="nav">
		<ul id="indicator">
			<li class="active"></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<div class="clr"></div>
</div>

<script type="text/javascript">
/* 防止jquery未加载完全iscroll异样 */
$("#scroller").width(document.body.clientWidth * 4); 
$("#thelist img").width(document.body.clientWidth); 

$(function(){
	$("#playbox").click(function(){
		playbox.init("playbox").play();
	}); 
	
	/* 幻灯片 */
	window.onresize = function() {
		$("#scroller").width(document.body.clientWidth * 4); 
		$("#thelist img").width(document.body.clientWidth); 
	};
	window.onresize(); 
		
	setInterval(function() {
		myScroll.scrollToPage('next', 0, 400, 4);
	}, 3500);
	
	/* 注意：append元素必须用on绑定 */
	$("ul.submenu").on("click", 'li', function() {
		var $icon = $(this).find("b");
		var $next = $(this).next();
		var $panel = $(this).siblings(".panel").not($next);
		var $lib = $(this).siblings("li").find("b");
		
		$panel.hide();
		$lib.removeClass("ui-icon-minus").addClass("ui-icon-plus");
		
		$next.toggle();
		if ($next.is(":hidden")) {
			$icon.removeClass("ui-icon-minus").addClass("ui-icon-plus");
		} else {
			$icon.removeClass("ui-icon-plus").addClass("ui-icon-minus");
		}
	});
});
</script>

</body>
</html>