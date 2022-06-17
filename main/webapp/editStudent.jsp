<%@page import="learnersAcademy.dao.newClassDao"%>
<%@page import="java.util.List"%>
<%@page import="bean.newClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit student</title>
</head>
<body>
<h1>Edit student details</h1>
<%List<newClass> clist = new newClassDao().getClassesList(); %>


<form action="editStudentProcess.jsp">
Id<input type="text" name="id" value=<%=request.getParameter("id") %> readonly>
<br></br>
First Name<input type="text" name="First Name" value=<%=request.getParameter("firstName") %>>
<br></br>
Last Name<input type="text" name="Last Name" value=<%=request.getParameter("lastName") %>>
<br></br>
Address<input type="text" name="Address" value=<%=request.getParameter("address") %>>
<br></br>
Phone<input type="text" name="Phone" value=<%=request.getParameter("phone") %>>
<br></br>
<label>class</label>
<select name="class">
 	<% for(newClass c: clist){ %>
  	  <option value=<%=c.getClassName()%>> <%=c.getClassName()%> </option>
		<%}%>	
</select>
<br></br>
<input type="submit" name="Update"/>

<br> <a href="mode.jsp">home</a>
</form>
</body>
</html>