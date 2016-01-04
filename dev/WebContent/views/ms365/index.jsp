<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<jsp:include page="../public/layouts/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>民生365智能服务系统</title>
<link rel="stylesheet" href="views/public/assets/css/cate.css"/>
<style>
body {
	background-image: url('views/public/assets/images/8.jpg');
	background-size: 100% 100%;
}
</style>

</head>
<body>

<ul class="mainmenu">
	<li><a href="rest/housing/index"><p><img src="views/public/assets/images/1.png"/><span>住</span></p></a></li>
	<li><a href="rest/food/index"><p><img src="views/public/assets/images/4.png"/><span>食</span></p></a></li>
	<li><a href="rest/transport/index"><p><img src="views/public/assets/images/13.png"/><span>行</span></p></a></li>
	<li><a href="rest/education/index"><p><img src="views/public/assets/images/5.png"/><span>教育</span></p></a></li>
	<li><a href="rest/hospital/index"><p><img src="views/public/assets/images/14.png"/><span>医</span></p></a></li>
	<li><a href="rest/employment/index"><p><img src="views/public/assets/images/20.png"/><span>就业</span></p></a></li>
	<!-- <li><a href="rest/other/index"><p><img src="views/public/assets/images/16.png"/><span>其他</span></p></a></li> -->
</ul>

<jsp:include page="../public/layouts/footer.jsp"></jsp:include>
	
</body>
</html>