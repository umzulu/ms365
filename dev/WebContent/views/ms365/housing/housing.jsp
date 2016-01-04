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
<title>住-民生365智能服务系统</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />

</head>
<body>

<ul class="mainmenu">
	<li><a href="${ctx}/rest/housing/bdmp"><em></em><p><span>本地名牌信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/lxs"><em></em><p><span>旅行社信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/wyfwzz"><em></em><p><span>物业服务企业资质信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/wygljg"><em></em><p><span>物业管理机构联系方式</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/fdczj" ><em></em><p><span>房地产中介机构</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/jzqyxy" ><em></em><p><span>建筑企业信用档案</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/zf" ><em></em><p><span>房屋出租信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/esfxx" ><em></em><p><span>二手房信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/spfysgs" ><em></em><p><span>商品房预售许可公示</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/dxyyt" ><em></em><p><span>电信营业厅信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/ltyyt" ><em></em><p><span>联通营业厅信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/ydyyt" ><em></em><p><span>移动营业厅信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/gdyywd" ><em></em><p><span>供电营业网点信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/yzjyyt" ><em></em><p><span>邮政局营业厅信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/kdqyml" ><em></em><p><span>快递企业名录</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/yeylb" ><em></em><p><span>幼儿园列表</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/xxlb" ><em></em><p><span>小学列表</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/czlb" ><em></em><p><span>初中列表</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/gzlb" ><em></em><p><span>高中列表</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/housing/gkwrymd" ><em></em><p><span>威海市国控污染源名单</span></p><b></b></a></li>
</ul>

<jsp:include page="../../public/layouts/footer.jsp"></jsp:include>
	
</body>
</html>