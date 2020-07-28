<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="login" /></title>
<link href="<c:url value='/template/admin/css/styles.css'/>"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>
<script src="<c:url value='/template/common/jquery/jquery.min.js'/>"></script>
</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<dec:body />
		<div id="layoutAuthentication_footer">
			<%@ include file="/common/admin/footer.jsp"%>
		</div>
	</div>

	
	<script type="text/javascript" src="<c:url value='/common/validateForm.js'/>"></script>
	<script
		src="<c:url value='/template/common/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/scripts.js'/>"></script>
</body>
</html>