package com.bms.operation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddCustomer
 */
@WebServlet("/AddCustomer")
public class AddCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCustomer() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String ssn_id = request.getParameter("customerssn");
		String cust_id = request.getParameter("cust_id");
		String name = request.getParameter("firstname").concat(" " + request.getParameter("lastname"));
		String age = request.getParameter("age");
		String address_line1 = request.getParameter("addressline1");
		String address_line2 = request.getParameter("addressline2");
		String city = request.getParameter("city1");
		String state = request.getParameter("state1");
		String address = address_line1 + " " + address_line2 + " " + city + " " + state;
		Connection cn = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/retailbank", "root", "");
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// Connection cn=Connector.getConnection();
		PrintWriter out = response.getWriter();

		try {
			String sql = "insert into customer values(?,?,?,?,?)";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setString(1, ssn_id);
			stmt.setString(2, cust_id);
			stmt.setString(3, name);
			stmt.setString(4, address);
			stmt.setString(5, age);

			stmt.executeUpdate();
			out.println("registration succefully...!");
			response.sendRedirect("home.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	}

}
