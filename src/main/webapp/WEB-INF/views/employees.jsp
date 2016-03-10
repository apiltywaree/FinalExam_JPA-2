<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Employees</title>
</head>
<body>
	<section>
			<div class="jumbotron">
			<div class="container">
				<h1>Our People</h1>
				<a href="<spring:url  value="/doLogout" />"
				class=" btn-mini pull-right">| Logout</a>
				<a href="<spring:url  value="/login" />"
				class="btn-mini pull-right">Login |</a><br>
				<p>All of the contributors to our Community!!!</p>
			</div>
			<a href="<c:url value="/employees/add" />"
				class="btn btn-danger btn-mini pull-right">Add a new one</a>

		</div>
		</div>
		<form action="employees/employee" method="get"
			class="btn-mini pull-right">
			<input name="id" type="text" /> <input class="btn btn-danger"
				type="submit" value="Search-By-Employe-Number" />
		</form>
		</div>
	</section>

	<section class="container">
		<div class="row">
			<c:forEach items="${employees}" var="employee">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
						<div class="caption">
							<h3>First Name - ${employee.firstName}</h3>
							<h3>Last Name - ${employee.lastName}</h3>
							<p>Age - ${employee.age}</p>
							<p>Title - ${employee.title}</p>
							<p>NUMBER - ${employee.employeeNumber}</p>
							<p>City- ${employee.address.city}</p>

							<p>
								<!--a
									href=" <spring:url value="/products/product?id=${product.productId}" /> "
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon" /></span> Details
								</a-->
							</p>

						</div>
					</div>
				</div>
			</c:forEach>
				</div>
	</section>
</body>
</html>
