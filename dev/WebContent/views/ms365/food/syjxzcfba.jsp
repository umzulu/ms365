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
<title>食药监行政处罚信息(备案)</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>

<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.ay}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>案由：${model.ay}</p>
        <p>时间：${model.sj}</p>
        <p>序号：${model.xh}</p>
        <p>案件来源：${model.ajly}</p>
        <p>立案时间：${model.lasj}</p>
        <p>结案时间：${model.jasj}</p>
        <p>承办人：${model.cbr}</p>
        
        
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
			url : basePath + "rest/food/syjxzcfba/getMore?start="+length,
			success : function(res) {
			    var data = res.data;
				if (data && data.list) {
					$.each(data.list, function(_,m) {
						var html = "<li><p><span>"+m.ay+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
				            + "<p>案由："+m.ay+"</p>"
				            + "<p>时间："+m.sj+"</p>"
				            + "<p>序号："+m.xh+"</p>"
				            + "<p>案件来源："+m.ajly+"</p>"
				            + "<p>立案时间："+m.lasj+"</p>"
				            + "<p>结案时间："+m.jasj+"</p>"
				            + "<p>承办人："+m.cbr+"</p></div>";
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