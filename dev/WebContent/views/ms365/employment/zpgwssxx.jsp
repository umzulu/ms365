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
<title>招聘岗位搜索信息</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>
<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.sxzw}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>公司名称：${model.gsmc}</p>
        <p>所需职位：${model.sxzw}</p>
        <p>发布日期：${model.fbrq}</p>
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
			url : basePath + "rest/employment/zpgwssxx/getMore?start="+length,
			success : function(res) {
			    var data = res.data;
				if (data && data.list) {
					$.each(data.list, function(_,m) {
						var html = "<li><p><span>"+m.sxzw+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
				            + "<p>公司名称："+m.gsmc+"</p>"
				            + "<p>所需职位："+m.sxzw+"</p>"
				            +"<p>发布日期"+m.fbrq+"</p></div>";
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