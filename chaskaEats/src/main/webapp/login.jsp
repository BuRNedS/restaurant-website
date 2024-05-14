<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #a8837d;
        background-image: url(img/singup_bg.png);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .login-container {
        background-color: #c5a9a4;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    input[type="text"],
    input[type="password"],
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: white;
        cursor: pointer;
    }
</style>
</head>
<body>

<input type="hidden" id="status" value= "<%= request.getAttribute("status") %>">

<div class="login-container">
    <h2>Sign In</h2>
    <form method="post" action="login" id="loginForm" >
        <input type="text" name="username" id="username" name="username" placeholder="Your Name" required>
        <input type="password" name="password" id="password" name="password" placeholder="Password" required>
        <input type="submit" name="signin" value="Login">
    </form>
</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type= text/javascript>
	var status= document.getElementById("status").value;
	if(status== "failed"){
		swal("Sorry","Wrong Username Or Password, Try Again","error");
	}
	if(status== "InvalidEmail"){
		swal("Sorry","Please Enter Valid Email","error");
	}
	if(status== "InvalidPassword"){
		swal("Sorry","Please Enter the Correct Password","error");
	}
	

</script>

</body>
</html>