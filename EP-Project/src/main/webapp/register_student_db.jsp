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
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String dob = request.getParameter("dob");
    String email = request.getParameter("email");
    String mobileNumber = request.getParameter("mobileNumber");
    String alternateMobileNumber = request.getParameter("alternateMobileNumber");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String pincode = request.getParameter("pincode");
    String state = request.getParameter("state");
    String hobbies = request.getParameter("hobbies");

    // Database connection and insertion code
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/management", "root", "Qawsedr@12345");

      String insertQuery = "INSERT INTO student (first_name, last_name, dob, email, mobile_number, alternate_mobile_number, gender, address, city, pincode, state, hobbies) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
      PreparedStatement ps = con.prepareStatement(insertQuery);
      ps.setString(1, firstName);
      ps.setString(2, lastName);
      ps.setString(3, dob);
      ps.setString(4, email);
      ps.setString(5, mobileNumber);
      ps.setString(6, alternateMobileNumber);
      ps.setString(7, gender);
      ps.setString(8, address);
      ps.setString(9, city);
      ps.setString(10, pincode);
      ps.setString(11, state);
      ps.setString(12, hobbies);

      int rowsAffected = ps.executeUpdate();
      
      if (rowsAffected > 0) {
        response.sendRedirect("registration_success.jsp"); // Redirect to a success page
      } else {
        response.sendRedirect("registration_failed.jsp"); // Redirect to a failure page
      }
      
      con.close();
    } catch(Exception e) {
      out.println(e);
    }
  %>
</body>
</html>
