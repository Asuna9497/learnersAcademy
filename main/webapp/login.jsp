<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>go to menu</title>
</head>
<body bgcolor = "Silver">

<% 
if(request.getParameter("userName").equalsIgnoreCase(request.getParameter("password"))){
out.print("Login successful !"); %>
<form action="mode.jsp">
	<input type="submit" value="Go to menu"/>
</form>

<%} else {
	out.print("Failed to log in ! Check the credentials");
}
%>


</body>
</html>