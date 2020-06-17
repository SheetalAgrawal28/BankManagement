<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Customer</title>
<link href="css/style.css" rel="stylesheet" media="all">
</head>
<body>
	<div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div style="margin-left: 10%;">
		<div class="container main1">

			<fieldset>
				<form action="AddCustomer" method="post">

					<div class="main">
						<h1 style="margin-left: 25%;">Add Customer</h1>
					</div>
					<div class="main">
						<label for="customer">Customer SSN </label> <input type="text"
							id="ssn_id" name="customerssn" pattern="[0-9]{9}" required > <span style="color:red">*</span><br>
					</div>
					<div class="main">
						<label for="customer1">Customer ID <span style="color:red">*</span></label> <input type="text"
							id="cust_id" name="cust_id" pattern="[0-9]{9}" required><br>
					</div>
					<div class="main">
						<label for="fname">First Name <span style="color:red">*</span></label> <input type="text"
							id="fname" name="firstname" required><br>
					</div>
					<div class="main">
						<label for="lname">Last Name <span style="color:red">*</span></label> <input type="text" id="lname"
							name="lastname" required><br>
					</div>
					<div class="main">
						<label for="address">Age <span style="color:red">*</span></label> <input type="text" id="address"
							name="age" pattern="[0-9]{3}" required><br>
					</div>
					<div class="main">
						<label for="address">Address Line 1<span style="color:red">*</span></label> <input type="text"
							id="address" name="addressline1"  required><br>
					</div>
					<div class="main">
						<label for="address1">Address Line 2</label> <input type="text"
							id="address1" name="addressline2"><br>
					</div>
					<div class="main">
						<label for="city">City<span style="color:red">*</span></label> <input type="text" id="city"
							name="city1" required><br>
					</div>
					<div class="main">
						<label for="state">State<span style="color:red">*</span>   </label> <input type="text" id="state"
							name="state1" required><br>
					</div>
					<div class="main">
						<input type="submit" value="Submit" onclick="validate()"> <input type="Reset"
							value="Reset">
					</div>

				</form>
			</fieldset>

		</div>

	</div>
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<!-- Main JS-->


</body>
<script type="text/javascript">
            function validate()
            {
                var ssn_id = document.getElementById("ssn_id");
                var cust_id = document.getElementById("cust_id");
                var fname = document.getElementById("fname").value;
                var lname = document.getElementById("lname").value;
                var valid = true;
                if(ssn_id.value.length<=0 || cust_id.value.length<=0)
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
                    
                return valid;
            };
        </script>
</html>