<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href='<c:url value="/login?action=login"/>'>login</a>
	<a href='<c:url value="/login?action=logout"/>'>logout</a>
	full name: ${USERMODEL.fullName}
</body>
</html>