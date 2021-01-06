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

<h2 style="color:red;" id="error"><c:out value="${error}"/></h2>
		<form action="result" method="post">
			<h4>Dojo Survey</h4>
			<br>

	    			<span>Your Name</span>

	  			<input type="text" class="form-control" name="name"><br>
			    	<label>Dojo Location</label>
			  <select name="location">
			    	<option value="USA">USA</option>
			    	<option value="San Jose">San Jose</option>
			  </select><br>
			
			    	<label>Favorite Language</label>
			  <select name="language">
			    	<option value="Python">Python</option>
			    	<option value="Java">Java</option>
			  </select><br>
			
			   	 <span >Comment (Optional)</span><br>
			  <textarea name="comment"></textarea><br>
			<br>
			<button type="submit">Submit</button>
		</form>
</body>
</html>