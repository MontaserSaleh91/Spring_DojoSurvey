<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Home page</title>
</head>
<body>
		<h4 class="display-4"><small><u>Submitted Info</u></small></h4>
		<h5>Name: <c:out value="${name}"/> </h5>
		<h5>Dojo Location: <c:out value="${location}"/> </h5>
		<h5>Favorite Language: <c:out value="${language}"/> </h5>
		<h5>Comment: <c:out value="${comment}"/> </h5>
	
</body>
</html>