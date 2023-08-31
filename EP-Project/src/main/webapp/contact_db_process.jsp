<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*, java.util.*, java.sql.*" %>
<!DOCTYPE html>

<html>
  <head>
    <title>Contact form - Query Submitted</title>
    <!-- Head content goes here -->
    <meta http-equiv="refresh" content="3;url=query_submission.jsp" />
  </head>
  <body>
  
    <%

      // Process form submission here (e.g., send email or store in a database)
      String fullName = request.getParameter("name");
      String email = request.getParameter("email");
      String phone = request.getParameter("phone");
      String website = request.getParameter("website");
      String message = request.getParameter("message");

      // Database connection and data insertion
      Connection conn = null;
      PreparedStatement pstmt = null;
      try {
          Class.forName("com.mysql.cj.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/management", "root", "Qawsedr@12345");

        // Prepare the SQL query for inserting the form data
        String sql = "INSERT INTO queries (full_name, email, phone, message) VALUES (?, ?, ?, ?)";
        pstmt = con.prepareStatement(sql);
        pstmt.setString(1, fullName);
        pstmt.setString(2, email);
        pstmt.setString(3, phone);
       
        pstmt.setString(4, message);

        // Execute the SQL query to insert the data
        pstmt.executeUpdate();
      } catch (Exception e) {
        e.printStackTrace();
      } finally {
        // Close resources
        if (pstmt != null) {
          try {
            pstmt.close();
          } catch (SQLException e) {
            e.printStackTrace();
          }
        }
        if (conn != null) {
          try {
            conn.close();
          } catch (SQLException e) {
            e.printStackTrace();
          }
        }
      }
    %>
    <div>
      <h1>Query Submitted Successfully!</h1>
      <p>Full Name: <%= fullName %></p>
      <p>Email: <%= email %></p>
      <p>Phone Number: <%= phone %></p>
      
      <p>Message: <%= message %></p>
      <p>Redirecting to the querySubmitted page in 3 seconds...</p>
    </div>
  </body>
</html>
