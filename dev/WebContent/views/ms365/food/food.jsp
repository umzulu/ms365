<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<jsp:include page="../../public/layouts/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>食-民生365智能服务系统</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />

</head>
<body>

<ul class="mainmenu">
	<li><a href="${ctx}/rest/food/syjxzcf" ><em></em><p><span>食药监行政处罚信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/food/syjxzcfba" ><em></em><p><span>食药监行政处罚信息(备案)</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/food/yxxjcg" ><em></em><p><span>威海市“优秀星级餐馆”名单</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/food/wmcz" ><em></em><p><span>“文明餐桌行动”示范单位名单</span></p><b></b></a></li>
</ul>

<jsp:include page="../../public/layouts/footer.jsp"></jsp:include>

</body>
</html>