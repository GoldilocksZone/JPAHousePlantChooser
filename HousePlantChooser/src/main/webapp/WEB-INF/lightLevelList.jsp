
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Light Level List</title>
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
						<td>${lightLevel.comments }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	<c:otherwise>
		No light levels found.
	</c:otherwise>
</c:choose>
</head>
<body>

</body>
</html>