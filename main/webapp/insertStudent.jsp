<%@page import="learnersAcademy.dao.newClassDao"%>
<%@page import="bean.newClass"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add students</title>
</head>
<body>
<%List<newClass>clist = new newClassDao().getClassesList(); %>
<form action="insertStudentProcess.jsp">
First Name<input type="text" name="First Name">
<br></br>
Last Name<input type="text" name="Last Name">
<br></br>
Address<input type="text" name="Address">
<br></br>
Phone<input type="text" name="Phone">
<br></br>
<label>Select Class</label>
<select	name="SelectClass">	
  	
  	<% for(newClass c: clist){ %>
  	  <option value=<%=c.getClassName()%>> <%=c.getClassName()%> </option>
		<%}%>	
</select> 	
<br></br>

<input type="submit" value="save"/>
<br> <a href="mode.jsp">home</a>
</form>
</body>
</html>