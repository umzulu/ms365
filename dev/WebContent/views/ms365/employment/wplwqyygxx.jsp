<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<jsp:include page="../../public/layouts/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>外派劳务企业用工信息</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>
<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
	<c:set var="string1" value="${model.lwxx}"/>
    <li><p><span>${fn:replace(string1, "?", "")}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>劳务信息：${fn:replace(string1, "?", "")} </p>
        <p>发布时间：${model.fbsj}</p>
        <p>目的国家：${model.mdgj}</p>
        <p>所属公司：${model.ssgs}</p>
    </div>    
</c:forEach>
<a href="javascript:void(0);" class="get_more" style="display: block;">点击加载更多内容</a>
</ul>
<!--点击加载更多内容-->
<script>
	$(function(){
		$(".get_more").click(function() {
			var me = this;
			var length = $("ul.submenu>li").size();
			$.ajax({
			    contentType: 'application/json',
			    dataType : 'json',
				type : 'GET',
				url : basePath + "rest/employment/wplwqyygxx/getMore?start="+length,
				success : function(res) {
				    var data = res.data;
					if (data && data.list) {
						$.each(data.list, function(_,m) {
							var html = "<li><p><span>"+m.lwxx.split("?").join('')+"</span></p><b class='ui-icon-plus'></b></li>"
						        + "<div class='panel' style='display:none;'>"
					            + "<p>劳务信息："+m.lwxx.split("?").join('')+"</p>"
					            + "<p>发布时间："+m.fbsj+"</p>"
					            + "<p>目的国家："+m.mdgj+"</p>"
					            +"<p>所属公司"+m.ssgs+"</p></div>";
							$(me).before(html);
						});
				    }
				}
			});
		});
	});
</script>
<jsp:include page="../../public/layouts/footer.jsp"></jsp:include>
</body>
</html>