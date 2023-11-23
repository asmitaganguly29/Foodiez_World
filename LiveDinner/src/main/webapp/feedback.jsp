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
    
    <jsp:include page="cssLinks.jsp"></jsp:include>
    
<title>Feedback</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div style="padding-top:150px; padding-bottom:50px">
<h1>Give Your Feedback</h1>
<form action="add_feedback" method="post">
<table>
<tr>
<td><b>Enter Name</b></td>
<td><input type="text" name="customerName"></td>
</tr><br><br>
<tr>
<td><b>Enter Feedback</b></td>
<td>
<textarea rows="5" cols="50" placeholder="Enter Feedback" name="feedback"></textarea>
</td>
</tr>
<tr>
<td><b>Ratings</b></td>
</tr>
<tr>
<td>
<input type="radio" id="1" name="rating" value="1">1
  <input type="radio" id="2" name="rating" value="2">2
  <input type="radio" id="3" name="rating" value="3">3  
  <input type="radio" id="4" name="rating" value="4">4  
  <input type="radio" id="5" name="rating" value="5">5
 
  </td>
  </tr>
  <tr>
  <td> <input type="submit" value="Submit"></td>
  </tr>
</table>
</form>
</div>

	<jsp:include page="footer.jsp"></jsp:include>
	
	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>

    <jsp:include page="javascriptLinks.jsp"></jsp:include>

</body>
</html>