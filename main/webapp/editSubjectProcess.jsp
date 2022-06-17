<%@page import="learnersAcademy.dao.SubjectDao, bean.Subject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>editing subject</title>
</head>
<body>
<%
Subject sub = new Subject();
sub.setId(Integer.parseInt(request.getParameter("id")));
sub.setSubjectName(request.getParameter("subjectName"));

if(null != request.getParameter("subjectName")){
	int row = new SubjectDao().updateSubject(sub);
	if(row>0){
		out.print("subject updated successfully!");
	} else{
		out.print("Failed to update subject name!");
	}
}else{
	out.print("Failed to update subject Name! Please enter subject name!");
}
%>

<form action="subjectsMain.jsp">
	<input type="submit" value="back"/>
	<br> <a href="mode.jsp">home</a>
</form>

</body>
</html>