<%@page import="learnersAcademy.dao.TeacherDao"%>
<%@page import="bean.Teacher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editing Teacher</title>
</head>
<body>
	<%
Teacher t = new Teacher();
t.setTid(Integer.parseInt(request.getParameter("id")));
t.setFirstName(request.getParameter("First Name"));
t.setLastName(request.getParameter("Last Name"));
t.setAddress(request.getParameter("Address"));
t.setPhone(request.getParameter("Phone"));
t.setDesignation(request.getParameter("Designation"));

if(new TeacherDao().updateTeacher(t)>0){
	response.sendRedirect("teacherMain.jsp");
}else{
	out.print("Unable to update teacher!");
}

%>
<br> <a href="mode.jsp">home</a>

</body>
</html>