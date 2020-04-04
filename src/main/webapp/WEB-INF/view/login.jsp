<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: forte;
	background-color: beige;
	background-image:
		url(https://hookagency.com/wp-content/uploads/2015/11/ice-cold-blue-to-yellow-gradient-background.jpg);
}
.head{
width:100%;
height:30%;
}
.head a{
font-family: forte;
    font-size: 27px;
    padding: 10px;
    margin-left: 51px;
    position: relative;
    top: 40px;
}

section {
	width: 100%;
	height: 100%;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 340px;
	text-align: center;
}

.login {
	position: relative;
	box-sizing: border-box;
	padding: 60px 12px;
	transition: .5s;
}

.login:hover {
	background: rgba(255, 255, 255, .1);
	box-shadow: 0 0 20px rgba(0, 0, 0, .2);
}

.login h1 {
	margin: 0 0 50px;
	color: #0c443f;
	font-size: 38px;
}

.login input {
	display: block;
	width: 100%;
	padding: 10px 20px;
	box-sizing: border-box;
	margin-bottom: -9px;
	border-radius: 25px;
	outline: none;
	font-size: 17px;
	letter-spacing: 1px;
	color: #273f4a;
	background: rgba(255, 255, 255, 0);
	font-family: 'Baloo Thambi 2', cursive;
}

.login input::placeholder {
	color: white;
}

.login input[type="submit"] {
	color: #fff;
	background: #0072ff;
	font-size: 23px;
	cursor: pointer;
}

.login input[type="submit"]:hover {
	background: #00ace6;
}
</style>
</head>
<body>
	<section>
	<!-- <div class="head">
	
	<a href="${pageContext.request.contextPath}/customer/showFormForAdd">Register</a> 
	<a href="${pageContext.request.contextPath}/customer/showloginForm">Login</a>
	
	</div>-->
		<div class="container">
		
			<div class="login">
				<h1>LOGIN</h1>
				<form action="loginCustomer" modelAttribute="customer" method="POST">
					<!--<form:hidden path="id" />-->


					<input type="text" name="username" placeholder="UserName" /><br>
					<br> <input type="password" name="password"
						placeholder="Password" /><br>
					<br>
					<center>
						<input type="submit" value="Login" class="save" />
					</center>

				</form>
			</div>
		</div>
	</section>
</body>
</html>