<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
    // Database connection settings
    String DB_URL = "jdbc:mysql://localhost:3306/management";
    String DB_USERNAME = "root";
    String DB_PASSWORD = "Qawsedr@12345";

    // Get form data
    int studentId = Integer.parseInt(request.getParameter("studentId"));
    String subject1 = request.getParameter("subject1");
    String subject2 = request.getParameter("subject2");
    String subject3 = request.getParameter("subject3");
    String subject4 = request.getParameter("subject4");
    String subject5 = request.getParameter("subject5");

    // Database connection
    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        // Register the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Open a connection
        conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

        // SQL query to insert data into the database
        String sql = "INSERT INTO courses (studentId, subject1, subject2, subject3, subject4, subject5) VALUES (?, ?, ?, ?, ?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setInt(1, studentId);
        stmt.setString(2, subject1);
        stmt.setString(3, subject2);
        stmt.setString(4, subject3);
        stmt.setString(5, subject4);
        stmt.setString(6, subject5);

        // Execute the query
        stmt.executeUpdate();

        // Send a response to the client
        response.sendRedirect("registration_success.jsp");
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        // Handle the exception here, show an error message, etc.
        response.sendRedirect("error.jsp");
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
