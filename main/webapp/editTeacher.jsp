<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit teacher</title>
</head>
<body>
<h1>Edit Teacher Details</h1>

<form action="editTeacherProcess.jsp">
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
Designation<input type="text" name="Designation" value=<%=request.getParameter("designation") %>>
<br></br>
<input type="submit" name="Update"/>


<br> <a href="mode.jsp">home</a>
</form>

</body>
</html>