<%@page
	import="learnersAcademy.dao.SubjectAndTeacherDao, learnersAcademy.dao.newClassDao, bean.newClass, bean.SubjectAndTeacher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserting subject and teacher</title>
</head>
<body>
	<%
	SubjectAndTeacher s = new SubjectAndTeacher();
	s.setNewClassId(Integer.parseInt(request.getParameter("id")));
	s.setSubject(request.getParameter("Select Subject"));
	s.setTeacher(request.getParameter("Select Teacher"));
	
	if (new SubjectAndTeacherDao().addSubjectAndTeacher(s) > 0) {
		out.print("Record inserted successfully");

	} else {
		out.print("Failled to insert record!");
	}
	%>
	<form action="classMain.jsp">
		<input type="submit" value="back" />
		<br> <a href="mode.jsp">home</a>
	</form>

</body>
</html>