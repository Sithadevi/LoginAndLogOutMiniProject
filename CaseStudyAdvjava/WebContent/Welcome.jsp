<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<!-- validation--> 
	<!--response.setHeader is restrict  for not going to backpage like for example after logout not go to welcome page -->
	
	<%
		
		response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");//http>1.0 only its working
	
			//response.setHeader("pragma", "no-cache");< 1.0
	
		if(session.getAttribute("user")==null)
		{
			response.sendRedirect("login.jsp");
		}
	
	%>
	
	
	<h2>welcome  to ${user}</h2><br>
	<div class="container">
		<a href="Welcome.jsp">Home</a>
		<a href="about.jsp">About Us</a>
		<a href="admin.jsp">Admin</a>
		
	</div><br>
	<form action="logout">
		<input type="submit" value="logout">
	</form>
	
</body>
</html>