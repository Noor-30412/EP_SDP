<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>
  <title>Student Registration Form</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css">
  <style>
    body {
      font-family: arial;
      transition: all 0.5s ease;
      -webkit-transition: all 0.5s ease;
    }

    .container {
      padding: 40px;
      width: 500px;
      margin: 20px auto;
      background-color: #f1f1f1;
    }

    .container h2 {
      text-align: center;
    }

    fieldset {
      border: 1px solid #d4d4d4;
      padding: 20px 10px;
      margin-bottom: 20px;
      border-radius: 8px;
    }

    .input-field {
      display: flex;
      margin-bottom: 15px;
    }

    label {
      margin-right: 25px;
      margin-top: 5px;
      width: 30%;
      text-align: right;
      font-weight: bold;
    }

    .icon {
      background: #fcfcfa;
      color: black;
      min-width: 40px;
      border: 2px solid #e2e2e2;
      border-right: none;
      text-align: center;
      padding: 7px;
    }

    .inputs {
      padding: 3px 10px;
      border: 2px solid #e2e2e2;
      width: 70%;
    }

    .textarea {
      padding: 8px;
      border: 2px solid #e2e2e2;
    }

    .textarea-icon {
      padding-top: 14px;
    }

    .button {
      text-align: center;
    }

    .submit {
      color: white;
      background: #ee9a25;
      padding: 9px 25px;
      margin-right: 10px;
      border: none;
      border-radius: 5px;
      box-shadow: 0 0 5px #c9c9c9;
    }

    .submit:hover {
      background: #d1871e;
    }

    .reset {
      color: white;
      background: #c93232;
      padding: 9px 25px;
      border: none;
      border-radius: 5px;
      box-shadow: 0 0 5px #c9c9c9;
    }

    .reset:hover {
      background: #a32727;
    }

    .city {
      margin-left: -6px;
    }

    .gender {
      margin-left: -30px;
    }

    .state {
      margin-left: -27px;
    }

    .input-field > select {
      width: 72%;
    }
  </style>
</head>

<body>
  <div class="container">
    <h2>Student Registration Form</h2>
     <form action="register_student_db.jsp" method="post">

      <fieldset>
        <div class="input-field">
          <label>First Name</label>
          <i class="fa fa-user icon"></i>
          <input type="text" class="inputs" name="firstName">
        </div>
        <div class="input-field">
          <label>Last Name</label>
          <i class="fa fa-user icon"></i>
          <input type="text" class="inputs" name="lastName">
        </div>
        <div class="input-field">
          <label>Date of Birth</label>
          <i class="fa fa-calendar-alt icon"></i>
          <input type="date" class="inputs" name="dob">
        </div>
        <div class="input-field">
          <label>Email Address</label>
          <i class="fa fa-envelope icon"></i>
          <input type="email" class="inputs" name="email">
        </div>
        <div class="input-field">
          <label>Mobile Number</label>
          <i class="fa fa-phone icon"></i>
          <input type="tel" class="inputs" name="mobileNumber">
        </div>
        <div class="input-field">
          <label>Alternate Mobile Number</label>
          <i class="fa fa-phone icon"></i>
          <input type="tel" class="inputs" name="alternateMobileNumber">
        </div>
        <div class="input-field">
          <label class="gender">Gender</label>
          <select name="gender" class="inputs">
            <option value="male">Male</option>
            <option value="female">Female</option>
          </select>
        </div>
        <div class="input-field">
          <label>Address</label>
          <i class="fa fa-map-marker-alt icon"></i>
          <textarea class="textarea"></textarea>
        </div>
        <div class="input-field">
          <label>City</label>
          <i class="fa fa-map icon"></i>
          <input type="text" class="inputs" name="city">
        </div>
        <div class="input-field">
          <label>Pincode</label>
          <i class="fa fa-map-pin icon"></i>
          <input type="text" class="inputs" name="pincode">
        </div>
        <div class="input-field">
          <label>State</label>
          <i class="fa fa-map-marked-alt icon"></i>
          <select name="state" class="inputs state">
             <option value="Andhra Pradesh">Andhra Pradesh</option>
            <option value="Arunachal Pradesh">Arunachal Pradesh</option>
            <option value="Assam">Assam</option>
            <option value="Bihar">Bihar</option>
            <option value="Chhattisgarh">Chhattisgarh</option>
            <option value="Goa">Goa</option>
            <option value="Gujarat">Gujarat</option>
            <option value="Haryana">Haryana</option>
            <option value="Himachal Pradesh">Himachal Pradesh</option>
            <option value="Jharkhand">Jharkhand</option>
            <option value="Karnataka">Karnataka</option>
            <option value="Kerala">Kerala</option>
            <option value="Madhya Pradesh">Madhya Pradesh</option>
            <option value="Maharashtra">Maharashtra</option>
            <option value="Manipur">Manipur</option>
            <option value="Meghalaya">Meghalaya</option>
            <option value="Mizoram">Mizoram</option>
            <option value="Nagaland">Nagaland</option>
            <option value="Odisha">Odisha</option>
            <option value="Punjab">Punjab</option>
            <option value="Rajasthan">Rajasthan</option>
            <option value="Sikkim">Sikkim</option>
            <option value="Tamil Nadu">Tamil Nadu</option>
            <option value="Telangana">Telangana</option>
            <option value="Tripura">Tripura</option>
            <option value="Uttar Pradesh">Uttar Pradesh</option>
            <option value="Uttarakhand">Uttarakhand</option>
            <option value="West Bengal">West Bengal</option>
          </select>
        </div>
        
        
        <div class="input-field">
          <label>Hobbies</label>
          <i class="fa fa-star icon"></i>
          <input type="text" class="inputs" name="hobbies">
        </div>
      </fieldset>

      <div class="button">
        <button type="submit" class="submit">Submit</button>
        <button type="reset" class="reset">Reset</button>
      </div>
    </form>
  </div>
</body>

</html>
