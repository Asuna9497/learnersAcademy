<%@page import="bean.newClass, learnersAcademy.dao.newClassDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>saving class</title>
</head>
<body>
	<%
	newClass c = new newClass();
	c.setId(Integer.parseInt(request.getParameter("id")));
	c.setClassName(request.getParameter("className"));
	if (null != request.getParameter("id") && null!=request.getParameter("className")) {
		int row = new newClassDao().updateClass(c);
		if (row > 0) {
			out.print("updated successfully!");
			response.sendRedirect("classMain.jsp");
		} else {
			out.print("Failed to update class name!");
		}
	} else {
		out.print("Failed to update! enter class name!");
	%>
	<form action="classMain.jsp">
		<input type="submit" value="back" /> <br>
		<a href="mode.jsp">home</a>
	</form>
	<%
	}
	%>
</body>
</html>