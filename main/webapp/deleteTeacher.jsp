<%@page import="learnersAcademy.dao.TeacherDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete teacher</title>
</head>
<body>
	<%
if(new TeacherDao().deleteTeacher(Integer.parseInt(request.getParameter("id")))>0){
	out.print("teacher record deleted successfully!");

}else{
	out.print("Failed to delete teacher! ");

}
%>
	<form action="teacherMain.jsp">
		<input type="submit" value="back">
		<br> <a href="mode.jsp">home</a>
	</form>
</body>
</html>