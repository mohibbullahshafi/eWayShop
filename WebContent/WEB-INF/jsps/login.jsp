<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Login Page</title>
<link
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
</head>
<body onload='document.f.j_username.focus();'>

	<div class="col-md-6 col-md-offset-3">
		<form class="form-horizontal"
			action="${pageContext.request.contextPath }/j_spring_security_check"
			method="post">
			<fieldset>

				<!-- Form Name -->
				<legend>Login</legend>



				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="j_username">Username
						: </label>
					<div class="col-md-4">
						<input id="j_username" name="j_username" type="text"
							class="form-control input-md">

					</div>
				</div>

				<!-- Password input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="j_password">Password
						: </label>
					<div class="col-md-4">
						<input id="j_password" name="j_password" type="password"
							class="form-control input-md">

					</div>
				</div>
				<div class="alert-danger">
					<c:if test="${param.error == true }">
				Incorrect Username and Password provided!!
				</c:if>

				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-primary">Login</button>
					</div>
				</div>

			</fieldset>
		</form>
		<a href="<c:url value="/newaccount"></c:url>">Create New Account</a>
	</div>
</body>
</html>

