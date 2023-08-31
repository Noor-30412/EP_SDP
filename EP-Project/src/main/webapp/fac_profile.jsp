<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Faculty Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/style.css">
    <style>
        /* Circles animation */
        body {
            overflow: hidden;
        }

        .circle-container {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .circle {
            position: absolute;
            width: 15px;
            height: 15px;
            border-radius: 50%;
            background-color: rgba(150, 200, 250, 0.8); /* Light blue color */
            animation: moveCircle 15s linear infinite;
        }

        @keyframes moveCircle {
            0% {
                transform: translateY(0);
            }
            100% {
                transform: translateY(-200vh);
            }
        }

        /* Table style */
        .table {
            font-weight: bold;
            width: 100%; /* Set table width to 100% */
        }

        /* Table colors */
        .table th {
            background-color: #007bff; /* Blue color for header cells */
            color: white;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f8f9fa; /* Light gray color for odd rows */
        }

        .table-striped tbody tr:nth-of-type(even) {
            background-color: #e2e6ea; /* Light gray color for even rows */
        }

        /* Wrapper styles */
        .table-wrapper {
            position: relative;
            padding: 20px;
            max-width: 800px;
            margin: 0 auto;
            background-color: #ffffff; /* White background for the table wrapper */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<jsp:include page="nav.html"></jsp:include>
    <div class="circle-container">
        <!-- Creating 100 circles using a loop -->
        <% for (int i = 0; i < 100; i++) { %>
            <div class="circle" style="top: <%= Math.random() * 100 %>vh; left: <%= Math.random() * 100 %>vw;"></div>
        <% } %>
    </div>

    <div class="table-wrapper">
        <%
            String email = (String) session.getAttribute("loggedInFaculty"); // Get the email from the session

            if (email != null) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/management", "root", "Qawsedr@12345");
                    String query = "SELECT * FROM faculties WHERE (username=? OR email=?)";
                    PreparedStatement ps = con.prepareStatement(query);
                    ps.setString(1, email);
                    ps.setString(2, email);
                    ResultSet rs = ps.executeQuery();

                    if (rs.next()) {
                        // Retrieve student details from the result set
                        String id = rs.getString("id");
                        String userName = rs.getString("userName");
                        String firstName = rs.getString("fullName");
                       
                        String dateOfBirth = rs.getString("dob");
                        String mobileNumber = rs.getString("email");
                        String alternateMobileNumber = rs.getString("mobileNumber");
                    

                        // Display student details in HTML
        %>
                        <h2>Student Profile</h2>
                        <table class="table table-bordered table-striped">
                            <tr>
                                <th>ID</th>
                                <td><%= id %></td>
                            </tr>
                            
                            <tr>
                                <th>Username</th>
                                <td><%= userName %></td>
                            </tr>
                            <tr>
                                <th>Name</th>
                                <td><%= firstName %></td>
                            </tr>
                          
                            <tr>
                                <th>Date of Birth</th>
                                <td><%= dateOfBirth %></td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td><%= email %></td>
                            </tr>
                            <tr>
                                <th>Mobile Number</th>
                                <td><%= alternateMobileNumber %></td>
                            </tr>
                            
                            
                        </table>
        <%
                    } else {
                        // If the student details are not found in the database, show an error message or redirect to another page
        %>
                        <h2>Error: Student details not found.</h2>
        <%
                    }
                    con.close();
                } catch (Exception e) {
                    // Handle any exceptions that may occur
                    e.printStackTrace();
        %>
                    <h2>Error: An unexpected error occurred.</h2>
                    <p><%= e.getMessage() %></p>
                    <pre><%= e.getStackTrace() %></pre>
        <%
                }
            } else {
                // If the email is not found in the session, redirect to login page or another page to handle unauthorized access
                response.sendRedirect("login.jsp");
            }
        %>
    </div>
</body>
</html>
