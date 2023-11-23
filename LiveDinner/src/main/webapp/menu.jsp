<%@page import="java.util.ArrayList"%>
<%@page import="bean.CategoryBean"%>
<%@page import="bean.ItemBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>

<jsp:include page="cssLinks.jsp"></jsp:include>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Menu</h2>
						
					</div>
				</div>
			</div>
			
			<div class="row inner-menu-box">
				<div class="col-3">
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical" >
						<a onclick="showitem()" style='margin-bottom:10px' class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">All</a>
						<!-- <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Drinks</a>
						<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Lunch</</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Dinner</a> -->
						<%
						CategoryBean ob = new CategoryBean();
						ArrayList<CategoryBean> allcategories = ob.getAllcategories();
						
						for (CategoryBean cb : allcategories)
						{
							out.println("<a onclick='showitem("+cb.getCategoryId()+")' style='margin-bottom:10px' class='nav-link active' id='v-pills-home-tab' data-toggle='pill' href='#v-pills-home' role='tab' aria-controls='v-pills-home' aria-selected='true'>"+cb.getCategoryName()+"</a>");
						}
						%>
						
						
					</div>
				</div>
				
				<div class="col-9">
					<div class="tab-content" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
							<div class="row" id="myitems">
							
							<%
							ItemBean ab = new ItemBean();
							ArrayList<ItemBean> allitems = ab.getAllitems();
							
							for(ItemBean ib : allitems)
							{
								out.println("<div class='col-lg-6 col-md-6 items'>");
								out.println("<div class='gallery-single fix'>");
								out.println("<img src='"+ib.getImage()+"' class='img-fluid' alt='Image' width='100%' height='150px'>");
								out.println("<div class='why-text'>");
								out.println("<h4>"+ib.getItemName()+"</h4>");
								out.println("<p>"+ib.getDescription()+"</p>")	;
								out.println("<h5> Rs."+ib.getPrice()+"</h5>");	
								out.println("</div>");
								out.println("</div>");
								out.println("</div>");
							}
							
							%>
								
								
								
							
						</div>
						</div>
						
						</div>
						</div>
						</div>
						</div>
						</div>
								
								
						
	<!-- End Menu -->
	
	<script>
						
	function showitem(id)
	{
		if(id=="" || id==undefined)
			{
			 	window.location.href = "";
			}
		else
			{
			$.ajax({
				 url:"getAllItemsbyCat",
				 method:"get",
				 data:{"categoryId":id},
				 success:function(response)
				 {
					console.log(response);
					
					var alllist = JSON.parse(response);
					var temp = "";
					for(i=0; i<alllist.length; i++)
						{
							temp = temp + "<div class='col-lg-6 col-md-6 items'>";
							temp = temp + "<div class='gallery-single fix'>";
							temp = temp + "<img src='"+alllist[i].image+"' class='img-fluid' alt='Image' width='100%' height='150px'>";
							temp = temp + "<div class='why-text'>";
							temp = temp + "<h4>"+alllist[i].itemName+"</h4>";
							temp = temp + "<p>"+alllist[i].description+"</p>";
							temp = temp + "<h5> Rs."+alllist[i].price+"</h5>";
							temp = temp + "</div>";
							temp = temp + "</div>";
							temp = temp + "</div>";
						}
					document.getElementById("myitems").innerHTML = temp;
				 }
			 })
			}
		 
	}
	
	
	</script>	
	
<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="javascriptLinks.jsp"></jsp:include>
</body>
</html>