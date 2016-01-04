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
<title>行-民生365智能服务系统</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />

</head>
<body>

<ul class="mainmenu">
	<li><a href="${ctx}/rest/transport/bktxx" ><em></em><p><span>报刊亭信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/jdchlwzxh" ><em></em><p><span>机动车互联网自编选号号源</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/jdmcsfje" ><em></em><p><span>景点名称收费金额</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/wlanrdxx" ><em></em><p><span>WLAN热点信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/whjxxx" ><em></em><p><span>威海市驾校信息查询</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/ggtcc" ><em></em><p><span>公共停车场信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/wxhwzymt" ><em></em><p><span>威海辖区危险货物作业码头</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/jzxl" ><em></em><p><span>威海对日、韩集装箱轮</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/kycx" ><em></em><p><span>客运查询</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/tlcx" ><em></em><p><span>铁路查询</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/gjick" ><em></em><p><span>公交IC卡售卡充值点</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/kdc" ><em></em><p><span>客渡船</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/wzwhycml" ><em></em><p><span>物质文化遗产名录</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/fwzwhycml" ><em></em><p><span>非物质文化遗产名录</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/qslycxsfdw" ><em></em><p><span>全省旅游诚信示范单位名单</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/ajlxsml" ><em></em><p><span>威海市A级旅行社名录</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/tlbsccx" ><em></em><p><span>铁路办事处查询</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/jtwfxwcldd" ><em></em><p><span>交通违法行为处理地点</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/transport/hcpdsdcx" ><em></em><p><span>火车票代售点查询</span></p><b></b></a></li>
</ul>

<jsp:include page="../../public/layouts/footer.jsp"></jsp:include>	
	
</body>
</html>