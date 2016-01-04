<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
	String path = request.getContextPath();
%>
<div class="copyright">Copyright © 2015-2016 北洋慧通软件股份有限公司</div><br><br>
<div class="top_bar">
	<ul id="top_menu" class="top_menu">
		<li><a href="<%=path%>"><img src="<%=path%>/views/public/assets/images/plugmenu6.png"><label>首页</label></a></li>
		<li><a href="tel:0631-5565678"><img src="<%=path%>/views/public/assets/images/plugmenu1.png"><label>拨号</label></a></li>
		<%-- <li><a href="sms:10086"><img src="<%=path%>/views/public/assets/images/plugmenu8.png"><label>短信</label></a></li> --%>
		<li><a href="mailto:zhby@whsmwy.com"><img src="<%=path%>/views/public/assets/images/plugmenu8.png"><label>邮件</label></a></li>
		<li><a href="http://www.whsmwy.com/wh_portal/clientDownload.jsp"><img src="<%=path%>/views/public/assets/images/plugmenu5.png"><label>链接</label></a></li> 
	</ul>
</div>