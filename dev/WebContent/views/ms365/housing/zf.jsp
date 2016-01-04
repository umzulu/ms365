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
<title>租房信息</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>

<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.bt}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>标题：${model.bt}</p>
        <p>月租：${model.yz}</p>
        <p>方式：${model.fs}</p>
        <p>小区名称：${model.xqmc}</p>
        <p>地址：${model.dz}</p>
        <p>户型：${model.hx}</p>
        <p>楼层：${model.lc}</p>
        <p>电话：${model.dh}</p>
        <p>联系人：${model.lxr}</p>
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
			url : basePath + "rest/housing/zf/getMore?start="+length,
			success : function(res) {
			    var data = res.data;
				if (data && data.list) {
					$.each(data.list, function(_,m) {
						var html = "<li><p><span>"+m.bt+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
				            + "<p>标题："+m.bt+"</p>"
				            + "<p>月租："+m.yz+"</p>"
				            + "<p>方式："+m.fs+"</p>"
				            + "<p>小区名称："+m.xqmc+"</p>"
				            + "<p>地址："+m.dz+"</p>"
				            + "<p>户型："+m.hx+"</p>"
				            + "<p>楼层："+m.lc+"</p>"
				            + "<p>电话："+m.dh+"</p>"
				            + "<p>联系人："+m.lxr+"</p></div>";
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