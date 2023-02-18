<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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
a{
	text-decoration: none;
	}
.links{
height: 80px;
font-size: 25px;
}

ul.no-bullets {
  list-style-type: none; /* Remove bullets */
  padding: 0; /* Remove padding */
  margin: 0; /* Remove margins */
}

.nav {
	height: 60px;
	background-color: #272343;
}
.homelinks{
	border: 2px solid black;
}
.list1{
border-bottom: 2px solid bottem;
}
</style>

<title>Homepage</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row nav text-center">
			<h3 class="text-white pl-5 mt-2"><a class="text-white text-decoration-none" href="EmployeeManagementSystem/"> Employee Management System </a></h3>
		</div>
		<div class="row text-white">


			<div class="card col-lg-2 offset-5 mt-5 homelinks" style="width: 18rem;">
				<ul class="list-group list-group-flush links no-bullets text-center">
					<li class="list1" ><a class="text-decoration-none" href="signup"> Register Employee</a></li>
					<li ><a class="text-decoration-none" href="signin">Log In EMployee </a></li>
				</ul>
			</div>
		</div>
	</div>




</body>
</html>
