<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Student Registration</title>
</head>
<body>

<%
    // Get form data
    String username = request.getParameter("username");
    String fullName = request.getParameter("fullName");
    String dob = request.getParameter("dob");
    String email = request.getParameter("email");
    String password = request.getParameter("pswd");
    String mobileNumber = request.getParameter("mobileNumber");

    // Database connection
    Connection conn = null;

    try {
        // Register the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Open a connection
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/management", "root", "Qawsedr@12345");

        // SQL query to insert data into the database
        String sql = "INSERT INTO faculties (username, fullName, dob, email, password, mobileNumber) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, username);
        stmt.setString(2, fullName);
        stmt.setString(3, dob);
        stmt.setString(4, email);
        stmt.setString(5, password);
        stmt.setString(6, mobileNumber);

        // Execute the query
        stmt.executeUpdate();

        // Send a response to the client
        response.sendRedirect("fac_register.jsp");
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        // Handle the exception here, show an error message, etc.
    } 
%>

</body>
</html>
