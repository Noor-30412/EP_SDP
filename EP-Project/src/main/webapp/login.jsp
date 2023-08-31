<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
</head>
<body>
<%
    String uname = request.getParameter("email");
    String pwd = request.getParameter("pswd");

    // Connection establishment with DB
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/management", "root", "Qawsedr@12345");

        // login is the table name in the query
        String s1 = "select * from students where email=? and password=?";
        PreparedStatement ps = con.prepareStatement(s1);
        ps.setString(1, uname);
        ps.setString(2, pwd);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            // Valid user, set the loggedInUser attribute in the session
            session.setAttribute("loggedInStudent", uname);
            response.sendRedirect("home.jsp");
        } else {
            // Invalid credentials, redirect to login page with error message
            response.sendRedirect("login.jsp");
        }

    } catch (Exception e) {
        // Something went wrong, redirect to login page with error message
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>


























    String sql = "INSERT INTO courses (studentId, subject1, subject2, subject3, subject4, subject5) VALUES (?, ?, ?, ?, ?, ?)";









