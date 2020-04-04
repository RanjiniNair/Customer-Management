<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<style>
body {
	margin: 0;
	padding: 0;
	font-family:forte;
	
	background-color: beige;
	background-image:
		url(https://hookagency.com/wp-content/uploads/2015/11/ice-cold-blue-to-yellow-gradient-background.jpg);
}
.container1{
position: absolute;
	top: 50%;
	left: 45%;
	transform: translate(-50%, -50%);
	width: 340px;
	text-align: center;
}
table{
padding: 11%;
border:2px solid #0000004f;
border-radius: 50px;
background: rgba(255, 255, 255, 0.32)

}
tr,td{
padding:15px;
    
    
    letter-spacing: 1px;
}
pre{
position:absolute;
}

.error {
    position: relative;
    bottom: 21px;
    left: 217px;
	color: #ff0000;
	font-style: italic;
	font-size:14px;
}

.register a{
text-decoration:none;
color:black;
    position: absolute;
    left: 50%;

}

input{
width: 100%;
	padding: 4px 20px;
	box-sizing: border-box;
	margin-bottom: -9px;
	border-radius: 15px;
	font-family:'Baloo Thambi 2', cursive;;
font-size: 17px;
	letter-spacing: 1px;}

input[type="submit"],[type="reset"] {
	color: #fff;
	background: #0072ff;
	font-size: 17px;
	cursor: pointer;
}
input[type="submit"]:hover {
	background: #00ace6;
}
input[type="reset"]:hover {
	background: #00ace6;
}
#gen{
padding:1px;
}
h1{
color:black;
text-align:center;
font-style:italic;
}
</style>
</head>
<body>
<h1>Add Account Here</h1><br>
<div class="container1">
<div class="register">
	<form:form action="regCustomer" modelAttribute="customer" method="POST">
		<form:hidden path="id" />
		<table>
			<tbody>
				<tr>
					<td><label>FirstName</label></td>
					<td><form:input path="firstName" />
					<form:errors path="firstName" cssClass="error"/>
					</td>
				</tr>

				<tr>
					<td><label>LastName</label></td>
					<td><form:input path="lastName" />
					<form:errors path="lastName" cssClass="error"/>
					</td>
				</tr>

				<tr>
					<td><label>DateOfBirth</label></td>
					<td><form:input path="dob" type="date" />
					<form:errors path="dob" cssClass="error"/>
					</td>
				</tr>

				<tr>
					<td><label>Gender</label></td>
			      <td><form:radiobutton path="gender" value="M" id="gen"/>Male<form:radiobutton path="gender" value="F" id="gen"/>Female
          			<form:errors path="gender" cssClass="error"/>
          			 </td>		
          			
          		</tr>

				<tr>
					<td><label>Email </label></td>
					<td><form:input path="email" />
					<form:errors path="email" cssClass="error"/>
					</td>
				</tr>

				<tr>
					<td><label>Phone no</label></td>
					<td><form:input path="phn" />
					  <form:errors path="phn" cssClass="error"/>
					
					</td>
				</tr>

				<tr>
					<td><input type="submit" value="Register" class="save" /></td>
					<td><input type="reset" value="Reset" class="save" /></td>
				</tr>
				<tr>
				<td>
			<a href="${pageContext.request.contextPath}/customer/list">BACK TO LIST</a>
		</td></tr>
			</tbody>
		</table>

		

	</form:form>
	</div>
	</div>
</body>
</html>