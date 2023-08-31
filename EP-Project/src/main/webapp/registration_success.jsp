<!-- registration_success.jsp -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Registration Success</title>
</head>
<body>
  <h1>Registration Successful!</h1>
  <!-- Add any success message or content here -->

  <!-- Add the JavaScript code for the redirect timer -->
  <script>
    // Function to redirect after 5 seconds
    function redirectAfterDelay() {
      setTimeout(function() {
        window.location.href = "home.jsp";
      }, 5000); // 5000 milliseconds (5 seconds)
    }

    // Call the function when the page loads
    window.onload = function() {
      redirectAfterDelay();
    };
  </script>
</body>
</html>
