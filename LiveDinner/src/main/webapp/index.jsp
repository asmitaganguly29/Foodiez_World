<%@page import="bean.Feedback"%>
<%@page import="bean.CategoryBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.ItemBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Foodiez World</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <jsp:include page="cssLinks.jsp"></jsp:include>
    
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- Start slides -->
	<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-left">
				<img src="images/biriyani.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> Foodiez World</strong></h1>
							<p class="m-b-40">Foodies welcome here.  <br> 
							</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="reservation.jsp">Reservation</a></p>
						</div>
					</div>
				</div>
			 
			</li>
			<li class="text-left">
				<img src="images/ice-cream.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> Foodiez World</strong></h1>
							<p class="m-b-40">Foodies welcome here.<br> 
							</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="reservation.jsp">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/chicken.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> Foodiez World</strong></h1>
							<p class="m-b-40">Foodies welcome here. <br> 
							</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="reservation.jsp">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End slides -->   
	
	
	
	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Welcome To <span>Foodiez World</span></h1>
						<h4>Little Story</h4>
						<p> Foodiez World specializes in delicious food featuring fresh ingredients and masterful preparation by the Foodiez World culinary team. Whether you’re ordering a multi-course meal or grabbing a drink and some snacks in the evening,
						 Foodiez World’s lively, casual yet upscale atmosphere makes it perfect for dining with friends, family, clients and business associates.</p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="images/about-img.jpg" alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->
	
	<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-center">
					<p class="lead ">
						" If you're not the one cooking, stay out of the way and compliment the chef. "
					</p>
					<span class="lead">Michael Strahan</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->
	
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
	
	<!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Gallery</h2>
						
					</div>
				</div>
			</div>
			<div class="tz-gallery">
				<div class="row">
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="images/pizza.jpg">
							<img class="img-fluid" src="images/pizza.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/pasta.jpg">
							<img class="img-fluid" src="images/pasta.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/brownie.jpg">
							<img class="img-fluid" src="images/brownie.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="images/fish.jpg">
							<img class="img-fluid" src="images/fish.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/aglio.jpg">
							<img class="img-fluid" src="images/aglio.jpg" alt="Gallery Images">
						</a>
					</div> 
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/shake.jpg">
							<img class="img-fluid" src="images/shake.jpg" alt="Gallery Images">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Gallery -->
	
	<!-- Start Customer Reviews 
	<div class="customer-reviews-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Customer Reviews</h2>
					
					</div>
				</div>
			</div>
			
			
			<div class="row">
				<div class="col-md-8 mr-auto ml-auto text-center">
					<div id="reviews" class="carousel slide" data-ride="carousel">
						
							
							<%
								Feedback fb = new Feedback();
								ArrayList<Feedback> allfeedbacks = fb.getAllfeedbacks();
								
								for(Feedback ib : allfeedbacks)
								{
									%>
										<div class="carousel-inner mt-4">			
											<div class="carousel-item text-center active">
												<div class="img-box p-1 border rounded-circle m-auto">
													<img class="d-block w-100 rounded-circle" src="images/quotations-button.png" alt="">
												</div>
												<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Paul Mitchel</strong></h5>
												<h6 class="text-dark m-0">Web Developer</h6>
												<p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
											</div>
										</div>
									<%
								}
								
								%>	
							
							
							
						
						<a class="carousel-control-prev" href="#reviews" role="button" data-slide="prev">
							<i class="fa fa-angle-left" aria-hidden="true"></i>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#reviews" role="button" data-slide="next">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
							<span class="sr-only">Next</span>
						</a>
                    </div>
				</div>
			</div>
			
			
	<!-- End Customer Reviews -->
	
	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<div class="row">
				<div class="col-md-4 arrow-right">
					<i class="fa fa-volume-control-phone"></i>
					<div class="overflow-hidden">
						<h4>Phone</h4>
						<p class="lead">
							+91 9647905647
						</p>
					</div>
				</div>
				<div class="col-md-4 arrow-right">
					<i class="fa fa-envelope"></i>
					<div class="overflow-hidden">
						<h4>Email</h4>
						<p class="lead">
							foodiez_world@gmail.com
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-map-marker"></i>
					<div class="overflow-hidden">
						<h4>Location</h4>
						<p class="lead">
							24 Park Street, Near Park Centre Building,Kolkata
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>

    <jsp:include page="javascriptLinks.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
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
	
					
    
</body>
</html>