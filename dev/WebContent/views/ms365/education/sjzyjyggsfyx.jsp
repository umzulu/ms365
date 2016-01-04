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
<title>特殊教育学校名录</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>
<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.xxmc}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>学校名称：${model.xxmc}</p>
        <p>学校地址：${model.xxdz}</p>
        <p>联系电话：${model.lxdh}</p>
        <p>质量管理信息：${model.zlglxx}</p>
        <p>招生范围：${model.zsfw}</p>
        <p>招生计划：${model.zsjh}</p>
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
			url : basePath + "rest/education/tsjyxxml/getMore?start="+length,
			success : function(res) {
			    var data = res.data;
				if (data && data.list) {
					$.each(data.list, function(_,m) {
						var html = "<li><p><span>"+m.xxmc+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
				            + "<p>学校名称："+m.xxmc+"</p>"
				            + "<p>学校地址："+m.xxdz+"</p>"
				            + "<p>联系电话："+m.lxdh+"</p>"
				            + "<p>质量管理信息："+m.zlglxx+"</p>"
				            + "<p>招生范围："+m.zsfw+"</p>"
				            +"<p>招生计划"+m.zsjh+"</p></div>";
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