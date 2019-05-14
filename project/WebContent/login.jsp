<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" type="text/css" href="button.css">
<link rel="stylesheet" type="text/css" href="regist.css">
<meta charset="ISO-8859-1">
</head>
<body background="BG_Login.jpg">
	<div align="center">
		<div class="container auth-container">
			<div class="section-cards">
				<div class="section-card-left">
					<div class="card1">
						<div class="card-content">
							<form action="loginRegister" method="post">

									<h3 style="color: red">${message}</h3>
									<h3 style="color: green">${successMessage }</h3>
									
									<h3 Style="color: red;">Login page</h3>
									
									<label>UserName :</label>
									<input type="text" name="username" class="auth-input">
								
									<label>Password :</label>
									<input type="password" name="password1" class="auth-input">
								
									<input type="submit" name="submit" value="login" class="auth-input">
									
									<a href="register.jsp">Registration</a>
									<a href="home.html">HOME</a>
								

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
