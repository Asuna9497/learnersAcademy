<%@page
	import="learnersAcademy.dao.StudentDao, bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>editing student</title>
</head>
<body>
	<%
	Student std = new Student();
	std.setSid(Integer.parseInt(request.getParameter("id")));
	std.setFirstName(request.getParameter("First Name"));
	std.setLastName(request.getParameter("Last Name"));
	std.setAddress(request.getParameter("Address"));
	std.setPhone(request.getParameter("Phone"));
	std.setClasses(request.getParameter("class"));

	int row = new StudentDao().updateStudent(std);

	if (row > 0) {
		out.print("Successfully updated student record!");
		response.sendRedirect("studentsMain.jsp");

	} else {
		out.print("Failed to update student record!");

	}
	%>
<br> <a href="mode.jsp">home</a>
</body>
</html>