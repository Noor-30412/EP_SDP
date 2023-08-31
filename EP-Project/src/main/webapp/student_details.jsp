<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student List</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f7f7f7;
      margin: 20px;
      border: 2px solid #ccc;
      border-radius: 8px;
      padding: 20px;
    }

    h1 {
      text-align: center;
      margin-bottom: 30px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      padding: 10px;
      text-align: center;
      border: 1px solid #ddd;
      background-color: #fff9f4; /* Light cream color */
    }

    th {
      background-color: #f2f2f2;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    .search-bar {
      text-align: center;
      margin-bottom: 20px;
    }

    .search-input {
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 5px;
    }

    .search-btn {
      background-color: #3498db;
      border: none;
      color: white;
      padding: 10px;
      border-radius: 5px;
      margin-left: 10px;
      cursor: pointer;
    }

    .search-btn:hover {
      background-color: #2980b9;
    }
  </style>
</head>
<body>
<jsp:include page="stu_nav.html"></jsp:include>
  <h1>Student List</h1>
  <div class="search-bar">
    <input type="text" class="search-input" id="search" onkeyup="filterTable()" placeholder="Search by first name..">
    <button class="search-btn"><i class="fas fa-search"></i></button>
  </div>
  <table id="studentTable">
    <tr>
      <th>ID</th>
      <th>First Name</th>
      <th>Last Name</th>
    </tr>
    <% 
      try {
        // Database connection code (same as before)
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/management","root","Qawsedr@12345");

        String query = "SELECT id, first_name, last_name FROM student";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(query);

        while (rs.next()) {
          int id = rs.getInt("id");
          String firstName = rs.getString("first_name");
          String lastName = rs.getString("last_name");
    %>
    <tr>
      <td><%= id %></td>
      <td><%= firstName %></td>
      <td><%= lastName %></td>
    </tr>
    <%
        }
        // Close the database resources (same as before)
      } catch (Exception e) {
        e.printStackTrace();
      }
    %>
  </table>

  <script>
    function filterTable() {
      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("search");
      filter = input.value.toUpperCase();
      table = document.getElementById("studentTable");
      tr = table.getElementsByTagName("tr");

      for (i = 1; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[1]; // Index 1 is the column of First Name
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }
      }
    }
  </script>
</body>
</html>
