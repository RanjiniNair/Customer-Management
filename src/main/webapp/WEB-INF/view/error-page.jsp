<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: forte;
	background-color: beige;
	background-image:
		url(https://hookagency.com/wp-content/uploads/2015/11/ice-cold-blue-to-yellow-gradient-background.jpg);
}
h1{
margin: 0 0 50px;
	color: #111b23;
	font-family:forte;
	font-size: 38px;
}
h2{
font-family:forte;
}
#add1 {
	position: absolute;
	top: 70%;
	left: 59%;
	box-sizing: border-box;
	margin-bottom: -9px;
	border-radius: 25px;
}
div{
position:absolute;
    top: 88px;
    left: 38%;
}
input[type="button"] {
	color: #fff;
	padding:3px;
	background:#6caa95;
	font-size: 17px;
	cursor: pointer;
}

input[type="button"]:hover {
	background: #11ddca;
}
</style>
</head>
<body>
<div >
<h1>Invalid Credentials</h1>
<h2>Please try again <input type="button" value="Click here"
				onclick="window.location.href='showloginForm';return false;"
				class="add-button" id="add1"/></h2>
</div>
</body>
</html>