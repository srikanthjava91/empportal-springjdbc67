<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
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
<title>Spring MVC</title>
</head>
<body style="background-color: #b1e6bc">
	<div class="container mt-5">
		<h1 align="center" style="font-weight: bold;">Employee Portal</h1>
		
		<a href="empform" class="btn btn-info" style="font-weight: bold;">Add
			New Employee</a>
		<table class="table mt-5 table-info ">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Age</th>
					<th scope="col">Salary</th>
					<th scope="col">Phone</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="emp" items="${list}">
					<tr>
						<th scope="row"><c:out value="${emp.empid }" /></th>
						<td><c:out value="${emp.firstname}" /></td>
						<td><c:out value="${emp.lastname}" /></td>
						<td><c:out value="${emp.age}" /></td>
						<td><c:out value="${emp.salary}" /></td>
						<td><c:out value="${emp.phone}" /></td>
						
						<td>
						<a href="editdoctorform/<c:out value="${emp.empid}"/>"
							class="btn btn-warning">Edit</a> 
						
						<a href="deletedoctor/<c:out value="${emp.empid}"/>"
							class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
