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
<title>客渡船</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>

<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.fl}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>分类：${model.fl}</p>
        <p>中文船名：${model.zwcm}</p>
        <p>船籍港：${model.cjg}</p>
        <p>船舶种类：${model.cbzl}</p>
        <p>建成日期：${model.jcrq}</p>
        <p>船舶长度：${model.cbcd}</p>
        <p>总吨：${model.zd}</p>
        <p>主机功率：${model.zjgl}</p>
        <p>船舶所有人：${model.cdsyr}</p>
        <p>船舶经营人：${model.cbjyr}</p>
        <p>客位：${model.kw}</p>
        <p>船龄：${model.cl}</p>
        
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
			url : basePath + "rest/transport/kdc/getMore?start="+length,
			success : function(res) {
			    var data = res.data;
				if (data && data.list) {
					$.each(data.list, function(_,m) {
						var html = "<li><p><span>"+m.fl+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
				            + "<p>分类："+m.fl+"</p>"
				            + "<p>中文船名："+m.zwcm+"</p>"
				            + "<p>船籍港："+m.cjg+"</p>"
				            + "<p>船舶种类："+m.cbzl+"</p>"
				            + "<p>建成日期："+m.jcrq+"</p>"
				            + "<p>船舶长度："+m.cbcd+"</p>"
				            + "<p>总吨："+m.zd+"</p>"
				            + "<p>主机功率："+m.zjgl+"</p>"
				            + "<p>船舶所有人："+m.cbsyr+"</p>"
				            + "<p>船舶经营人："+m.cbjyr+"</p>"
				            + "<p>客位："+m.kw+"</p>"
				            +"<p>船龄"+m.cl+"</p></div>";
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
