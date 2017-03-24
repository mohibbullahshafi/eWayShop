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
	


	<table class="table table-striped">

		<tr>
			<th>Id</th>
			<th>Email</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>City</th>
			<th>Zip Code</th>
			<th>Registration Date</th>
			<th>Phone Number</th>
			<th>Country</th>
			<th>Address</th>
		</tr>

		<c:forEach var="user" items="${users }">
			<tr>
				<td><c:out value="${ user.userID}"></c:out></td>
				<td><c:out value="${ user.userEmail}"></c:out></td>
				<td><c:out value="${ user.userFirstName}"></c:out></td>
				<td><c:out value="${ user.userLastName}"></c:out></td>
				<td><c:out value="${ user.userCity}"></c:out></td>
				<td><c:out value="${ user.userZip}"></c:out></td>
				<td><c:out value="${ user.userRegistrationDate}"></c:out></td>
				<td><c:out value="${ user.userPhone}"></c:out></td>
				<td><c:out value="${ user.userCountry}"></c:out></td>
				<td><c:out value="${ user.userAddress}"></c:out></td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>