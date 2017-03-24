<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>eWayShop</title>

<link
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />



<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/3-col-portfolio.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">eWayShop</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">



			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath }/createuser">Create
						User</a></li>
				<li><a href="${pageContext.request.contextPath }/showuser">Show
						All User</a></li>
				<li><a href="${pageContext.request.contextPath }/showproducts">Show
						All Products</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Header -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">All Products</h1>
			</div>
		</div>
		<!-- /.row -->

		<!-- Projects Row -->
		<div class="row">


			<c:forEach var="product" items="${products}">

				<div class="col-md-4 portfolio-item">
					<form action="<c:url value="/buy" />" method="GET">
						<a href="#"> <img class="img-responsive"
							src="https://goo.gl/z33Kz3" alt="">
						</a>
						<h3>
							<a href="#"><c:out value="${product.productName}"></c:out></a>
						</h3>
						
						<p>
							<c:out value="${product.productLongDesc}"></c:out>
							<br> <b><span>Price : </span> <c:out
									value="${product.productPrice}"></c:out></b>
									
							<input type="submit"  name="action" value="save"  />
							<input type="hidden"  name="pname" value="${product.productName}" />
							<input type="hidden"  name="pprice" value="${product.productPrice}"  />
							
						</p>
					</form>
				</div>

			</c:forEach>



			<div class="col-md-4 portfolio-item">
				<a href="#"> <img class="img-responsive"
					src="http://placehold.it/700x400" alt="">
				</a>
				<h3>
					<a href="#">Project Name</a>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
					viverra euismod odio, gravida pellentesque urna varius vitae.</p>
			</div>
			<div class="col-md-4 portfolio-item">
				<a href="#"> <img class="img-responsive"
					src="http://placehold.it/700x400" alt="">
				</a>
				<h3>
					<a href="#">Project Name</a>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
					viverra euismod odio, gravida pellentesque urna varius vitae.</p>
			</div>
		</div>
		<!-- /.row -->

		<!-- Projects Row -->
		<div class="row">
			<div class="col-md-4 portfolio-item">
				<a href="#"> <img class="img-responsive"
					src="http://placehold.it/700x400" alt="">
				</a>
				<h3>
					<a href="#">Project Name</a>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
					viverra euismod odio, gravida pellentesque urna varius vitae.</p>
			</div>
			<div class="col-md-4 portfolio-item">
				<a href="#"> <img class="img-responsive"
					src="http://placehold.it/700x400" alt="">
				</a>
				<h3>
					<a href="#">Project Name</a>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
					viverra euismod odio, gravida pellentesque urna varius vitae.</p>
			</div>
			<div class="col-md-4 portfolio-item">
				<a href="#"> <img class="img-responsive"
					src="http://placehold.it/700x400" alt="">
				</a>
				<h3>
					<a href="#">Project Name</a>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
					viverra euismod odio, gravida pellentesque urna varius vitae.</p>
			</div>
		</div>

		<!-- Projects Row -->
		<div class="row">
			<div class="col-md-4 portfolio-item">
				<a href="#"> <img class="img-responsive"
					src="http://placehold.it/700x400" alt="">
				</a>
				<h3>
					<a href="#">Project Name</a>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
					viverra euismod odio, gravida pellentesque urna varius vitae.</p>
			</div>
			<div class="col-md-4 portfolio-item">
				<a href="#"> <img class="img-responsive"
					src="http://placehold.it/700x400" alt="">
				</a>
				<h3>
					<a href="#">Project Name</a>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
					viverra euismod odio, gravida pellentesque urna varius vitae.</p>
			</div>
			<div class="col-md-4 portfolio-item">
				<a href="#"> <img class="img-responsive"
					src="http://placehold.it/700x400" alt="">
				</a>
				<h3>
					<a href="#">Project Name</a>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
					viverra euismod odio, gravida pellentesque urna varius vitae.</p>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Pagination -->
		<div class="row text-center">
			<div class="col-lg-12">
				<ul class="pagination">
					<li><a href="#">&laquo;</a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Footer -->
		<footer>
		<div class="row">
			<div class="col-lg-12">
				<p>Copyright &copy; Your Website 2014</p>
			</div>
		</div>
		<!-- /.row --> </footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/static/lib/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>



