<%@page import="learnersAcademy.dao.SubjectDao, bean.Subject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add subject</title>
</head>
<body>
<%
Subject sub = new Subject();
if(null != request.getParameter("subjectName")){
	sub.setSubjectName(request.getParameter("subjectName"));
	int row = new SubjectDao().addSubject(sub);
	if(row>0){
		out.print("subject added successfully!");
	}else{
		out.print("Unable to add subject!");
	}
	
}else{
	out.print("Unable to add subject! please enter subject name!");
}
%>
<form action="subjectsMain.jsp">
	<input type="submit" value="back"/>
	<br> <a href="mode.jsp">home</a>
</form>

</body>
</html>