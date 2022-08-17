<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>House Plant Chooser</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="css/styles.css"/>
<link rel="stylesheet" href="css/navbar.css"/>

</head>
<body>
<jsp:include page="navbar.jsp"/>

<div class="center-element">
<div class="dropdown">
  <button class="dropbtn rounded-pill">My Plant Spots</button>
  <div class="dropdown-content">
  	<c:forEach var="device" items="${devices }">
   		<a href="viewLocation.do?deviceId=<c:out value="${device.id }"/>">${device.name }</a>
    </c:forEach>
  </div>
</div>
</div>

</body>
</html>