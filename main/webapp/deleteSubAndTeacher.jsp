<%@page import="learnersAcademy.dao.SubjectAndTeacherDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%

if( new SubjectAndTeacherDao().deleteSubjectAndTeacher(Integer.parseInt(request.getParameter("id")))>0){
	out.print("Record deleted Successfully!");
}else{
	out.print("Unable to delete record!");
}

%>
<form action="classMain.jsp">
	<input type="submit" value="back"/>
	<br> <a href="mode.jsp">home</a>
</form>

</body>
</html>