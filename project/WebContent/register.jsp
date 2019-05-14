<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="regist.css">
<link href="https://fonts.googleapis.com/css?family=Pompt:300,400" rel="stylesheet">
<link rel="shortcut icon" href="Regist.png">
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<div class="container auth-container">
		<div class="section-cards">
			<div class="section-card-left">
				<div class="card">
					<div class="card-content">
						<h3 class="auth-header">Register</h3>
						<form action="loginRegister" method="post">



							<label>UserName :</label> 
							<input type="text" name="username" class="auth-input"> 
							<label>Name :</label> 
							<input type="text" name="name" class="auth-input"> 
							<label>Password:</label> 
							<input type="password" name="password1" class="auth-input">
							<label>Re-Password :</label> 
							<input type="password" name="password2" class="auth-input"> 
							<input type="submit" name="submit" value="register" class="auth-input">
							
							<a href="home.html">HOME</a>


						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>