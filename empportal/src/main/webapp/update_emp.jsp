<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add EMployee</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body style="background-color: #e2e2e2">
	<div class="container mt-5">
		<div class="card " style="width: 25rem;">
			<div class="card-body">
				<h5 class="card-title " align="center">Edit Employee</h5>
				<f:form modelAttribute="emp" action="update" method="post">
					<f:hidden path="empid" />
					<div class="form-group">
						<label for="firstname">First Name</label>
						<f:input path="firstname" class="form-control" />
					</div>
					<div class="form-group">
						<label for="lastname">Last Name</label>
						<f:input path="lastname" class="form-control" />
					</div>
					<div class="form-group">
						<label for="age">Age</label>
						<f:input path="age" class="form-control" />
					</div>
					<div class="form-group">
						<label for="salary">Salary</label>
						<f:input path="salary" class="form-control" />
					</div>
					<div class="form-group">
						<label for="phone">Phone</label>
						<f:input path="phone" class="form-control" />
					</div>
					<br>
					<div class="form-group mt-2 ">
						<center>
							<input type="submit" value="Update Employee"
								class="btn btn-warning">
						</center>
					</div>
				</f:form>
			</div>
		</div>
	</div>
</body>
</html>




