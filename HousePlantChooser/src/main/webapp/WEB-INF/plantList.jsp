
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>House Plants</title>
</head>
<body>
<h5>Add a plant:</h5>
<form action="addPlant.do" method="POST">
	<label for="scientificName">Scientific Name</label>
	<input type="text" id="scientificName" name="scientificName" placeholder="Scientific Name">
	<label for="commonName">Common Name</label>
	<input type="text" id="commonName" name="commonName" placeholder="Common Name">
	<label for="lightRequirement">Light Requirement</label>
	<input type="text" id="lightRequirement" name="lightRequirement" placeholder="#">
	<input type="submit" value="Submit">
</form>
<h5>Update a plant:</h5>
<form action="updatePlant.do" method="POST">
	<label for="id">Id</label>
	<input type="text" id="id" name="id" placeholder="#">
	<label for="scientificName">Scientific Name</label>
	<input type="text" id="scientificName" name="scientificName" placeholder="Scientific Name">
	<label for="commonName">Common Name</label>
	<input type="text" id="commonName" name="commonName" placeholder="Common Name">
	<label for="lightRequirement">Light Requirement</label>
	<input type="text" id="lightRequirement" name="lightRequirement" placeholder="#">
	<input type="submit" value="Submit">
</form>
<h5>Delete a plant by id:</h5>
<form action="deletePlant.do" method="POST">
	<label for="id">Id:</label>
	<input type="text" id="id" name="id" placeholder="#">
	<input type="submit" value="Submit">
</form>
<c:choose>
	<c:when test="${not empty plants }">
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Scientific Name</th>
					<th>Common Name</th>
					<th>Light Requirement</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="plant" items="${plants }">
					<tr>
						<td>${plant.id }</td>
						<td>${plant.scientificName }</td>
						<td>${plant.commonName }</td>
						<td>${plant.lightRequirement }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	<c:otherwise>
		No plants found.
	</c:otherwise>
</c:choose>
</body>
</html>