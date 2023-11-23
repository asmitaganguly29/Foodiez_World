<!-- Start header -->



<%
String url = request.getRequestURL().toString();

String last = url.substring(url.lastIndexOf("/")+1);

HttpSession session1 = request.getSession();
String email = (String) session1.getAttribute("email");


%>	

	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="index.html">
					<img src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<%
							if(last.equals("index.jsp"))
							{
								out.println("<li class='nav-item active'><a class='nav-link' href='index.jsp'>Home</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='menu.jsp'>Menu</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='about.jsp'>About</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='contact.jsp'>Contact</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='feedback.jsp'>Feedback</a></li>");
								if(email == ""|| email == null)
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Login</a></li>");
								}
								else
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Profile</a></li>");
									out.println("<li class='nav-item'><a class='nav-link' href='logout'>Logout</a></li>");
								}
						
							}
						
							else if(last.equals("menu.jsp"))
							{
								out.println("<li class='nav-item'><a class='nav-link' href='index.jsp'>Home</a></li>");
								out.println("<li class='nav-item active'><a class='nav-link' href='menu.jsp'>Menu</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='about.jsp'>About</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='contact.jsp'>Contact</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='feedback.jsp'>Feedback</a></li>");
								if(email == ""|| email == null)
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Login</a></li>");
								}
								else
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Profile</a></li>");
									out.println("<li class='nav-item'><a class='nav-link' href='logout'>Logout</a></li>");
								}
						
							}
						
							else if(last.equals("about.jsp"))
							{
								out.println("<li class='nav-item'><a class='nav-link' href='index.jsp'>Home</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='menu.jsp'>Menu</a></li>");
								out.println("<li class='nav-item active'><a class='nav-link' href='about.jsp'>About</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='contact.jsp'>Contact</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='feedback.jsp'>Feedback</a></li>");
								if(email == ""|| email == null)
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Login</a></li>");
								}
								else
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Profile</a></li>");
									out.println("<li class='nav-item'><a class='nav-link' href='logout'>Logout</a></li>");
								}
						
							}
							
							else if(last.equals("contact.jsp"))
							{
								out.println("<li class='nav-item'><a class='nav-link' href='index.jsp'>Home</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='menu.jsp'>Menu</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='about.jsp'>About</a></li>");
								out.println("<li class='nav-item active'><a class='nav-link' href='contact.jsp'>Contact</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='feedback.jsp'>Feedback</a></li>");
								if(email == ""|| email == null)
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Login</a></li>");
								}
								else
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Profile</a></li>");
									out.println("<li class='nav-item'><a class='nav-link' href='logout'>Logout</a></li>");
								}
						
							}
						
							else if(last.equals("feedback.jsp"))
							{
								out.println("<li class='nav-item'><a class='nav-link' href='index.jsp'>Home</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='menu.jsp'>Menu</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='about.jsp'>About</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='contact.jsp'>Contact</a></li>");
								out.println("<li class='nav-item active'><a class='nav-link' href='feedback.jsp'>Feedback</a></li>");
								if(email == ""|| email == null)
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Login</a></li>");
								}
								else
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Profile</a></li>");
									out.println("<li class='nav-item'><a class='nav-link' href='logout'>Logout</a></li>");
								}
						
							}
						
							else if(last.equals("login.jsp"))
							{
								out.println("<li class='nav-item'><a class='nav-link' href='index.jsp'>Home</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='menu.jsp'>Menu</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='about.jsp'>About</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='contact.jsp'>Contact</a></li>");
								out.println("<li class='nav-item'><a class='nav-link' href='feedback.jsp'>Feedback</a></li>");
								if(email == ""|| email == null)
								{
									out.println("<li class='nav-item'><a class='nav-link' href='login.jsp'>Login</a></li>");
								}
								else
								{
									out.println("<li class='nav-item active'><a class='nav-link' href='login.jsp'>Profile</a></li>");
									out.println("<li class='nav-item'><a class='nav-link' href='logout'>Logout</a></li>");
								}
						 
							}
													
						%>
						
						
						
						
							
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->