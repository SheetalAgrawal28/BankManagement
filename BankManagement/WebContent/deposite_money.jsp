<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deposite Money</title>
<link href="css/style.css" rel="stylesheet" media="all">
</head>
<body>
<div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div style="margin-left: 10%;">
		<div class="container main1">

			<fieldset>
				<form action="Deposite Money" method="post" display=table>

					<div class="main">
						<h1 style="margin-left: 25%;">Deposite Money</h1>
					</div>
					<div class="main">
						<label for="customer1">Customer ID :</label> <input type="text"
							id="customer1" name="cust_id" pattern="[0-9]{9}" required><br>
					</div>
					<div class="main">
					<label for="account">Account ID : </label>
					<input type="text" id="account" name="acc_id" > <br>
					</div>
					<div class="main">
						<label for="acounttype">Account Type :</label> <input type="text"
							id="accounttype" name="accounts" required><br>
					</div>
					
					<div class="main">
						<label for="bal">Balance :</label> <input type="text" id="bal"
							name="balance"><br>
					</div>
					<div class="main">
						<label for="deposite">Deposite Amount :</label> <input type="text"
							id="deposite" name="depositeamount"><br>
					</div>
				<br>
				<div>
					<input type="submit" value="Submit" onclick="alert('Sumbitted successfully!')">
					<input type="submit" value="Cancel">
				</div>
				</form>
			</fieldset>
					
		</div>

	</div>
</body>
</html>