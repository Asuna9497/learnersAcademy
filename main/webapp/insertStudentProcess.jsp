<%@page import="learnersAcademy.dao.StudentDao, bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>save student</title>
</head>
<body>
	<%
	Student std = new Student();
	std.setFirstName(request.getParameter("First Name"));
	std.setLastName(request.getParameter("Last Name"));
	std.setAddress(request.getParameter("Address"));
	std.setPhone(request.getParameter("Phone"));
	std.setClasses(request.getParameter("SelectClass"));
	
	int row = new StudentDao().addStudent(std);
	if (row > 0) {
		out.print("Successfully inserted student record!");
	} else {
		out.print("Failed to insert student record!");
	}
	%>

	<form action="studentsMain.jsp">
		<input type="submit" value="back" />
		<br> <a href="mode.jsp">home</a>
	</form>

</body>
</html>