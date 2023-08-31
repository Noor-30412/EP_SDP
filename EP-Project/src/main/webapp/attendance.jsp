<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Subject Registration</title>
</head>
<body>
    <h1>Student Subject Registration</h1>
    <%-- Fetch student ID and name from the database --%>
    <%
        String dbUrl = "jdbc:mysql://localhost:3306/management";
        String dbUser = "root";
        String dbPassword = "Qawsedr@12345";

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

            // SQL query to fetch student ID and name
            String sql = "SELECT id, fullName FROM students";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            // Display the student ID and name in a dropdown list
    %>
        <form action="attendance_handler.jsp" method="post">
            <label for="studentId">Select Student:</label>
            <select id="studentId" name="studentId" required>
                <% while (rs.next()) { %>
                    <option value="<%= rs.getInt("id") %>"><%= rs.getString("name") %></option>
                <% } %>
            </select><br><br>

            <table>
                <tr>
                    <th>Course ID</th>
                    <th>Course Name</th>
                    <th>Register</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Subject 1</td>
                    <td><input type="checkbox" name="subject1" value="Subject 1"></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Subject 2</td>
                    <td><input type="checkbox" name="subject2" value="Subject 2"></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Subject 3</td>
                    <td><input type="checkbox" name="subject3" value="Subject 3"></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Subject 4</td>
                    <td><input type="checkbox" name="subject4" value="Subject 4"></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Subject 5</td>
                    <td><input type="checkbox" name="subject5" value="Subject 5"></td>
                </tr>
            </table>

            <br>
            <input type="submit" value="Register">
        </form>
    <% } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    } finally {
        // Close the resources
        try {
            if (rs != null)
                rs.close();
            if (stmt != null)
                stmt.close();
            if (conn != null)
                conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    %>
</body>
</html>
