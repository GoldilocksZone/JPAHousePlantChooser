
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Devices</title>
</head>
<body>
<h5>Add a device:</h5>
<form action="addDevice.do" method="POST">
	<label for="name">Name</label>
	<input type="text" id="name" name="name" placeholder="HH:mm:ss">
	<label for="owner">Owner</label>
	<input type="text" id="owner" name="owner" placeholder="#">
	<input type="submit" value="Submit">
</form>
<h5>Update a device:</h5>
<form action="updateDevice.do" method="POST">
	<label for="id">Id</label>
	<input type="text" id="id" name="id" placeholder="#">
	<label for="name">Name</label>
	<input type="text" id="name" name="name" placeholder="HH:mm:ss">
	<label for="owner">Owner</label>
	<input type="text" id="owner" name="owner" placeholder="#">
	<input type="submit" value="Submit">
</form>
<h5>Delete a device by id:</h5>
<form action="deleteDevice.do" method="POST">
	<label for="id">Id:</label>
	<input type="text" id="id" name="id" placeholder="#">
	<input type="submit" value="Submit">
</form>
<c:choose>
	<c:when test="${not empty devices }">
		<table>
			<thead>
				<tr>
					<th>Owner</th>
					<th>Name</th>
					<th>Owner</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="device" items="${devices }">
					<tr>	
						<td>${device.id }</td>
						<td>${device.name }</td>
						<td>${device.owner }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	<c:otherwise>
		No devices found.
	</c:otherwise>
</c:choose>
</body>
</html>