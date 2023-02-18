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

.form-card {
	border-radius: 10px;
}
</style>


<title>Register Page</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row nav text-center">
			<h3 class="text-white pl-5 mt-2"><a class="text-white text-decoration-none" href="/EmployeeManagementSystem/"> Employee Management System </a></h3>
		</div>
		
		<c:if test="${msg!=null}">
			<h3 class="text-danger text-center">
				<c:out value="${msg}"></c:out>
			</h3>
		</c:if>

		<div class="row card col-lg-4 offset-4 mt-2 form-card">
			<h3 class="text-center mt-4">Register Here!</h3>
			<form class="p-2" action="register" method="post">


				<div class="form-group">
					<div class="form-group">
						<label for="exampleInputEmail1">Name</label> 
						<input type="text"
							name="name" class="form-control" placeholder="Enter Name" required>
					</div>
				</div>

				<div class="form-group pt-2">
					<div class="form-group">
						<label for="birthday">Date Of Birth</label> 
						<input class="offset-4" type="date"
							id="birthday" name="birthdate" required>
					</div>
				</div>


				<div class="form-group pt-2">
					<div class="form-row">
						<div class="form-row col-lg-4">
							<label>Gender</label>
						</div>
						<div class="form-row col-lg-8">
							<div class="form-row col-lg-4">
								<input class="form-check-input" type="radio" name="gender"
									value="male" checked> <label class="form-check-label"
									for="exampleRadios1">Male </label>
							</div>
							<div class="form-row col-lg-4">
								<input class="form-check-input" type="radio" name="gender"
									value="female"> <label class="form-check-label">Female
								</label>
							</div>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-group">
						<label>Address</label> <input type="text" name="address"
							class="form-control" placeholder="Enter Address" required> 
					</div>
				</div>


				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCity">City</label> <input type="text" name="city"
							placeholder="Enter City" class="form-control" id="inputCity">
					</div>
					<div class="form-group col-md-6">
						<label>State</label> <input type="text" name="state"
							placeholder="Enter State" class="form-control" required>
					</div>

				</div>

				<div class="form-group">
					<div class="form-group">
						<label>Email address</label> <input type="email"
							class="form-control" name="userId" placeholder="Enter email" required>
					</div>
					<div class="form-group">
						<label for="inputPassword4">Password</label> <input
							type="password" placeholder="Enter password" class="form-control"
							name="userPassword" required>
					</div>
				</div>

				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>


	</div>
</body>
</html>