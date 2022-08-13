<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>House Plant Chooser</title>
</head>
<body>
<a href="viewPlants.do">View all house plants</a>
<a href="viewReadings.do">View all readings</a>
<a href="viewDevices.do">View all devices</a>
<a href="viewLightLevels.do">View all light levels</a>
<a href="viewUsers.do">View all users</a>
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
</body>
</html>