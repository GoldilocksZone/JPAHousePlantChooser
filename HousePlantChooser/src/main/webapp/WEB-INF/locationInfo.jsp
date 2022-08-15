<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${device.name }</title>
<style>
table {
	vertical-align: top;
}
</style>
</head>
<body>
<table>
	<tbody>
		<tr>
			<td>Location:</td>
			<td>${device.name }</td>
		</tr>
		<tr>
			<td>Light Category:</td>
			<td>${lightCategory }</td>
		</tr>
		<tr>
			<td>Plants that will thrive here:</td>
			<td>
				<ul>
					<c:forEach var="plant" items="${plantList }">
						<li>${plant.commonName }</li>
					</c:forEach>
				</ul>
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>