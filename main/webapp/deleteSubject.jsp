<%@page import="learnersAcademy.dao.SubjectDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete subject</title>
</head>
<body>
<%
int row = new SubjectDao().deleteSubject( Integer.parseInt(request.getParameter("id")));
if(row>0){
	out.print("Subject deleted successfully!");
}else{
	out.print("deletion of subject failed!");
}
%>
<form action="subjectsMain.jsp">
	<input type="submit" value="back"/>
	<br> <a href="mode.jsp">home</a>
</form>
</body>
</html>