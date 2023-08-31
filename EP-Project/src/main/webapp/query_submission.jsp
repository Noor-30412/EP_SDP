<%@ page contentType="text/html; charset=UTF-8" %>

<html>
  <head>
    <title>Contact form - Query Submitted</title>
    <!-- Add the JavaScript code for the redirect timer -->
    <script>
      // Function to redirect after 3 seconds
      function redirectAfterDelay() {
        setTimeout(function() {
          window.location.href = "home.jsp";
        }, 3000); // 3000 milliseconds (3 seconds)
      }

      // Call the function when the page loads
      window.onload = function() {
        redirectAfterDelay();
      };
    </script>
  </head>
  <body>
    <div>
      <h1>Query Submitted Successfully!</h1>
      <p>Redirecting to home page in 3 seconds...</p>
    </div>
  </body>
</html>
