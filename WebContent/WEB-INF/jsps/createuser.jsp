<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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
		<sf:form class="form-horizontal"
			action="${pageContext.request.contextPath }/docreateuser" method="post"
			commandName="users">
			<fieldset>

				<!-- Form Name -->
				<legend>Create User</legend>


				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userFirstName">First
						Name</label>
					<div class="col-md-4">
						<sf:input id="userFirstName" name="userFirstName" type="text"
							placeholder="Enter first Name" class="form-control input-md"
							path="userFirstName" />
						<sf:errors cssClass="alert-danger" path="userFirstName"></sf:errors>
					</div>
				</div>




				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userLastName">Last
						Name</label>
					<div class="col-md-4">
						<sf:input id="userLastName" name="userLastName" type="text"
							placeholder="Enter last Name" class="form-control input-md"
							path="userLastName" />
						<sf:errors cssClass="alert-danger" path="userLastName"></sf:errors>

					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userEmail">Email</label>
					<div class="col-md-4">
						<sf:input id="userEmail" name="userEmail" type="text"
							placeholder="Enter valid mail" class="form-control input-md"
							path="userEmail"/> 
						<sf:errors cssClass="alert-danger" path="userEmail"></sf:errors>
					</div>
				</div>
				
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userCity">City</label>
					<div class="col-md-4">
						<sf:input id="userCity" name="userCity" type="text"
							placeholder="Enter City" class="form-control input-md"
							path="userCity" />
						<sf:errors cssClass="alert-danger" path="userCity"></sf:errors>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userZip">Postal
						Code</label>
					<div class="col-md-4">
						<sf:input id="userZip" name="userZip" type="text"
							placeholder="Enter  postal code" class="form-control input-md"
							path="userZip" />
						<sf:errors cssClass="alert-danger" path="userZip"></sf:errors>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userPhone">Phone</label>
					<div class="col-md-4">
						<sf:input id="userPhone" name="userPhone" type="text"
							placeholder="Enter  phone number" class="form-control input-md"
							path="userPhone" />
						<sf:errors cssClass="alert-danger" path="userPhone"></sf:errors>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userCountry">Country</label>
					<div class="col-md-4">
						<sf:input id="userCountry" name="userCountry" type="text"
							placeholder="Enter country" class="form-control input-md"
							path="userCountry" />
						<sf:errors cssClass="alert-danger" path="userCountry"></sf:errors>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userAddress">Address</label>
					<div class="col-md-4">
						<sf:input id="userAddress" name="userAddress" type="text"
							placeholder="Enter full address" class="form-control input-md"
							path="userAddress" />
						<sf:errors cssClass="alert-danger" path="userAddress"></sf:errors>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userPassword">Password</label>
					<div class="col-md-4">
						<sf:input id="userPassword" name="userPassword" type="text"
							placeholder="Enter Password" class="form-control input-md"
							path="userPassword" />
						<sf:errors cssClass="alert-danger" path="userPassword"></sf:errors>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userconfirmPassword">Confirm
						Password</label>
					<div class="col-md-4">
						<input id="userconfirmPassword" name="userconfirmPassword"
							type="text" placeholder="Enter confirm Password"
							class="form-control input-md" />

					</div>
				</div>





				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-primary">Create
							User</button>
					</div>
				</div>

			</fieldset>
		</sf:form>
	</div>


</body>
</html>