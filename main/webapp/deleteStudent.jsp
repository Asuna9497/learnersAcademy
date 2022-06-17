<%@page import="learnersAcademy.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete student</title>
</head>
<body>
	<%
	int row = new StudentDao().deleteStudent(Integer.parseInt(request.getParameter("id")));

	if (row > 0) {
		out.print("student record deleted successfully!");
	} else {
		out.print("Failed to delete student! ");
	}
	%>

	<form action="studentsMain.jsp">
		<input type="submit" value="back">
		<br> <a href="mode.jsp">home</a>
	</form>

</body>
</html>