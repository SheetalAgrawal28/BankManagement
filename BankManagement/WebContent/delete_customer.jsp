<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Customer</title>
<link href="css/style.css" rel="stylesheet" media="all">
</head>
<body>
<div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div style="margin-left: 10%;">
		<div class="container main1">

			<fieldset>
				<form action="Delete Customer" method="post" display=table>

					<div class="main">
						<h1 style="margin-left: 25%;">Delete Customer</h1>
					</div>
					<div class="main">
						<label for="customer">SSN ID :</label> <input type="text"
							id="ssn_id" name="customerssn" pattern="[0-9]{9}" required ><br>
					</div>
					<div class="main">
						<label for="customer1">Customer ID :</label> <input type="text"
							id="customer1" name="cust_id" pattern="[0-9]{9}" required><br>
					</div>
					<div class="main">
						<label for="fname">Name :</label> <input type="text"
							id="fname" name="firstname" required><br>
					</div>
					
					<div class="main">
						<label for="address">Age :</label> <input type="text" id="address"
							name="age" pattern="[0-9]" min="1" max="3" required><br>
					</div>
					<div class="main">
						<label for="address">Address :</label> <input type="text"
							id="address" name="addressline1" pattern="[a-zA-Z0-9]+" required><br>
					</div>
				<br>
				<div>
					<input type="submit" value="Confirm Delete" onclick="alert('Deleted successfully!')">
					<input type="submit" value="Cancel">
				</div>
				</form>
			</fieldset>
		</div>

	</div>
					
</body>
</html>