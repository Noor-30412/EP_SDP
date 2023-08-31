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
    String usernameOrEmail = request.getParameter("usernameOrEmail");
    String pwd = request.getParameter("pswd");

    // Connection establishment with DB
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/management", "root", "Qawsedr@12345");

        // Query to check login credentials using either username or email
        String query = "SELECT * FROM faculties WHERE (username=? OR email=?) AND password=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, usernameOrEmail);
        ps.setString(2, usernameOrEmail);
        ps.setString(3, pwd);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            // Valid user, set the loggedInUser attribute in the session
            session.setAttribute("loggedInFaculty", usernameOrEmail);
            response.sendRedirect("home.jsp");
        } else {
            // Invalid credentials, redirect to login page with error message
            response.sendRedirect("fac_login.jsp?error=1");
        }

    } catch (Exception e) {
        // Something went wrong, redirect to login page with error message
        response.sendRedirect("fac_login.jsp?error=1");
    }
%>
</body>
</html>
