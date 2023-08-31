<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>

<%
    // Database connection settings
    String DB_URL = "jdbc:mysql://localhost:3306/management";
    String DB_USERNAME = "root";
    String DB_PASSWORD = "Qawsedr@12345";

    // Get form data
    String fullName = request.getParameter("fullName");
    String dob = request.getParameter("dob");
    String email = request.getParameter("email");
    String password = request.getParameter("pswd");
    String mobileNumber = request.getParameter("mobileNumber");

    // Database connection
    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        // Register the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Open a connection
        conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

        // SQL query to insert data into the database
        String sql = "INSERT INTO students (fullName, dob, email, password, mobileNumber) VALUES (?, ?, ?, ?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, fullName);
        stmt.setString(2, dob);
        stmt.setString(3, email);
        stmt.setString(4, password);
        stmt.setString(5, mobileNumber);

        // Execute the query
        stmt.executeUpdate();

        // Send a response to the client
        response.sendRedirect("register.jsp");
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        // Handle the exception here, show an error message, etc.
    } finally {
        // Close the resources
        try {
            if (stmt != null)
                stmt.close();
            if (conn != null)
                conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
