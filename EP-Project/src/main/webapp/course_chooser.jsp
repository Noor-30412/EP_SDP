<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Subject Registration</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }

        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        select option {
            padding: 10px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Add some animation on select */
        select {
            transition: box-shadow 0.2s ease-in-out;
        }

        select:focus {
            box-shadow: 0 0 5px #6a9afa;
        }
        body {
  /* Add a linear gradient background with rainbow colors */
  background: linear-gradient(-45deg, #f00, #ff0, #0f0, #0ff, #00f, #f0f, #f00);
  background-size: 400% 400%;
  animation: gradientAnimation 10s ease infinite;
}

@keyframes gradientAnimation {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

/* Additional styles for the lines effect */
body::before {
  content: '';
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
  z-index: -1;
  background: repeating-linear-gradient(
    45deg,
    transparent,
    transparent 5px,
    rgba(255, 255, 255, 0.2) 5px,
    rgba(255, 255, 255, 0.2) 10px
  );
  animation: linesAnimation 8s linear infinite;
}

@keyframes linesAnimation {
  from {
    transform: translate(-5%, -5%);
  }
  to {
    transform: translate(5%, 5%);
  }
}
        
    </style>
</head>
<body>
<jsp:include page="nav.html"></jsp:include>
    <h1>Student Subject Registration</h1>
    <form action="process_courses.jsp" method="post">
        <label for="studentId">Student ID:</label>
        <input type="text" id="studentId" name="studentId" required><br>

        <label for="subject1">Subject 1:</label>
        <select id="subject1" name="subject1" required>
            <option value="" disabled selected>Select a Course</option>
            <option value="Course A">DATA STRUCTURES</option>
            <option value="Course B">COMPUTER ORGANIZATION & ARCHITECTURE</option>
            <option value="Course C">AI FOR DATA SCIENCE</option>
        </select><br>

        <label for="subject2">Subject 2:</label>
        <select id="subject2" name="subject2" required>
            <option value="" disabled selected>Select a Course</option>
            <option value="Course D">AOOP</option>
            <option value="Course E">SOFTWARE ENGINEERING</option>
            <option value="Course F">PFSD</option>
        </select><br>

        <label for="subject3">Subject 3:</label>
        <select id="subject3" name="subject3" required>
            <option value="" disabled selected>Select a Course</option>
            <option value="Course G">OPERATING SYSTEMS</option>
            <option value="Course H">COMPUTER NETWORKS & SECURITY</option>
            <option value="Course I">MERN STACK WEB DEVELOPMENT</option>
        </select><br>
        <label for="subject4">Subject 4:</label>
        <select id="subject4" name="subject4" required>
            <option value="" disabled selected>Select a Course</option>
            <option value="Course J">DESIGN & ANALYSIS OF ALGORITHMS</option>
            <option value="Course K">ATFL</option>
            <option value="Course L">MACHINE LEARNING</option>
        </select><br>

        <label for="subject5">Subject 5:</label>
        <select id="subject5" name="subject5" required>
            <option value="" disabled selected>Select a Course</option>
            <option value="Course M">DATA VISUALIZATION TECHNIQUES</option>
            <option value="Course N">DATA WAREHOUSING AND MINING</option>
            <option value="Course O">JFSD</option>
        </select><br>

        <input type="submit" value="Register">
    </form>
</body>
</html>