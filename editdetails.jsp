<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<body>

<link rel="stylesheet" href="editdetailsCSS.css">
<style>
body{
height:100%; background-image:url("el1.png");height:"100%";background-position:center; background-repeat:no-repeat;background-size:cover;
}

</style>

<h1>                     <img src="sign.png" alt="fb“ height="150" width="150"></a>       				</h1>
<form name="reg" method="post" action="editservlet">


<div class="content">



<table align="center">


<th><h1>  Contact Details- </h1></th>


<tr><td>Contact No</td>         <td><input type="tel" name="cn" maxlength="10"  required oninvalid="alert('Please update this field;')" ></td></tr>

</table>
<br>


<table align="center">
<th><h1>  Address Details-</h1></th>

 

<tr><td>Street      </td>         <td>        <input type="text" name="street" required oninvalid="alert('Please update this field;')"></td>

<tr><td>Locality     </td>         <td>         <input type="text" name="locality" required oninvalid="alert('Please update this field;')" ></td>

<tr><td>City        </td>         <td>     <input type="text" name="city" required oninvalid="alert('Please update this field;')"></td>

<tr><td>State      </td>         <td>        <input type="text" name="addstate" required oninvalid="alert('Please update this field;')"></td>

<tr><td>Zip Code    </td>         <td>     <input type="tel" name="zc" maxlength="6" required oninvalid="alert('Please update this field;')"></td>
</table><br>


<table align="center">
<th><h1>  Bank Details- </h1></th>


<tr><td>Account No     </td> </td>         <td>       <input type="tel" name="accno" maxlength="50"  required oninvalid="alert('Please update this field;')"> </td>

<tr><td>Bank Name      </td></td>         <td>          <input type="text" name="bname" required oninvalid="alert('Please update this field;')"></td>

<tr><td>IFSC Code      </td> </td>         <td>          <input type="text" name="ifsc" required oninvalid="alert('Please update this field;')"> </td>

<tr><td>City           </td></td>         <td>      <input type="text" name="bcity" required oninvalid="alert('Please update this field;')"> </td>
</table>
<br>
             


<pre>
              <input type="reset" >               <input type="submit" value="Save" ></pre>
              
              
              
</form>
</div>




</body>



</html>