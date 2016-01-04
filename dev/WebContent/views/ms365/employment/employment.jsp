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
	<li><a href="${ctx}/rest/employment/zdggqyjxrc" ><em></em><p><span>重点骨干企业急需人才信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/employment/wplwqyygxx" ><em></em><p><span>外派劳务企业用工信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/employment/zpgwssxx" ><em></em><p><span>招聘岗位搜索信息</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/employment/dwhzlwqy" ><em></em><p><span>对外合作劳务企业</span></p><b></b></a></li>
</ul>

<jsp:include page="../../public/layouts/footer.jsp"></jsp:include>	
	
</body>
</html>