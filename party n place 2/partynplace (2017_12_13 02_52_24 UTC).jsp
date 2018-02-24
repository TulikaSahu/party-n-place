<!DOCTYPE html>
<html><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="ScriptFiles/fonts.css" rel="stylesheet" type="text/css" media="all">
<link href="ScriptFiles/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="ScriptFiles/style.css" rel="stylesheet" type="text/css" media="all">
<link rel="icon" type="image/x-icon" href="http://www.partynplace.com/images/favicon.ico">
<script type="text/javascript" src="ScriptFiles/jquery-2.js"></script>
  <%@page isErrorPage="false" errorPage="Error.jsp" %>
<script type="text/javascript" src="ScriptFiles/bootstrap.js"></script>
<!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>
	<header class="container">
		<nav class="row navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a href="http://www.partynplace.com/" class="navbar-brand">
					<img src="Images/logo.jpg" alt="">					</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a class="dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					    united states					    <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<li><a href="http://www.partynplace.com/location/city/hyderabad">Hyderabad</a> </li>
								<li> <a href="http://www.partynplace.com/location/city/chennai">Chennai</a></li>
								<li> <a href="http://www.partynplace.com/location/city/bangulore">Bangulore</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">

					<%
					
String  loginUser=(String)session.getAttribute("UserName");
if(loginUser!=null){%>
	<li class="menuitem1"><a href="deals.jsp"><i class="pnp-icon24 pnp-deals"></i> Deals</a></li><li>
	<%
}else{
%>
<li class="menuitem3"><a href=#><i class="pnp-icon24 pnp-sign-up"></i>Deals  </a></li><li>
<%} %>
			        
</li><li class="menuitem2"><a href=#><i class="pnp-icon24 pnp-vendor"></i></a></li><li>
</li>
 
<%

if(loginUser!=null){%>
	<li class="menuitem3"><a href="SignOut.jsp"><i class="pnp-icon24 pnp-sign-up"></i>Sign Out</a></li><li>
	<%
}else{
%>
<li class="menuitem3"><a href="/partynplace2/signup.jsp"><i class="pnp-icon24 pnp-sign-up"></i>Sign Up  </a></li><li>
<%} %>

</li> 
<%

if(loginUser!=null){%>
	<li class="menuitem4"><a href="#" ><i class="pnp-icon24 pnp-login"></i><%out.println(loginUser);%></a></li>
	<%

}else{
%>
<li class="menuitem4"><a href="/partynplace2/signup.jsp" ><i class="pnp-icon24 pnp-login"></i>
Login
<%} %>
</a></li><li>      
			      </li></ul>
				</div>
			</div>
		</nav>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
						<strong class="modal-title" id="myModalLabel">Login and
							private benifits</strong>
					</div>
					<form action="http://www.partynplace.com/account/login" method="post" accept-charset="utf-8" class="form" id="users_form">
						<div class="modal-body">
							<div class="col-md-10 col-md-offset-1">
								<div class="form-group">
									<div class="row">
										<h5>Username</h5>
										<input class="form-control input-sm user" id="user" name="user" placeholder="Email Id / mobile number" type="text">
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<h5>Password</h5>
										<input value="" class="form-control input-sm pswd" id="pswd" name="pswd" placeholder="Password" type="password">
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary" style="min-width: 120px;">Login</button>
							<a href="http://www.partynplace.com/signup" class="btn btn-default" style="min-width: 120px;">Signup</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</header><style type="text/css">
.search-bar { height: 40px; line-height: 40px; box-shadow: 0px 0px 10px #000; top: 30px; }
.dropdown-toggle-search { font-size: 14px; }
.search-bar .glyphicon-map-marker { font-size: 24px; float: left; margin-left: 5px; line-height: 36px; }
.search-bar .btn, .search-bar  .form-control { width: 90%; height: 40px; border-radius: 0px; border-width: 0px; }
.search-bar .skey, .search-bar .sbtn { width: 100%; }
.search-bar .skey:hover, .search-bar .skey:focus { box-shadow: 0px 0px 0px #FFF; }
</style>
<section class="container search-bar-wrapper" style="position: absolute; z-index: 10; width: 100%;">
	<div class="container">
		<!-- <div class="search-bar" style="background-color: #fff;">
			<div class="col-sm-1 form-group">
				<div class="row">
					<i class="glyphicon glyphicon-map-marker text-primary"></i>
				</div> 
			</div>
			<div class="col-sm-9 form-group">
				<div class="row">
					<input name="skey" id="skey" class="form-control input-sm skey" type="text">
				</div>
			</div>
			<div class="col-sm-2 form-group">
				<div class="row">
					<button type="button" class="btn btn-primary sbtn" style="margin-top: -3px; width: 100%;">Search</button>
				</div>
			</div>
		</div> -->
	</div>
</section><section class="slider-wrapper container">
	<div class="row">
		<div id="carousel-example-generic" class="carousel slider" data-ride="carousel">
			<div class="carousel-inner" role="listbox">
<div class="item  slide1"><img src="Images/slide1.jpg" alt="Dwbiadda Slide1" width="100%" height="300">
<div class="carousel-caption "></div></div><div class="item slide2"><img src="Images/slide2.jpg" alt="Dwbiadda Slide2" width="100%" height="300">
<div class="carousel-caption "></div></div><div class="item slide3"><img src="Images/slide3.jpg" alt="Dwbiadda Slide3" width="100%" height="300">
<div class="carousel-caption "></div></div><div class="item slide4 active"><img src="Images/slide4.jpg" alt="Dwbiadda Slide4" width="100%" height="300">
<div class="carousel-caption "></div></div><div class="item slide5"><img src="Images/slide5.jpg" alt="Dwbiadda Slide5" width="100%" height="300">
<div class="carousel-caption "></div></div><div class="item slide6"><img src="Images/slide6.jpg" alt="Dwbiadda Slide6" width="100%" height="300">
<div class="carousel-caption "></div></div>   </div>
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			</a>
		</div>
	</div>
</section><section class="container">
	<div class="row">
		<div class="col-md-8">COLLECTIONS</div>
		<div class="col-md-4 text-right">
			<a href=# class="btn btn-default">SEE ALL</a>		</div>
	</div>
</section>
<section class="container">
	<div class="row">
	
	</div>
	<div class="row">
<%

if(loginUser!=null){%>
	<a class="col-md-2" href="venuelisted1.jsp">
<% }else{ 
%>
	
	<a class="col-md-2" href="#">
<%} %>	
		
		<div class="cat-box">
			<img src="Images/cat62.jpg" class="cat-pic"><span class="cat-title"> Venues </span>
		
		</div>
		
	</a>
	
<%

if(loginUser!=null){%>
	<a class="col-md-2" href="cataorlisted.jsp">
<% }else{ 
%>
	<a class="col-md-2" href="#">
<%} %>		
	
		<div class="cat-box">
			<img src="Images/cat11.jpg" class="cat-pic"> <span class="cat-title"> Caterers </span>
		</div>
	</a>
</div>
</section><section class="testimonial-slider-wrapper container ">
	<div class="row">
		<div id="carousel-example-generic1" class="carousel testimonial-slider well well-sm" data-ride="carousel">
			<div class="carousel-inner" role="listbox">
				<div class="item  slide1 active">
					<div class="carousel-caption ">
						<div class="container-fluid ">
							<div class="col-sm-4 text-right">
								<img src="Images/showman.png" class="thumbnail" width="100">
							</div>
							<div class="col-md-8 text-left" style="color: #888;">
								<h4 class="title">Good Interface and Easy Navigation</h4>
								<span>Hi ... ! <br> This is very good website. I browse many
									site in this platform. It was really helpfull to find right
									thing in easy way. Navigation and search is very easy.
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="item slide2">
					<div class="carousel-caption ">
						<div class="container-fluid ">
							<div class="col-sm-4 text-right">
								<img src="Images/courier.png" class="thumbnail" width="100">
							</div>
							<div class="col-md-8 text-left" style="color: #888;">
								<h4 class="title">Many Restarents and Banquets</h4>
								<span>Hi ... ! <br> This is very good website. I browse many
									site in this platform. It was really helpfull to find right
									thing in easy way. Navigation and search is very easy.
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="item slide3">
					<div class="carousel-caption ">
						<div class="container-fluid ">
							<div class="col-sm-4 text-right">
								<img src="Images/postman.png" class="thumbnail" width="100">
							</div>
							<div class="col-md-8 text-left" style="color: #888;">
								<h4 class="title">Thrid Paty Integration is Comfortable</h4>
								<span>Hi ... ! <br> This is very good website. I browse many
									site in this platform. It was really helpfull to find right
									thing in easy way. Navigation and search is very easy.
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="item slide4">
					<div class="carousel-caption ">
						<div class="container-fluid ">
							<div class="col-sm-4 text-right">
								<img src="Images/gentleman.png" class="thumbnail" width="100">
							</div>
							<div class="col-md-8 text-left" style="color: #888;">
								<h4 class="title">Invocation is only for reborn</h4>
								<span>Hi ... ! <br> This is very good website. I browse many
									site in this platform. It was really helpfull to find right
									thing in easy way. Navigation and search is very easy.
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section><div class="clearfix"></div>
<!-- <footer class="footer container"> -->
	<!-- <div class="row sitemap">
		<div class="col-md-2">
			<b> LOCATIONS </b><br>
			<a href="http://www.partynplace.com/location/city/hyderabad">Hyderbad</a>			<a href="http://www.partynplace.com/location/city/chennai">Chennai</a>			<a href="http://www.partynplace.com/location/city/mumbai">Mumbai</a>			<a href="http://www.partynplace.com/location/city/dheli">Delhi</a>			<a href="http://www.partynplace.com/location/city/banglore">Banglore</a>		</div>
		<div class="col-md-2">
			<b> COLLECTIONS </b> <br>
			<a href="http://www.partynplace.com/collection/venues">Venues</a>			<a href="http://www.partynplace.com/collection/catering">Catering</a>			<a href="http://www.partynplace.com/collection/bands">Music Bands</a>			<a href="http://www.partynplace.com/collection/djs">Disc Jockey</a>			<a href="http://www.partynplace.com/collection/restaurent">Restaurent</a>		</div>
		<div class="col-md-8">
			<b> POPULAR VENDORS </b> <br> <a href=""> LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href="">
				LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX
				XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href="">
				LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX
				XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href="">
				LINK XX XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX
				XXX </a> <a href=""> LINK XX XXX </a> <a href=""> LINK XX XXX </a>
		</div>
	</div> -->
<!-- 	<div class="clearfix"></div>
	<div class="col-md-5 text-left copyrights">All Rights Reserved
		©2013-2016 partynplace.com.</div>
	<div class="col-md-7 text-right footer-menu">
 		<a href="http://www.partynplace.com/aboutus" class="btn btn-inverse">AboutUs</a>
<a href="http://www.partynplace.com/terms" class="btn btn-inverse">Terms &amp; Conditions</a>
<a href="http://www.partynplace.com/privacy" class="btn btn-inverse">Privacy Policies</a>
<a href="http://www.partynplace.com/contactus" class="btn btn-inverse">Contact Us</a>
<a href="http://www.partynplace.com/follow" class="btn btn-inverse">Follow Us</a>
	</div>
</footer> -->

</body></html>