<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      font-family: Arial, Helvetica, sans-serif;
    }

    /* Float four columns side by side */
    .column {
      float: left;
      width: 25%;
      padding: 0 10px;
    }

    /* Remove extra left and right margins, due to padding */
    .row {margin: 0 -5px;}

    /* Clear floats after the columns */
    .row:after {
      content: "";
      display: table;
      clear: both;
    }
    .flex-container {
      display: flex;
      flex-wrap: nowrap;
      background-color: DodgerBlue;
      justify-content: space-evenly;
      margin-top:10px;
    }

    /* Responsive columns */
    @media screen and (max-width: 600px) {
      .column {
        width: 100%;
        display: block;
        margin-bottom: 20px;
      }
    }

    /* Style the counter cards */
    .card {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      padding: 16px;
      text-align: center;
      background-color: #f1f1f1;
    }
  </style>
</head>

<body>
  <%@ include file="nav.html" %>
  <div class="flex-container">
    <div class="card" style="width: 18rem;">
      <img class="card-img-top" src="images/card1.png" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">Faculty Register</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        <a href="facultyRegister.jsp" class="btn btn-primary">Register</a>
      </div>
    </div>
  
    <div class="card" style="width: 18rem;">
      <img class="card-img-top" src="images/card1.png" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">Profile</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        <a href="fac_profile.jsp" class="btn btn-primary">view</a>
      </div>
    </div>
  
    <div class="card" style="width: 18rem;">
      <img class="card-img-top" src="images/card1.png" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">Achievement</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        <a href="#" class="btn btn-primary">view</a>
      </div>
    </div>
  
    <div class="card" style="width: 18rem;">
      <img class="card-img-top" src="images/card1.png" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">Feedback</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        <a href="#" class="btn btn-primary">Go</a>
      </div>
    </div>
  
  </div>
</body>
</html>
