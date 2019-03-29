<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*" %>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Scholarship", "root", "root");
	Statement statement = con.createStatement(); 
	ResultSet resultSet = statement.executeQuery("select uid,firstname,lastname from Student2 where (income<150000) AND (tenth>85) AND (twelth>80)");
	out.print("<table> ");
	out.print("<table width=500 height=250 border=1px align=center>");
	out.print("<tr>");
    out.print("<th>Student ID</th>");
    out.print("<th>First name</th>");
    out.print("<th>Last Name</th>");
    out.print("<th>Selection Status</th>");
  	out.print("</tr>");
	
  	int size=0;
  	try{
  		resultSet.last();
  		size=resultSet.getRow();
  		resultSet.beforeFirst();
  	}
  	catch(Exception e){
  		out.print(e);
  	}
  	
  	
	String c[]=new String [size];
	int i=0;
	while(resultSet.next()) 
	{
		String studid= resultSet.getString("uid");
		String firstnameDB = resultSet.getString("firstname"); 
		String lastnameDB = resultSet.getString("lastname");
		out.print("<tr>");
		out.print("<td>"+studid+"</td>");
		out.print("<td>"+firstnameDB+"</td>");
		out.print("<td>"+lastnameDB+"</td>");
		out.print("<td><input type=\"checkbox\" name =\"selected\"value=\"demo\"></td>");
		out.print("</tr>");
		i++;
		out.print("</tr>");
	}
	session.setAttribute("csize", size);
	
	out.print("</table>");
	
	
	out.print("<form action=\"Selected.jsp\" method=\"post\">");
	out.print("<pre>                                    <button id=\"UpdateStatus\" type=\"submit\">Update Status</button></pre>");
	out.print("</form>");
	
	
}
catch(Exception e)
{
	System.out.println(e);
}
%>

</body>
</html>