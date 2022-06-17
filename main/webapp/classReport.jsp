<%@page import="learnersAcademy.dao.newClassDao"%>
<%@page import="bean.newClass"%>
<%@page import="learnersAcademy.dao.SubjectAndTeacherDao"%>
<%@page import="bean.SubjectAndTeacher"%>
<%@page import="learnersAcademy.dao.StudentDao, bean.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>class report</title>
</head>
<body>
	<h1>
		Report of class:
		<%=request.getParameter("class").toUpperCase()%></h1>
	<form>

		<%
		
		List<SubjectAndTeacher>list= new SubjectAndTeacherDao().getSubAndTeacherById(Integer.parseInt(request.getParameter("id")));%>
		<h2>Subjects and teachers list</h2>

		<table border="1">
			<tr>
				<th>sr.no</th>
				<th>Subject</th>
				<th>Teacher Name</th>
			</tr>

			<%
			int count = 1;

			for (SubjectAndTeacher s : list) {
			%>
			<tr>
				<td><%=count++%></td>
				<td><%=s.getSubject()%></td>
				<td><%=s.getTeacher()%></td>
			</tr>

			<%
		}
		%>
		</table>


		<%
		List<Student> sList = new StudentDao().getStudentListByClass(request.getParameter("class"));
		%>
		<h2>Students List</h2>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Address</th>
				<th>Phone</th>
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
			</tr>
			<%
			}
			%>
		</table>
		<br> <a href="mode.jsp">home</a>
	</form>
</body>
</html>