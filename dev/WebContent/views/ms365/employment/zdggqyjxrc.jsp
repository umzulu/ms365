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
<title>重点骨干企业急需人才信息</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>
<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.zpzw}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>单位名称：${model.dwmc}</p>
        <p>招聘职位：${model.zpzw}</p>
        <p>需求专业：${model.xqzy}</p>
        <p>学历：${model.xl}</p>
        <p>需求人数：${model.xqrs}</p>
        <p>待遇情况：${model.dyqk}</p>
        <p>联系人：${model.lxr}</p>
        <p>联系电话：${model.lxdh}</p>
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
			url : basePath + "rest/employment/zdggqyjxrc/getMore?start="+length,
			success : function(res) {
			    var data = res.data;
				if (data && data.list) {
					$.each(data.list, function(_,m) {
						var html = "<li><p><span>"+m.zpzw+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
				            + "<p>单位名称："+m.dwmc+"</p>"
				            + "<p>招聘职位："+m.zpzw+"</p>"
				            + "<p>需求专业："+m.xqzy+"</p>"
				            + "<p>学历："+m.xl+"</p>"
				            + "<p>需求人数："+m.xqrs+"</p>"
				            + "<p>待遇情况："+m.dyqk+"</p>"
				            + "<p>联系人："+m.lxr+"</p>"
				            +"<p>联系电话"+m.lxdh+"</p></div>";
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