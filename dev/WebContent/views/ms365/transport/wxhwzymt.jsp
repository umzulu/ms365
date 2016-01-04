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
<title>威海辖区危险货物作业码头</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>

<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.mtmc}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>码头名称：${model.mtmc}</p>
        <p>码头所有人或经营人：${model.mtsyrhjyr}</p>
        <p>建造时间：${model.jzsj}</p>
        <p>辖区：${model.xq}</p>
        <p>靠泊能力：${model.kbnl}</p>
        <p>作业范围：${model.zyfw}</p>
        <p>主要防污设备：${model.zyfwsb}</p>
        <p>备注：${model.bz}</p>
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
						var html = "<li><p><span>"+m.mtmc+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
				            + "<p>码头名称："+m.mtmc+"</p>"
				            + "<p>码头所有人或经营人："+m.mtsyrhjyr+"</p>"
				            + "<p>建造时间："+m.jzsj+"</p>"
				            + "<p>辖区："+m.xq+"</p>"
				            + "<p>靠泊能力："+m.kbnl+"</p>"
				            + "<p>作业范围："+m.zyfw+"</p>"
				            + "<p>主要防污设备："+m.zyfwsb+"</p>"
				            +"<p>备注"+m.bz+"</p></div>";
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