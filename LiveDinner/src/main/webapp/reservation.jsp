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

<title>Reservation Page</title>
<jsp:include page="cssLinks.jsp"></jsp:include>
</head>
<body>
<%
HttpSession session1 = request.getSession();
String email = (String) session1.getAttribute("email");

if(email == ""|| email == null)
{
	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	request.setAttribute("message", "U need to Login first");
	rd.forward(request, response);
}
%>


<jsp:include page="header.jsp"></jsp:include>
<div style="padding-top:150px; padding-bottom:50px">
<h4>Reservation Page</h4>
<form action="reservation" method="post">
<table>
<tr>
<td>Date of reservation</td>
<td><input type="date" name="date"></td>
</tr>
<tr>
<td>Time of reservation</td>
<td><input type="time" name="time"></td>
</tr>
<tr>
<td>No. of tables to reserve</td>
<td><input type="number" name="tables"></td>
</tr>
<tr>
<td><button>Reserve</button></td>
</tr>
</table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
	
	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>

    <jsp:include page="javascriptLinks.jsp"></jsp:include>

</body>
</html>