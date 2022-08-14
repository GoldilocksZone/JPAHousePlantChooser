
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users</title>
</head>
<body>
<h5>Add a user:</h5>
<form action="addUser.do" method="POST">
	<label for="firstName">First Name</label>
	<input type="text" id="firstName" name="firstName" placeholder="First Name">
	<label for="lastName">Last Name</label>
	<input type="text" id="lastName" name="lastName" placeholder="Last Name">
	<input type="submit" value="Submit">
</form>
<h5>Update a user:</h5>
<form action="updateUser.do" method="POST">
	<label for="id">Id</label>
	<input type="text" id="id" name="id" placeholder="#">
	<label for="firstName">First Name</label>
	<input type="text" id="firstName" name="firstName" placeholder="First Name">
	<label for="lastName">Last Name</label>
	<input type="text" id="lastName" name="lastName" placeholder="Last Name">
	<input type="submit" value="Submit">
</form>
<h5>Delete a user by id:</h5>
<form action="deleteUser.do" method="POST">
	<label for="id">Id:</label>
	<input type="text" id="id" name="id" placeholder="#">
	<input type="submit" value="Submit">
</form>
<c:choose>
	<c:when test="${not empty users }">
		<table>
			<thead>
				<tr>
					<th>User Id</th>
					<th>First Name</th>
					<th>Last Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users }">
					<tr>	
						<td>${user.id }</td>
						<td>${user.firstName }</td>
						<td>${user.lastName }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	<c:otherwise>
		No users found.
	</c:otherwise>
</c:choose>
</body>
</html>