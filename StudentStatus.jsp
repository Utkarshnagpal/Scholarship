<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Selected Student List</title>
</head>
<body>

<%@page import="java.sql.*" %>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Scholarship", "root", "root");
	Statement statement = con.createStatement(); 
	ResultSet resultSet = statement.executeQuery("select firstname,lastname from Student2 where status='Selected'");
	out.print("<table> ");
	out.print("<table width=500 height=250 border=1px align=center>");
	out.print("<tr>");
    out.print("<th>First name</th>");
    out.print("<th>Last Name</th>");
    out.print("<th>Selection Status</th>");
  	out.print("</tr>");
	

	while(resultSet.next()) 
	{
		String firstnameDB = resultSet.getString("firstname"); 
		String lastnameDB = resultSet.getString("lastname");
		out.print("<tr>");
		out.print("<td>"+firstnameDB+"</td>");
		out.print("<td>"+lastnameDB+"</td>");
		out.print("<td> SELECTED </td>");
		out.print("</tr>");
	}

	
	out.print("</table>");
	
	
	
}
catch(Exception e)
{
	System.out.println(e);
}
%>

</body>
</html>