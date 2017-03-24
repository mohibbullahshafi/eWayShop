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
			action="${pageContext.request.contextPath }/docreateproduct"
			method="post" commandName="products">
			<fieldset>

				<!-- Form Name -->
				<legend>Create Product</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="userFirstName">Product
						SKU </label>
					<div class="col-md-4">
						<sf:input id="ProductSKU" name="ProductSKU" type="text"
							placeholder="Enter Product SKU" class="form-control input-md"
							path="ProductSKU" />
						<sf:errors cssClass="alert-danger" path="ProductSKU"></sf:errors>
					</div>
				</div>




				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="ProductName">Product
						Name</label>
					<div class="col-md-4">
						<sf:input id="ProductName" name="ProductName" type="text"
							placeholder="Enter Product Name" class="form-control input-md"
							path="ProductName" />
						<sf:errors cssClass="alert-danger" path="ProductName"></sf:errors>

					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="ProductPrice">Product
						Price</label>
					<div class="col-md-4">
						<sf:input id="ProductPrice" name="ProductPrice" type="text"
							placeholder="Enter Product Price" class="form-control input-md"
							path="ProductPrice" />
						<sf:errors cssClass="alert-danger" path="ProductPrice"></sf:errors>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="ProductWeight">Product
						Weight</label>
					<div class="col-md-4">
						<sf:input id="ProductWeight" name="ProductWeight" type="text"
							placeholder="Enter Product Weight" class="form-control input-md"
							path="ProductWeight" />
						<sf:errors cssClass="alert-danger" path="ProductWeight"></sf:errors>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="ProductCartDesc">Product
						Cart Description</label>
					<div class="col-md-4">
						<sf:input id="ProductCartDesc" name="ProductCartDesc" type="text"
							placeholder="Enter  Cart Description"
							class="form-control input-md" path="ProductCartDesc" />
						<sf:errors cssClass="alert-danger" path="ProductCartDesc"></sf:errors>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="ProductShortDesc">Product
						Short Description</label>
					<div class="col-md-4">
						<sf:input id="ProductShortDesc" name="ProductShortDesc"
							type="text" placeholder="Write Product Short Description"
							class="form-control input-md" path="ProductShortDesc" />
						<sf:errors cssClass="alert-danger" path="ProductShortDesc"></sf:errors>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="ProductLongDesc">Product
						Long Description</label>
					<div class="col-md-4">
						<sf:input id="ProductLongDesc" name="ProductLongDesc" type="text"
							placeholder="Write Product Long Description"
							class="form-control input-md" path="ProductLongDesc" />
						<sf:errors cssClass="alert-danger" path="ProductLongDesc"></sf:errors>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="ProductThumb">Product
						Thumble Image</label>
					<div class="col-md-4">
						<sf:input id="ProductThumb" name="ProductThumb" type="text"
							placeholder="Insert product Thumble image"
							class="form-control input-md" path="ProductThumb" />
						<sf:errors cssClass="alert-danger" path="ProductThumb"></sf:errors>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="ProductImage">Product
						Image</label>
					<div class="col-md-4">
						<sf:input id="ProductImage" name="ProductImage" type="text"
							placeholder="Insert product Product image"
							class="form-control input-md" path="ProductImage" />
						<sf:errors cssClass="alert-danger" path="ProductImage"></sf:errors>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="ProductStock">Product
						Amount</label>
					<div class="col-md-4">
						<sf:input id="ProductStock" name="ProductStock" type="text"
							placeholder="Enter full address" class="form-control input-md"
							path="ProductStock" />
						<sf:errors cssClass="alert-danger" path="ProductStock"></sf:errors>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="ProductLocation">Product
						Location</label>
					<div class="col-md-4">
						<sf:input id="ProductLocation" name="ProductLocation" type="text"
							placeholder="Enter full address" class="form-control input-md"
							path="ProductLocation" />

						<sf:errors cssClass="alert-danger" path="ProductLocation"></sf:errors>
					</div>
				</div>


				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-primary">Create
							Product</button>
					</div>
				</div>

			</fieldset>
		</sf:form>
	</div>


</body>
</html>