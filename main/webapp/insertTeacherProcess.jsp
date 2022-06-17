<%@page import="learnersAcademy.dao.TeacherDao, bean.Teacher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>save teacher</title>
</head>
<body>
	<%
	Teacher t = new Teacher();
	t.setFirstName(request.getParameter("First Name"));
	t.setLastName(request.getParameter("Last Name"));
	t.setAddress(request.getParameter("Address"));
	t.setPhone(request.getParameter("Phone"));
	t.setDesignation(request.getParameter("Designation"));
	
	if(new TeacherDao().addTeacher(t)>0){
		out.print("insertion of teacher successfull");

	}else{
		out.print("insertion of teacher failled");
	}
	%>

	<form action="teacherMain.jsp">
		<input type="submit" value="back" />
		<br> <a href="mode.jsp">home</a>
	</form>

</body>
</html>