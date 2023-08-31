<!-- registration_failed.jsp -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Registration Failed</title>
</head>
<body>
  <h1>Registration Failed!</h1>
  <!-- Add any failure message or redirect to a retry page if needed -->
  <script>
    // Function to redirect after 5 seconds
    function redirectAfterDelay() {
      setTimeout(function() {
        window.location.href = "studentRegistration.jsp";
      }, 5000); // 5000 milliseconds (5 seconds)
    }

    // Call the function when the page loads
    window.onload = function() {
      redirectAfterDelay();
    };
  </script>
</body>
</html>
