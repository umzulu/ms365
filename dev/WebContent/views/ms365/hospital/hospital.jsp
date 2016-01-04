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
<title>医-民生365智能服务系统</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />
</head>
<body>

<ul class="mainmenu">
	<li><a href="${ctx}/rest/hospital/yfjz" ><em></em><p><span>预防接种门诊接种日及接种区域</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/kqb" ><em></em><p><span>狂犬病处置门诊信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/tjjg" ><em></em><p><span>体检机构表</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/ylzj" ><em></em><p><span>威海医疗专家名录</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/fsws" ><em></em><p><span>放射卫生监测、检验费项目</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/wsfy" ><em></em><p><span>委托性卫生防疫服务费</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/yljg" ><em></em><p><span>医疗机构收费项目及收费标准</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/yqcl" ><em></em><p><span>疫情处理费</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/mzjz" ><em></em><p><span>预防接种门诊接种日及接种区域</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/lhjy" ><em></em><p><span>理化检验费</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/jcf" ><em></em><p><span>消毒、杀虫、灭鼠监测费</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/hospital/wsw" ><em></em><p><span>微生物检验费</span></p><b></b></a></li>
</ul>

<jsp:include page="../../public/layouts/footer.jsp"></jsp:include>
	
</body>
</html>