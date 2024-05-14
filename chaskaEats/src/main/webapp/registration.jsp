<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGNUP Page</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <style>
        body {

            margin: 0;
            padding: 0;
            background-color: #c5a9a4;
            background-image: url(img/singup_bg.png);
        }

        .signup-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px 40px;
            background-color: #c5a9a4;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #c5a9a4;
            transition: background-color 0.5s ease;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-family: "Pacifico", cursive;
            font-weight: 400;
            font-style: normal;
        }

        form {
            display: grid;
            gap: 10px;

        }

        label {
            font-weight: bold;
        }

        input,
        select,
        button {
            width: 100%;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;  
        }

        button {
            background-color: #0056b3;
            color: white;
            cursor: pointer;
        }

        button:hover {
            background-color:rgb(7, 78, 51);
        }
    </style>
</head>

<body>
    <div class="signup-container">
        <h1>Join the Chaska Family!</h1>
        <form method="post" action="register">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required="required">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required="required">

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" required="required">

            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required="required">

            <label for="membership">Membership Type:</label>
            <select id="membership" name="membership">
                <option value="regular">Regular</option>
                <option value="gold">Gold</option>
                <option value="platinum">Platinum</option>
            </select>

            <label for="password">Password:</label>
            <input type="password" id="password" name="pass" required="required">

            <button type="submit" name="signup">Sign Up</button>
        </form>
        <div class="signup-image">
						
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
    </div>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type= text/javascript>
	var status= document.getElementById("status").value;
	if(status== "success"){
		swal("Congrats","Account Created Successfully","success");
	}
	if(status== "InvalidName"){
		swal("Sorry","Enter Valid Name","error");
	}
	if(status== "InvalidPass"){
		swal("Sorry","Enter Valid Password","error");
	}
	if(status== "InvalidMail"){
		swal("Sorry","Enter Valid MailId","error");
	}
	if(status== "InvalidContact"){
		swal("Sorry","Enter Valid Contact Number","error");
	}
	
	

</script>
</body>

</html>