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
<title>狂犬病处置门诊信息</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>

<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.mzmc}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>所属区：${model.ssq}</p>
        <p>门诊名称：${model.mzmc}</p>
        <p>地址：${model.dz}</p>
        <p>电话：${model.dh}</p>
        <p>服务范围：${model.fwfw}</p>
        
        
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
			url : basePath + "rest/hospital/kqb/getMore?start="+length,
			success : function(res) {
			    var data = res.data;
				if (data && data.list) {
					$.each(data.list, function(_,m) {
						var html = "<li><p><span>"+m.mzmc+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
					        + "<p>所属区："+m.ssq+"</p>"
					        + "<p>门诊名称："+m.mzmc+"</p>"
					        + "<p>地址："+m.dz+"</p>"
					        + "<p>电话："+m.dh+"</p>"
				            + "<p>服务范围："+m.fwfw+"</p></div>";
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