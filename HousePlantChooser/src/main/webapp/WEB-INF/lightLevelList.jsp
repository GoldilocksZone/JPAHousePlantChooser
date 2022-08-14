
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Light Level List</title>
</head>
<body>
<h5>Add a light level:</h5>
<form action="addLightLevel.do" method="POST">
	<label for="category">Category</label>
	<input type="text" id="category" name="category" placeholder="Category">
	<label for="min">Min</label>
	<input type="text" id="min" name="min" placeholder="#">
	<label for="max">Max</label>
	<input type="text" id="max" name="max" placeholder="#">
	<label for="notes">Notes</label>
	<input type="text" id="notes" name="notes" placeholder="Notes">
	<input type="submit" value="Submit">
</form>
<h5>Update a light level:</h5>
<form action="updateLightLevel.do" method="POST">
	<label for="id">Id</label>
	<input type="text" id="id" name="id" placeholder="#">
	<label for="category">Category</label>
	<input type="text" id="category" name="category" placeholder="Category">
	<label for="min">Min</label>
	<input type="text" id="min" name="min" placeholder="#">
	<label for="max">Max</label>
	<input type="text" id="max" name="max" placeholder="#">
	<label for="notes">Notes</label>
	<input type="text" id="notes" name="notes" placeholder="Notes">
	<input type="submit" value="Submit">
</form>
<h5>Delete a light level by id:</h5>
<form action="deleteLightLevel.do" method="POST">
	<label for="id">Id:</label>
	<input type="text" id="id" name="id" placeholder="#">
	<input type="submit" value="Submit">
</form>
<c:choose>
	<c:when test="${not empty lightLevels }">
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Category</th>
					<th>Min</th>
					<th>Max</th>
					<th>Notes</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="lightLevel" items="${lightLevels }">
					<tr>	
						<td>${lightLevel.id }</td>
						<td>${lightLevel.category }</td>
						<td>${lightLevel.min }</td>
						<td>${lightLevel.max }</td>
						<td>${lightLevel.notes }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	<c:otherwise>
		No light levels found.
	</c:otherwise>
</c:choose>
</body>
</html>