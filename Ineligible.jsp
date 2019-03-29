<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</style>
</head>
<body style="background-color:lightblue">
<div class="content">
<%@page import="java.sql.*" %>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Scholarship", "root", "root");
	Statement statement = con.createStatement(); 
	ResultSet resultSet = statement.executeQuery("select uid,firstname,lastname from Student2 where (income>=150000) OR (tenth<=85) OR (twelth<=80)");
	out.print("<table width=500 height=250 border=1px align=center>");
	
	
	out.print("<tr>");
    out.print("<th>Student ID</th>");
    out.print("<th>First name</th>");
    out.print("<th>Last Name</th>");
  out.print("</tr>");
	
	
	
	while(resultSet.next()) 
	{
		String studid= resultSet.getString("uid");
		String firstnameDB = resultSet.getString("firstname"); 
		String lastnameDB = resultSet.getString("lastname");
		out.print("<tr>");
		out.print("<td>"+studid+"</td>");
		out.print("<td>"+firstnameDB+"</td>");
		out.print("<td>"+lastnameDB+"</td>");
		out.print("</tr>");
	}
	out.print("</table>");
	
	
}
catch(Exception e)
{
	System.out.println(e);
}

%>
</div>
</body>
</html>