<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>selecting mode</title>
</head>
<body>
<%
	if (null != request.getParameter("Classes")) {
		response.sendRedirect("classMain.jsp");
	}else if (null != request.getParameter("Students")) {
		response.sendRedirect("studentsMain.jsp");
	} else if (null != request.getParameter("Subjects")) {
		response.sendRedirect("subjectsMain.jsp");
	} else if (null != request.getParameter("Teachers")) {
		response.sendRedirect("teacherMain.jsp");
	} else {
		response.sendRedirect("logout.jsp");
	}
	%>
</body>
</html>