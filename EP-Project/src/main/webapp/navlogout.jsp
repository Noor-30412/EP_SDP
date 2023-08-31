<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>nav</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="styles/style.css">
<style type="text/css">
.dropdown {
  position: relative;
  display: inline-block;
}
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.dropdown:hover .dropdown-content {
  display: block;
}
.dropdown-content a:hover {
  background-color: #f1f1f1;
}</style>
</head>

<body>

<header class="header">
  <a href="home.jsp" class="logo">Student</a>
  <nav class="nav-items">
    <a href="home1.jsp">Home</a>
    <a href="about.jsp">About</a>
    <a href="cont.jsp">Contact</a>
    <div class="dropdown">
      <button class="dropbtn">Login/Register</button>
      <div class="dropdown-content">
        <a href="register.jsp">Student</a>
        <a href="fac_register.jsp">Faculty</a>
      </div>
    </div>
  </nav>
</header>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-oLvUm2gUE9UF7wVq4WBgC0SOa6+h0X1lA/dUsjBeylM=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>