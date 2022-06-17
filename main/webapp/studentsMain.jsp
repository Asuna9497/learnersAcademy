<%@page import="learnersAcademy.dao.StudentDao"%>
<%@page import="bean.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of student</title>
</head>
<body>
	<h1>List Of students</h1>
	<form action="insertStudent.jsp">
		<input type="submit" value="Add new student"> <br></br>

		<%
		List<Student> sList = new StudentDao().getStudentList();
		%>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Class</th>
				<th>Actions</th>
			</tr>

			<%
			for (Student s : sList) {
			%>
			<tr>
				<td><%=s.getSid()%></td>
				<td><%=s.getFirstName()%></td>
				<td><%=s.getLastName()%></td>
				<td><%=s.getAddress()%></td>
				<td><%=s.getPhone()%></td>
				<td><%=s.getClasses()%></td>
				<td><a
					href="editStudent.jsp?id=<%=s.getSid()%>&firstName=<%=s.getFirstName()%>&lastName=<%=s.getLastName()%>&address=<%=s.getAddress()%>
&phone=<%=s.getPhone()%>&class=<%=s.getClass()%>">edit</a></td>
				<td><a href="deleteStudent.jsp?id=<%=s.getSid()%>">delete</a></td>
			</tr>
			<%} %>
		</table>
		<a href="mode.jsp">home</a>
	</form>
</body>
</html>