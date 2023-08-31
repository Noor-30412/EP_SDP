<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Attendance Handler</title>
</head>
<body>
    <%
        // Database connection settings
        String DB_URL = "jdbc:mysql://localhost:3306/management";
        String DB_USERNAME = "root";
        String DB_PASSWORD = "Qawsedr@12345";

        // Get form data
        int studentId = Integer.parseInt(request.getParameter("studentId"));
        int courseId = Integer.parseInt(request.getParameter("courseId"));
        String date = request.getParameter("date");
        boolean isPresent = "on".equals(request.getParameter("isPresent"));

        // Database connection
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            // SQL query to insert data into the database
            String sql = "INSERT INTO course_registration (student_id, course_id, date, is_present) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, studentId);
            stmt.setInt(2, courseId);
            stmt.setString(3, date);
            stmt.setBoolean(4, isPresent);

            // Execute the query
            stmt.executeUpdate();

            // Send a response to the client
            out.println("<html>Attendance marked successfully!</html>");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle the exception here, show an error message, etc.
            out.println("<html>Error: Attendance not marked.</html>");
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
</body>
</html>
