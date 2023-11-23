<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Live Dinner Restaurant - Responsive HTML5 Template</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Registration Page</title>
<jsp:include page="cssLinks.jsp"></jsp:include>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div style="padding-top:150px; padding-bottom:50px">
<h4>Registration Page</h4>
<form action="registration" method="post">
<table>
<tr>
<td><h5>First Name</h5>
<td><input type="text" name="f_name"></td>
</tr>
<tr>
<tr>
<td><h5>Last Name</h5>
<td><input type="text" name="l_name"></td>
</tr>
<tr>
<tr>
<td><h5>Phone Number</h5>
<td><input type="number" name="number"></td>
</tr>
<tr>
<tr>
<tr>
<td><h5>Email</h5>
<td><input type="email" name="email"></td>
</tr>
<tr>
<td><h5>Password</h5></td>
<td><input type="password" name="password"></td>
</tr>
<tr><td><button>Sign Up</button></td></tr>
</table>
</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
	
	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>

    <jsp:include page="javascriptLinks.jsp"></jsp:include>
</body>
</html>