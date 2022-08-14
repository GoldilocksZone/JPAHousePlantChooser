
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Readings</title>
</head>
<body>
<h5>Add a reading:</h5>
<form action="addReading.do" method="POST">
	<label for="date">Date</label>
	<input type="text" id="date" name="date" placeholder="YYYY-MM-DD">
	<label for="time">Time</label>
	<input type="text" id="time" name="time" placeholder="HH:mm:ss">
	<label for="deviceId">Device Id</label>
	<input type="text" id="deviceId" name="deviceId" placeholder="#">
	<label for="reading">Reading (lumens)</label>
	<input type="text" id="reading" name="reading" placeholder="####">
	<input type="submit" value="Submit">
</form>
<h5>Update a reading:</h5>
<form action="updateReading.do" method="POST">
	<label for="id">Id</label>
	<input type="text" id="id" name="id" placeholder="#">
	<label for="date">Date</label>
	<input type="text" id="date" name="date" placeholder="YYYY-MM-DD">
	<label for="time">Time</label>
	<input type="text" id="time" name="time" placeholder="HH:mm:ss">
	<label for="deviceId">Device Id</label>
	<input type="text" id="deviceId" name="deviceId" placeholder="#">
	<label for="reading">Reading (lumens)</label>
	<input type="text" id="reading" name="reading" placeholder="####">
	<input type="submit" value="Submit">
</form>
<h5>Delete a reading by id:</h5>
<form action="deleteReading.do" method="POST">
	<label for="id">Id:</label>
	<input type="text" id="id" name="id" placeholder="#">
	<input type="submit" value="Submit">
</form>
<h5>Reading List:</h5>
<c:choose>
	<c:when test="${not empty readings }">
		<table>
			<thead>
				<tr>
					<th>Reading Number</th>
					<th>Device Id</th>
					<th>Date</th>
					<th>Time</th>
					<th>Reading</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="reading" items="${readings }">
					<tr>	
						<td>${reading.id }</td>
						<td>${reading.deviceId }</td>
						<td>${reading.date }</td>
						<td>${reading.time }</td>
						<td>${reading.reading }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	<c:otherwise>
		No readings found.
	</c:otherwise>
</c:choose>

</body>
</html>