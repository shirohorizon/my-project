<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang chủ" /></title>
<link href="<c:url value='/template/admin/css/styles.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/template/common/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>
	<script src="<c:url value='/template/common/jquery/jquery.min.js'/>"></script>
	<script src="<c:url value='/ckeditor/ckeditor.js' />"></script>
</head>
<body class="sb-nav-fixed">

	<%@ include file="/common/admin/header.jsp" %>
	<div id="layoutSidenav">
		<%@ include file="/common/admin/menu.jsp" %>
		<div id="layoutSidenav_content">
			<dec:body/>
			<%@ include file="/common/admin/footer.jsp" %>
		</div>
	</div>
	
	
	<script
		src="<c:url value='/template/common/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/scripts.js'/>"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/template/admin/assets/demo/chart-area-demo.js'/>"></script>
	<script src="<c:url value='/template/admin/assets/demo/chart-bar-demo.js'/>"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/template/admin/assets/demo/datatables-demo.js'/>"></script>
</body>
</html>