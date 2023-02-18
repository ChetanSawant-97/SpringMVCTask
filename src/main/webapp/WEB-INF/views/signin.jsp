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

<style>
body {
	background-color: #53a8b6;
}

.nav {
	height: 60px;
	background-color: #272343;
}
a{
text-decoration: none;}
</style>

<title>Signin page</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row nav text-center">
			<h3 class="text-white pl-5 mt-2">
				<a class="text-white text-decoration-none" href="/EmployeeManagementSystem/"> Employee Management System
				</a>
			</h3>
		</div>
		<c:if test="${msg!=null}">
			<h3 class="text-white text-center">
				<c:out value="${msg}"></c:out>
			</h3>
		</c:if>
		
		<c:if test="${loginMsg!=null}">
			<h3 class="text-danger text-center">
				<c:out value="${loginMsg}"></c:out>
			</h3>
		</c:if>

		<div class="row card col-lg-4 mt-4 offset-4">
			<h3 class="text-center mt-2">LogIn Here!</h3>
			<div class="card-body">
				<form action="login" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" class="form-control" name="userId" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" name="userPassword" placeholder="Password">
					</div>

					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>