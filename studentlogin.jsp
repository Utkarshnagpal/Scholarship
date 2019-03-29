<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title> Login page</title>
<link rel="stylesheet" href="style.css">

<script> 
function validate()
{ 
var username = document.form.username.value; 
var password = document.form.password.value;
if (username==null || username=="")
{ 
alert("Username cannot be blank"); 
return false; 
}
else if(password==null || password=="")
{ 
alert("Password cannot be blank"); 
return false; 
} 
}
</script>
</head>
<body>

<div class ="loginBox">
<img src="12.png" class="user">
<h2>Student Log In </h2>
<form name="form" action="StudentLoginServlet" method="post" onsubmit="return validate()">
<p>User Id</p>
<input type="text" name="username" placeholder="Enter User Id">
<p>Password </p>
<input type="password" name="password" placeholder="*******">
   
 <br>
  
<input type="submit" name="" value="Log In">
<a href="#">Forget Password  ?    <span style="padding-left:20px"><a href="http://localhost:8086/ScholarshipProject/signup.jsp"> Register   </span>  </a>
</form>
</div>



</body>

</body>
</html>