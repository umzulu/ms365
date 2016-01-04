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
<title>教育-民生365智能服务系统</title>
<link rel="stylesheet" href="${ctx}/views/public/assets/css/neicate.css" />

</head>
<body>

<ul class="mainmenu">
	<!-- <li><a href="education/" ><em></em><p><span>小学列表</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>幼儿园列表</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>初中列表</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>高中列表</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>中小学区划图</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>成人教育信息</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>英语培训信息</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>职业培训信息</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>威海市劳动就业中心培训中心</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>威海市接受外国学生资格学校名单</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>公务员考试信息</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>执业医师资格考试信息</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>威海图书馆信息</span></p><b></b></a></li>
	<li><a href="education/" ><em></em><p><span>展览展示信息</span></p><b></b></a></li> -->
	<li><a href="${ctx}/rest/education/jswgxszg" ><em></em><p><span>威海市接受外国学生资格学校名单</span></p><b></b></a></li>
    <li><a href="${ctx}/rest/education/tsjyxxml"><em></em><p><span>特殊教育学校名录</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/education/tsjyxxml" ><em></em><p><span>省级职业教育骨干示范院校 特色示范专业名单</span></p><b></b></a></li>
	<li><a href="${ctx}/rest/education/tsjyxxml" ><em></em><p><span>重点职业院校名单</span></p><b></b></a></li> 
</ul>

<jsp:include page="../../public/layouts/footer.jsp"></jsp:include>
	
</body>
</html>