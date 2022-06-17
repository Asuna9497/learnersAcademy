<%@page import="learnersAcademy.dao.TeacherDao"%>
<%@page import="bean.Teacher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of teachers</title>
</head>
<body>
	<h1>list of teachers</h1>
	<form action="insertTeacher.jsp">
		<input type="submit" value="Add new Teacher" />
		<br></br>

		<%
		List<Teacher> tList = new TeacherDao().getTeacherList();
		%>

		<table border="1">
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Designation</th>
				<th>Actions</th>
			</tr>

			<%
			for (Teacher t : tList) {
			%>
			<tr>
				<td><%=t.getTid()%></td>
				<td><%=t.getFirstName()%></td>
				<td><%=t.getLastName()%></td>
				<td><%=t.getAddress()%></td>
				<td><%=t.getPhone()%></td>
				<td><%=t.getDesignation()%></td>
				<td><a
					href="editTeacher.jsp?id=<%=t.getTid()%>&firstName=<%=t.getFirstName()%>&lastName=<%=t.getLastName()%>&address=<%=t.getAddress()%>
&phone=<%=t.getPhone()%>&designation=<%=t.getDesignation()%>">edit</a></td>
				<td><a href="deleteTeacher.jsp?id=<%=t.getTid()%>">delete</a></td>
			</tr>

			<%} %>

		</table>
		
		<a href="mode.jsp">home</a>

	</form>
</body>
</html>