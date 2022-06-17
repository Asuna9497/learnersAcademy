<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit class</title>
</head>
<body bgcolor = "Silver">
<h1>edit class name</h1>
<form action="saveClass.jsp">
<input type="text" name="className">
<input type="hidden" name="id" value=<%= request.getParameter("id")%>>
<input type="submit" value="edit"/>
<br> <a href="mode.jsp">home</a>
</form>
</body>
</html>