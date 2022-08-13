
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Devices</title>
<c:choose>
	<c:when test="${not empty devices }">
		<table>
			<thead>
				<tr>
					<th>Device Id</th>
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
</head>
<body>

</body>
</html>