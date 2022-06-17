<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit Subject</title>
</head>
<body>
<h1>edit subject</h1>
<form action="editSubjectProcess.jsp">
<input type="text" name="subjectName">
<input type="hidden" name="id" value=<%=request.getParameter("id")%>>
<input type="submit" value="edit" />

<br> <a href="mode.jsp">home</a>
</form>
</body>
</html>