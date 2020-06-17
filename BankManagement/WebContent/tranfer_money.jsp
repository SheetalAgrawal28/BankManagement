<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transfer Money</title>
<link href="css/style.css" rel="stylesheet" media="all">
</head>
<body>
<div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div style="margin-left: 10%;">
		<div class="container main1">

			<fieldset>
				<form action="Transfer Money" method="post" display=table>

					<div class="main">
						<h1 style="margin-left: 25%;">Transfer Money</h1>
					</div>
					<div class="main">
						<label for="customer1">Customer ID :</label> <input type="text"
							id="customer1" name="cust_id" ><br>
					</div>
					<div class="main">
					<label for="source">Source Account Type : </label>
					<input type="text" id="source" name="acc_id" > <br>
					</div>
					<div class="main">
						<label for="target">Target Account Type :</label> <input type="text"
							id="target" name="accounts" required><br>
					</div>
					
					<div class="main">
						<label for="transfer">Transfer Amount :</label> <input type="text" id="tranfer"
							name="tranferamount"><br>
					</div>
					
				<div>
					<input type="submit" value="Transfer" >
					
				</div>
				</form>
			</fieldset>
					
		</div>

	</div>

</body>
</html>