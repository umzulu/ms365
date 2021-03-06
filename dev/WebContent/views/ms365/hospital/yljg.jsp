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
<title>医疗机构收费项目及收费标准</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>

<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.xm}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>编号：${model.bh}</p>
        <p>项目：${model.xm}</p>
        <p>计费单位：${model.jfdw}</p>
        <p>收费标准：${model.sfbz}</p>
        
        
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
			url : basePath + "rest/hospital/yljg/getMore?start="+length,
			success : function(res) {
			    var data = res.data;
				if (data && data.list) {
					$.each(data.list, function(_,m) {
						var html = "<li><p><span>"+m.xm+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
					        + "<p>编号："+m.bh+"</p>"
					        + "<p>项目："+m.xm+"</p>"
					        + "<p>计费单位："+m.jfdw+"</p>"
					        + "<p>收费标准："+m.sfbz+"</p>"
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