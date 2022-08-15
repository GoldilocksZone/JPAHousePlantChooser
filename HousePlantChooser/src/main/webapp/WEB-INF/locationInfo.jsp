<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>LIGHT CATEGORY: ${lightCategory }</p>
<p>PLANT LIST:</p>
<c:forEach var="plant" items="${plantList }">
	<p>${plant.commonName }</p>
</c:forEach>
</body>
</html>