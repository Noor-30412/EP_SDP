<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="slide navbar style.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
<style>
body{
   margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	font-family: 'Jost', sans-serif;
	background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
}
.main{
	width: 350px;
	height: 600px; /* Increased height to accommodate all details */
	background: red;
	overflow: hidden;
	background: url("https://doc-08-2c-docs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiucmc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpEpnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38") no-repeat center/ cover;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
}
#chk{
	display: none;
}
.signup{
	position: relative;
	width:100%;
	height: 100%;
}
label{
	color: #fff;
	font-size: 2.3em;
	justify-content: center;
	display: flex;
	margin: 60px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}
input{
	width: 60%;
	height: 20px;
	background: #e0dede;
	justify-content: center;
	display: flex;
	margin: 20px auto;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
}
button{
	width: 60%;
	height: 40px;
	margin: 10px auto;
	justify-content: center;
	display: block;
	color: #fff;
	background: #573b8a;
	font-size: 1em;
	font-weight: bold;
	margin-top: 20px;
	outline: none;
	border: none;
	border-radius: 5px;
	transition: .2s ease-in;
	cursor: pointer;
}
button:hover{
	background: #6d44b8;
}
.login{
	height: 530px; /* Increased height to match the main container height */
	background: #eee;
	border-radius: 60% / 10%;
	transform: translateY(-180px);
	transition: .8s ease-in-out;
}
.login label{
	color: #573b8a;
	transform: scale(.6);
}

#chk:checked ~ .login{
	transform: translateY(-500px);
}
#chk:checked ~ .login label{
	transform: scale(1);	
}
#chk:checked ~ .signup label{
	transform: scale(.6);
}
</style>
</head>
<body>
<div class="main">
    <input type="checkbox" id="chk" aria-hidden="true">
    <div class="signup">
        <form action="registration.jsp" onsubmit="return validateForm()">
            <label for="chk" aria-hidden="true">Sign up</label>
            <input type="text" name="fullName" placeholder="Full Name" required>
            <input type="date" name="dob" placeholder="Date of Birth" required>
            <input type="email" name="email" id="email" placeholder="Email" required>
            <input type="password" name="pswd" id="password" placeholder="Password" required>
            <input type="tel" name="mobileNumber" placeholder="Mobile Number" required>
       

            
            <button type="submit">Sign Up</button>
        </form>
    </div>
    <div class="login">
        <form action="login.jsp">
            <label for="chk" aria-hidden="true">Login</label>
            <input type="email" name="email" id="email" placeholder="Email" required>
            <input type="password" name="pswd" id="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</div>

<script>
    function validateForm() {
        var passwordInput = document.getElementById('password');
        // Password validation: check if it contains at least 6 characters and 1 capital letter
        var password = passwordInput.value;
        if (password.length < 6 || !/[A-Z]/.test(password)) {
            alert('Invalid password. Password should contain at least 6 characters and 1 capital letter.');
            passwordInput.focus();
            return false;
        }
        // Form is valid, allow submission
        return true;
    }
</script>

</body>
</html>
