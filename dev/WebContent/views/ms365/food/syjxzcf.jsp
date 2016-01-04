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
<title>食药监行政处罚信息</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>

<ul class="submenu">
<c:forEach items="${it.data.list}" var="model">
    <li><p><span>${model.ajmc}</span></p><b class="ui-icon-plus"></b></li>
    <div class="panel" style="display:none;">
        <p>案件名称：${model.ajmc}</p>
        <p>时间：${model.sj}</p>
        <p>类别：${model.lb}</p>
        <p>序号：${model.xh}</p>
        <p>行政处罚决定书文号：${model.xzcfjdswh}</p>
        <p>违法企业名称或违法自然人姓名：${model.wfqymchwfzrrxm}</p>
        <p>法定代表人姓名：${model.fddbrxm}</p>
        <p>作出处罚的机关名称和日期：${model.xzccfdjgmchrq}</p>
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
			url : basePath + "rest/food/syjxzcf/getMore?start="+length,
			success : function(res) {
			    var data = res.data;
			    
				if (data && data.list) {
					$.each(data.list, function(_,m) {
						var html = "<li><p><span>"+m.ajmc+"</span></p><b class='ui-icon-plus'></b></li>"
					        + "<div class='panel' style='display:none;'>"
				            + "<p>案件名称："+m.ajmc+"</p>"
				            + "<p>时间："+m.sj+"</p>"
				            + "<p>类别："+m.lb+"</p>"
				            + "<p>序号："+m.xh+"</p>"
				            + "<p>行政处罚决定书文号："+m.xzcfjdswh+"</p>"
				            + "<p>违法企业名称或违法自然人姓名："+m.wfqymchwfzrrxm+"</p>"
				            + "<p>法定代表人姓名："+m.fddbrxm+"</p>"
				            + "<p>作出处罚的机关名称和日期："+m.xzccfdjgmchrq+"</p>"
				            + "<p>备注："+m.bz+"</p></div>";
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