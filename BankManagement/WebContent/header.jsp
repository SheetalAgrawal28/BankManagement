<!DOCTYPE html>
<html lang="en">
<head>
<title>Header</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style>
ul li:hover {
	background-color: blue;
}
</style>
<body style="background-color: white;">

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">FEDBANK</a>
			</div>
			<ul class="nav navbar-nav" style="float: right;">
				<li><a href="home.jsp">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Customer Management <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="create_customer.jsp">Create Customer</a></li>
						<li><a href="update_customer.jsp">Update Customer</a></li>
						<li><a href="delete_customer.jsp">Delete Customer</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Account Management <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Create Account</a></li>
						<li><a href="#">Delete Account</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Status Details <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#"> Customer Status</a></li>
						<li><a href="#"> Account Status</a></li>
					</ul></li>

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Actions <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Change Password</a></li>
						<li><a href="Logout">Logout <span
								class="glyphicon glyphicon-log-out"></span></a></li>
					</ul></li>

			</ul>
		</div>
	</nav>

</body>
</html>
