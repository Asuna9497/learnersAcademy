<%@page import="bean.newClass"%>
<%@page import="learnersAcademy.dao.newClassDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add class</title>
</head>
<body>
<%
newClass c = new newClass();
if(null !=request.getParameter("className")){
	c.setClassName(request.getParameter("className"));
	 int row = new newClassDao().addNewClass(c);
	 if(row>0){
			out.print("Insertion of class is sucessful");
		}
		else{
			out.print("Insertion failed");
		}
} else {
	out.print("Insertion failed! enter class name!");
}
%>

	<form action="classMain.jsp">
		<input type="submit" value="back" />
		<a href="mode.jsp">home</a>
	</form>
</body>
</html>