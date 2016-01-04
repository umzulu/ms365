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
<title>城郊公交线路</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>

<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.gjhm}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>公交号码：${model.gjhm}</p>
        <p>起点：${model.qd}</p>
        <p>终点：${model.zd}</p>
        <p>经过路线：${model.jglx}</p>
        <p>间隔时间：${model.jgsj}</p>
        <p>起点首末时间：${model.qdsmsj}</p>
        <p>终点首末时间：${model.zdsmsj}</p>
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
			url : basePath + "rest/transport/wxhwzymt/getMore?start="+length,
			success : function(res) {
			    var data = res.data;
				if (data && data.list) {
					$.each(data.list, function(_,m) {
						var html = "<li><p><span>"+m.gjhm+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
				            + "<p>公交号码："+m.gjhm+"</p>"
				            + "<p>起点："+m.qd+"</p>"
				            + "<p>终点："+m.zd+"</p>"
				            + "<p>经过路线："+m.jglx+"</p>"
				            + "<p>间隔时间："+m.jgsj+"</p>"
				            + "<p>起点首末时间："+m.qdsmsj+"</p>"
				            +"<p>终点首末时间"+m.zdsmsj+"</p></div>";
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