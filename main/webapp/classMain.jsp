<%@page import="learnersAcademy.dao.newClassDao, bean.newClass, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of classes</title>
</head>
<body bgcolor = "Silver">
<h1>List of Classes</h1>
<form action="addClass.jsp">
<input type="text" name="className">
<input type="submit" value="Add new class" >
<br><br>
<%
newClassDao dao = new newClassDao();
List<newClass> clist = dao.getClassesList();
%>
<table border="1" >
<tr>
			<th>ID</th>
			<th>Class Name</th>
			<th>Actions</th>

		</tr>
		<%
		for(newClass c: clist){
		%>
		<tr>
			<td><%=c.getId()%></td>
			<td><%=c.getClassName()%></td>
			<td><a href="editClass.jsp?id=<%=c.getId()%>">edit</a></td>
			<td><a href="deleteClass.jsp?id=<%=c.getId()%>">delete</a></td>
			<td><a href="subjectsAndTeachers.jsp?id=<%=c.getId()%>">Subjects And Teachers</a></td>
			<td><a href="classReport.jsp?class=<%=c.getClassName()%>&id=<%=c.getId()%>">Class report</a></td>
		</tr>
		<%}%>
	</table>
	
	<a href="mode.jsp">home</a>
</form>
</body>
</html>