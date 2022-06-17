<%@page import="learnersAcademy.dao.newClassDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete class</title>
</head>
<body>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	int row = new newClassDao().deleteClass(id);
	if (row > 0) {
		out.print("Class deleted successfully!");
	} else {
		out.print("Unable to delete!");
	}
	%>
	<form action="classMain.jsp">
		<input type="submit" value="back" />
		<br> <a href="mode.jsp">home</a>
	</form>
</body>
</html>