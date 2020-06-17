 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.bms.connection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Customer</title>
<link href="css/style.css" rel="stylesheet" media="all">
</head>
<body>
	<div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div style="margin-left: 10%;">
		<div class="container main1">

			<fieldset>
			         <div class="main" >
						<label for="customer">Customer SSN / Cust_ID</label> <input type="text"
							id="ssn_id1" name="customerssn"  class="form-control"><br>
					</div>
					<%
						Connection cn = null;

						try {
							Class.forName("com.mysql.jdbc.Driver");
							cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/retailbank", "root", "");
						} catch (ClassNotFoundException | SQLException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}

						//Connection cn=DbConnection.getConnection(); 
						try {

							String id = request.getParameter("ssn_id1");
							Statement st = cn.createStatement();
							String data = "select *from customer where ws_ssn='" + id + "' or ws_cust_id='" + id + "'";
							ResultSet rs = st.executeQuery(data);
							if (rs.next()) {
					%>
				<form action="UpdateCustomer" method="post">

					<div class="main">
						<h1 style="margin-left: 25%;">Update Customer</h1>
					</div>
					
					
					<div class="main">
						<label for="customer">Customer SSN</label> <input type="text"
							id="ssn_id" name="customerssn"
							value=<%=rs.getString("ws_ssn")%> disabled><br>
					</div>
					<div class="main">
						<label for="customer1">Customer ID</label> <input type="text"
							id="customer1" name="cust_id"
							value=<%=rs.getString("ws_cust_id")%> ><br>
					</div>
					<div class="main">
						<label for="fname">Old Customer Name</label> <input type="text"
							id="fname" name="firstname"
							value=<%=rs.getString("ws_name").split(" ")[0].toString()%>><br>
					</div>
					<div class="main">
						<label for="lname">New Customer Name<span style="color:red">*</span></label> <input type="text" id="lname"
							name="lastname"><br>
					</div>
					<div class="main">
						<label for="address">Old Age </label> <input type="text" id="address"
							name="age" value=<%=rs.getString("ws_age")%>><br>
					</div>
					<div class="main">
						<label for="address">New Age<span style="color:red">*</span></label> <input type="text"
							id="address" name="addressline1"><br>
					</div>
					<div class="main">
						<label for="address1">Old Address</label> <input type="text"
							id="address1" name="addressline2"
							value=<%=rs.getString("ws_adrs")%>><br>
					</div>
					<div class="main">
						<label for="city">New Address<span style="color:red">*</span></label> <input type="text" id="city"
							name="city1" ><br>
					</div>
					
					
					<div class="main">
						<input type="submit" value="Update" onclick="alert('Updated successfully!')">
					</div>

				</form>
				<%
						}
						} catch (Exception e) {
							e.printStackTrace();
						}
					%>
			</fieldset>

		</div>

	</div>
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<!-- Main JS-->


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>