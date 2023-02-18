<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato&family=Noto+Serif+Tamil:wght@500&family=Poppins:wght@300&display=swap" rel="stylesheet">
<style>
body {
	background-color: #1687a7;
}
.nav {
	height: 60px;
	background-color: #272343;
}
.title{
	font-family: 'Noto Serif Tamil', serif;
color: #ffc93c;
}
</style>

<title>Dashboard</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row nav text-center  ">
			<h3 class="text-white col-lg-4 mt-2">
				<a class="text-white text-decoration-none" href="/EmployeeManagementSystem/"> Employee Management System
				</a>
			</h3>
		</div>

		<div class="row text-center mt-4 col-lg-4 offset-4 ">
			<h2 class="title" >
				Welocome 	<c:out value="${emp.name}"></c:out>
			</h2>
		</div>
		<div class="row col-lg-8 offset-2 mt-4">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Name</th>
						<th scope="col">Gender</th>
						<th scope="col">Address</th>
					</tr>
				</thead>
				<tbody class="bg-white">
					<c:forEach items="${empList}" var="employee">
						<tr>
							<td	class="bg-white"><c:out value="${employee.name}"/> </td>
							<td class="bg-white"><c:out value="${employee.gender}"/></td>
							<td class="bg-white"><c:out value="${employee.address}"/>, <c:out value="${employee.city }"/>, <c:out value="${employee.state}"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>