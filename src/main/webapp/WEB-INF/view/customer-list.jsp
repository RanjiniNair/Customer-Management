<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
<style>
body {
	margin: 0;
	padding: 0;
	background-color: beige;
	background-image:
		url(https://hookagency.com/wp-content/uploads/2015/11/ice-cold-blue-to-yellow-gradient-background.jpg);
}
h1{
font-family:  'Noto Serif', serif;
position: absolute;
    color:#051c28 ;

    left: 4%;
    top: 3%;
}
table {
	width: 95%;
	border-collapse: collapse;
	margin-left: 36px;
	margin-top: 110px;
}

th, td {
	text-align: left;
	padding: 16px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
font-family: 'Noto Serif', serif;
	background-color: #204060;
	color: white;
}
a{
text-decoration:none;
font-family:sans-serif;
font-size:18px;
color:#001a33;
}
#add {
	position: absolute;
	top: 4%;
	left: 82%;
	box-sizing: border-box;
	margin-bottom: -9px;
	border-radius: 25px;
	padding:8px;
}

#add1 {
	position: absolute;
	top: 4%;
	left: 92%;
	box-sizing: border-box;
	margin-bottom: -9px;
	border-radius: 25px;
		padding:8px;
	
}

#search {
	position: absolute;
	left: 57%;
	top: 30px;
}

#search input {
	padding: 10px 32px;
	box-sizing: border-box;
	margin-bottom: -9px;
	border-radius: 25px;
}

#search input[type="submit"] {
	color: #fff;
	background: #245872;
	font-size: 12px;
	cursor: pointer;
}

#search input[type="submit"]:hover {
	background: #00ace6;
}

input[type="button"] {
	color: #fff;
	background: #245872;
	font-size: 13px;
	cursor: pointer;
}

input[type="button"]:hover {
	background: #00ace6;
}
</style>
</head>
<body>

<h1>Successfully logged in</h1>
<br>
	<table>
		<tr>
			<th>Id No</th>
			<th>Firstname</th>
			<th>LastName</th>
			<th>DOB</th>
			<th>Gender</th>
			<th>Email</th>
			<th>Phone No</th>
			<th>Action</th>

			<c:forEach var="tempCustomer" items="${customers}">

				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="customerId" value="${tempCustomer.id}" />
				</c:url>

				<c:url var="deleteLink" value="/customer/delete">
					<c:param name="customerId" value="${tempCustomer.id}" />
				</c:url>

				<tr>
					<td>${tempCustomer.id}</td>
					<td>${tempCustomer.firstName}</td>
					<td>${tempCustomer.lastName}</td>
					<td>${tempCustomer.dob}</td>
					<td>${tempCustomer.gender}</td>
					<td>${tempCustomer.email}</td>
					<td>${tempCustomer.phn}</td>
					<td><a href="${updateLink}">EDIT</a> <a href="${deleteLink}"
						onclick="if(!(confirm('Are u sure to delete?'))) return false">DELETE</a>
					</td>
			</c:forEach>
		</tr>
		<tr>
			<input type="button" value="NEW CUSTOMER"
				onclick="window.location.href='showFormForAdd';return false;"
				class="add-button" id="add" />
			<input type="button" value="LOGOUT"
				onclick="window.location.href='showloginForm';return false;"
				class="add-button" id="add1" />
		</tr>

	</table>
	<form action="searchCustomer" id="search">
		<input type="text" name="val" placeholder="Enter customer name or id ">
		<input type="submit" class="button" value="search">
	</form>
	</button>
</body>
</html>