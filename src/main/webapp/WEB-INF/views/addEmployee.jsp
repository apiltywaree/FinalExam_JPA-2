<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Employees</title>
</head>
<body>
<div>
<p> <security:authorize access="isAuthenticated()">
  					Welcome  <security:authentication property="principal.username" />
				</security:authorize>

			</div>	 
 
				  <div class="container">
 				  <security:authorize access="isAnonymous()">
   					<a href="<spring:url value='/login' />" class="btn btn-default pull-right">Login</a>
				</security:authorize>
				</div>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Valued Members</h1>
				<p>Add a new one<p>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form  modelAttribute="newEmployee" class="form-horizontal"  >
			<fieldset>
				<legend>Add new employee</legend>

				<form:errors path="*" cssClass="alert alert-danger" element="div"/>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="employeeNumber"> Employee Number</label>
					<div class="col-lg-10">
						<form:input id="employeeNumber" path="employeeNumber" type="text" class="form:input-large"/>
						<form:errors path="employeeNumber" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="firstName">First Name</label>
					<div class="col-lg-10">
						<form:input id="firstName" path="firstName" type="text" class="form:input-large"/>
						<form:errors path="firstName" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="lastName">Last Name</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="lastName" path="lastName" type="text" class="form:input-large"/>
							<form:errors path="lastName" cssClass="text-danger"/>
						</div>
					</div>
				</div>


				<div class="form-group">
					<label class="control-label col-lg-2" for="age">Age</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="age" path="age" type="text" class="form:input-large"/>
							<form:errors path="age" cssClass="text-danger"/>
						</div>
					</div>
				</div>
				
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="title">Title</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="title" path="title" type="text" class="form:input-large"/>
							<form:errors path="title" cssClass="text-danger"/>
						</div>
					</div>
				</div>
				<div style="margin-left: 40px">
				<h3>Address</h3>
				<div class="form-group">
					<label class="control-label col-lg-2" for="city">City</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="city" path="address.city" type="text"
								class="form:input-large" />
							<form:errors path="address.city" cssClass="text-danger" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="street">Street</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="street" path="address.street" type="text"
								class="form:input-large" />
							<form:errors path="address.street" cssClass="text-danger" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="state">State</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="state" path="address.state" type="text"
								class="form:input-large" />
							<form:errors path="address.state" cssClass="text-danger" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="zipCode">ZipCode</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="zipCode" path="address.ZipCode" type="text"
								class="form:input-large" />
							<form:errors path="address.zipCode" cssClass="text-danger" />
						</div>
					</div>
				</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
					</div>
				</div>
				
			</fieldset>
		</form:form>
	</section>
</body>
</html>
