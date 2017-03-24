<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />



</head>
<body>
	<div class="col-md-6 col-md-offset-3">
		<a href="${pageContext.request.contextPath }/createuser">Create
			User</a> <br> <a href="${pageContext.request.contextPath }/showuser">Show
			All Users</a> <br> <a
			href="${pageContext.request.contextPath }/showproducts">Show All
			Products</a> <br> <a href="${pageContext.request.contextPath }/demo">Show
			Demo Template</a> <br> <a
			href="${pageContext.request.contextPath }/createproduct">Create
			Product</a>
	</div>
</body>
</html>