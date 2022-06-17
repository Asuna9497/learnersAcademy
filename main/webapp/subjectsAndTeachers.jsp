<%@page
	import="learnersAcademy.dao.SubjectAndTeacherDao, learnersAcademy.dao.TeacherDao, bean.Teacher, learnersAcademy.dao.SubjectDao, bean.Subject, bean.SubjectAndTeacher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add subject and teacher</title>
</head>
<body>

	<%
	List<Subject> list = new SubjectDao().getSubjectsList();
	List<Teacher> tList = new TeacherDao().getTeacherList();
	%>

	<h1>Add subject and teacher</h1>

	<form action="insertSubAndTeacher.jsp">

		<input type="hidden" name="id" value=<%=request.getParameter("id")%>>
		<label>Select Subject</label> <select name="Select Subject">
			<%
			for (Subject s : list) {
			%>
			<option value=<%=s.getSubjectName()%>><%=s.getSubjectName()%></option>
			<%
			}
			%>
		</select> <br></br> <label>Select Teacher</label> <select name="Select Teacher">
			<%
			for (Teacher s : tList) {
			%>
			<option value=<%=s.getFirstName()%>><%=s.getFirstName()%></option>
			<%
			}
			%>
		</select> <br></br> <input type="submit" value="Save"> <br></br>
		<%
		List<SubjectAndTeacher> sList = new SubjectAndTeacherDao().getSubAndTeacherById(Integer.parseInt(request.getParameter("id")));
		%>
		<table border="1">
			<tr>
				<th>sr.no</th>
				<th>Subject</th>
				<th>Teacher Name</th>
				<th>Actions</th>
			</tr>

			<%
			int count = 1;

			for (SubjectAndTeacher s : sList) {
			%>
			<tr>
				<td><%=count++%></td>
				<td><%=s.getSubject()%></td>
				<td><%=s.getTeacher()%></td>
				<td><a href="deleteSubAndTeacher.jsp?id=<%=s.getId()%>">delete</a></td>
			</tr>

			<%
		}
		%>
		</table>
<a href="mode.jsp">home</a>
	</form>
</body>
</html>