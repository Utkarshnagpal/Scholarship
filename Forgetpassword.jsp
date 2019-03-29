<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<title>Forgot Password</title>
</head>
<body>
<%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root",""); 
Statement st=con.createStatement();
String userid=request.getParameter("UserID");
String newpassword=request.getParameter("password");
String strQuery = "UPDATE Student2 set pwd='"+newpassword+"' where uid='"+userid+"'";

int a= st.executeUpdate(strQuery);
if(a!=0){

out.println("Password updated successfully!!");
}
else{
out.println("Invalid!");
}
}
catch (Exception e){
System.out.println(e);
}
%>
</body>
</html>
</body>
</html>