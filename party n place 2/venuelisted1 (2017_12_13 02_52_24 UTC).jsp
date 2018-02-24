<!DOCTYPE html>
<!-- saved from url=(0046)file:///C:/Users/kingo/Desktop/demo/listed.htm -->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
  <%@page isErrorPage="false" errorPage="Error.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="./listed1_files/fonts.css" rel="stylesheet" type="text/css"
	media="all">
<link href="./listed1_files/bootstrap.css" rel="stylesheet"
	type="text/css" media="all">
<link href="./listed1_files/style.css" rel="stylesheet" type="text/css"
	media="all">
<link rel="icon" type="image/x-icon"
	href="http://partynplace.com/images/favicon.ico">
<script type="text/javascript"
	src="./listed1_files/jquery-2.js.download"></script>
<script type="text/javascript"
	src="./listed1_files/bootstrap.js.download"></script>
<link href="./listed1_files/bootstrap-slider.css" rel="stylesheet"
	type="text/css">

<script type="text/javascript"
	src="./listed1_files/bootstrap-slider.js.download"></script>
<script type="text/javascript" src="./listed1_files/search.js.download"></script>
<!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<style>
.slider-track-low, .slider-track-high {
	background-color: #ccc;
}

.list-box .h3 {
	margin-top: 0px;
}
</style>
</head>
<body>
	<header class="container">
		<nav class="row navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="partynplace.jsp" class="navbar-brand"> <img
						src="./listed1_files/logo.jpg" alt="">
					</a>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a class="dropdown-toggle" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true"> India <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<li><a
									href="http://partynplace.com/location/city/hyderabad">Hyderabad</a>
								</li>
								<li><a href="http://partynplace.com/location/city/chennai">Chennai</a></li>
								<li><a
									href="http://partynplace.com/location/city/bangulore">Bangulore</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="menuitem1"><a
							href="deals.jsp"><i
								class="pnp-icon24 pnp-deals"></i> Deals</a></li>
						<li></li>
						<li class="menuitem2"><a
							href=#><i
								class="pnp-icon24 pnp-vendor"></i></a></li>
						<li></li>
						<li class="menuitem3"><a
							href="SignOut.jsp"><i
								class="pnp-icon24 pnp-sign-up"></i> SignOut </a></li>
						<li></li>
						<li class="menuitem4"><a href=# ><i
								class="pnp-icon24 pnp-login"></i> <%= (String)session.getAttribute("UserName")%></a></li>
						<li></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
						<strong class="modal-title" id="myModalLabel">Login and
							get private benifits</strong>
					</div>
					<form action="http://www.partynplace.com/account/login"
						method="post" accept-charset="utf-8" class="form" id="users_form">
						<div class="modal-body">
							<div class="col-md-10 col-md-offset-1">
								<div class="form-group">
									<div class="row">
										<h5>Username</h5>
										<input class="form-control input-sm user" id="user"
											name="user" placeholder="Email Id / mobile number"
											type="text">
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<h5>Password</h5>
										<input value="" class="form-control input-sm pswd" id="pswd"
											name="pswd" placeholder="Password" type="password">
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary"
								style="min-width: 120px;">Login</button>
							<a href="http://partynplace.com/signup" class="btn btn-default"
								style="min-width: 120px;">Signup</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</header>
	
	<div class="container">
		<div class="row">
			<img src="./listed1_files/advert1.jpg" width="100%" height="100">
		</div>
	</div>
	<section class="container search-wrapper">

		<div class="row">



			<input id="selectedtype" value="1" name="selectedtype"
				class="form-control input-sm" type="hidden">
		</div>


		<div class="col-md-7">
			<div class="container-fluid text-center" id="loader"
				style="display: none; padding-top: 15px; padding-bottom: 20px;">
				<span class="h3">Finding . . . </span><img
					src="./listed1_files/load.gif" alt="">
			</div>
			<div class="container-fulid " id="resultlist">
			<%
//step3 create the statement object
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	  
	//step2 create  the connection object  
	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@www.papademas.net:1521:orcl","ora_smamidi1","oracle"); 

	 Statement stmt1=con.createStatement();
	 PreparedStatement pst=null;
	try{
	String venuename="";
	String address1="";
	String address2="";
	String city="";
	String state="";
	String country="";
	String zip="";
	String contact="";
	String rent="";
	String email="";
	String venuetype="";
	String Image="";
	String venueId="";
	    
	  pst = con.prepareStatement("select venuename,address1, address2, city, state, country, ZIPCODE, contact, email, venuetype, Image, venueid from address, venue where venue.ADDRESSID=address.ADDRESSID"); 
		
		ResultSet rs = pst.executeQuery();              
		while(rs.next()) {          
		 venuename = rs.getString(1) ;
		 address1= rs.getString(2);
		 address2 = rs.getString(3);
		 city=rs.getString(4);
		 state=rs.getString(5);
		 country=rs.getString(6);
		 zip=rs.getString(7);
		 contact=rs.getString(8);
		 email=rs.getString(9);
		 venuetype=rs.getString(10);
		Image = rs.getString(11);
		venueId = rs.getString(12);
	//step4 execute query  
	
	
 
	//step5 close the connection object  
	//con.close();   
		   
		   
		   %>
			<a href=Pizzas-And-Burgers~2.jsp?VenueId=<%=venueId%>>
				<div class="container-fluid list-box" 		onclick="#">
					<div class="row">
						<div class="col-md-4">
							<div class="row">
								<img alt="list title" src="<%=Image %>"
									class="img" width="100%">
								<div class="rating ">
									<i class="glyphicon glyphicon-star"></i>5
								</div>
							</div>
						</div>
						<div class="col-md-8">
							<h3 class="title text-left" style="margin-top: 0px;">
								<%=venuename %></h3>
							<h4 class="text-left"> </h4>
							<h5 class="title text-left"><%=venuetype %></h5>
							<div class="container-fluid"><%=city %></div>
							<div class="row">
								<div class="col-md-6">
									<i class="glyphicon glyphicon-envelope"></i>
									<%=email %>
								</div>
								<div class="col-md-6">
									<i class="glyphicon glyphicon-phone"></i> <%=contact %>
								</div>
							</div>
						</div>
					</div>
				</div>
			</a>
		<% }
	}catch(Exception e){}
			finally{
				stmt1.close();
				pst.close();
				con.close();				
			}
		%>	
		</div>
		</div>
		<div class="col-md-2 hbanner-wrapper text-center">
			<div class="container-fluid hbanner ">Add Text Here</div>
		</div>

	</section>
	<!-- <div class="clearfix"></div>
	<footer class="footer container">
		<div class="row sitemap">
			<div class="col-md-2">
				<b> LOCATIONS </b><br> <a
					href="http://partynplace.com/location/city/hyderabad">Hyderbad</a>
				<a href="http://partynplace.com/location/city/chennai">Chennai</a> <a
					href="http://partynplace.com/location/city/mumbai">Mumbai</a> <a
					href="http://partynplace.com/location/city/dheli">Dheli</a> <a
					href="http://partynplace.com/location/city/banglore">Banglore</a>
			</div>
			<div class="col-md-2">
				<b> COLLECTIONS </b> <br> <a
					href="http://partynplace.com/collection/venues">Venues</a> <a
					href="http://partynplace.com/collection/catering">Catering</a> <a
					href="http://partynplace.com/collection/bands">Music Bands</a> <a
					href="http://partynplace.com/collection/djs">Disc Jockey</a> <a
					href="http://partynplace.com/collection/restaurent">Restaurent</a>
			</div>
			<div class="col-md-8">
				<b> POPULAR VENDORS </b> <br> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a> <a
					href="file:///C:/Users/kingo/Desktop/demo/listed.htm"> LINK XX
					XXX </a> <a href="file:///C:/Users/kingo/Desktop/demo/listed.htm">
					LINK XX XXX </a>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="col-md-5 text-left copyrights">All Rights Reserved
			©2013-2016 partynplace.com.</div>
		<div class="col-md-7 text-right footer-menu">
			<a href="http://www.partynplace.com/aboutus" class="btn btn-inverse">AboutUs</a>
			<a href="http://www.partynplace.com/terms" class="btn btn-inverse">Terms
				&amp; Conditions</a> <a href="http://www.partynplace.com/privacy"
				class="btn btn-inverse">Privacy Policies</a> <a
				href="http://www.partynplace.com/contactus" class="btn btn-inverse">Contact
				Us</a> <a href="http://www.partynplace.com/follow"
				class="btn btn-inverse">Follow Us</a>
		</div>
	</footer>
 -->
</body>
</html>