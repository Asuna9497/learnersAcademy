<%@page import="learnersAcademy.dao.SubjectDao, bean.Subject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add and display list of subjects</title>
</head>
<body>
	<h1>list of subjects</h1>
	<form action="insertSubject.jsp">
		<input type="text" name="subjectName"> <input type="submit"
			value="add new subject" />
	</form>
	<%
	List<Subject> slist = new SubjectDao().getSubjectsList();
	%>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Subject Name</th>
			<th>Actions</th>
		</tr>
		<%
		for (Subject s : slist) {
		%>
		<tr>
			<td><%=s.getId()%></td>
			<td><%=s.getSubjectName()%></td>
			<td><a href="editSubject.jsp?id=<%=s.getId()%>">edit</a></td>
			<td><a href="deleteSubject.jsp?id=<%=s.getId()%>">delete</a></td>
			<td></td>
		</tr>
		<%}%>
	</table>
<a href="mode.jsp">home</a>
</body>
</html>