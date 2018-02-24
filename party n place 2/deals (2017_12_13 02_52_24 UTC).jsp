<!DOCTYPE html>
<html><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@page isErrorPage="false" errorPage="Error.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="deals_files/fonts.css" rel="stylesheet" type="text/css" media="all">
<link href="deals_files/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="deals_files/style.css" rel="stylesheet" type="text/css" media="all">
<link rel="icon" type="image/x-icon" href="http://www.partynplace.com/images/favicon.ico">
<script type="text/javascript" src="deals_files/jquery-2.js"></script>
<script type="text/javascript" src="deals_files/bootstrap.js"></script>
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
					<a href="partynplace.jsp" class="navbar-brand">
					<img src="deals_files/logo.jpg" alt="">					</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a class="dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					    India					    <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<li><a href="http://www.partynplace.com/location/city/Chicago">Chicago</a> </li>
								<li> <a href="http://www.partynplace.com/location/city/chennai">Chennai</a></li>
								<li> <a href="http://www.partynplace.com/location/city/bangulore">Bangulore</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
			        <li class="menuitem1"><a href=#><i class="pnp-icon24 pnp-deals"></i></a></li><li>
</li><li class="menuitem2"><a href=#><i class="pnp-icon24 pnp-vendor"></i> </a></li><li>
</li><li class="menuitem3"><a href="SignOut.jsp"><i class="pnp-icon24 pnp-sign-up"></i> SignOut </a></li><li>
</li><li class="menuitem4"><a href=" " ><i class="pnp-icon24 pnp-login"></i> <%= (String)session.getAttribute("UserName")%></a></li><li>      
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
						<strong class="modal-title" id="myModalLabel">Login and get
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
	</header><section class="container">
		<div class="page-header">
			<h3 class="title text-center"> DEALS <small> make you favirot deal </small></h3>
		</div>
</section>
<section class="container">
<div class="row">
	<div class="page col-md-12">
		<div class="row">
			<section class="container-fluid">
	<div class="col-md-8 col-md-offset-2 well well-sm">
		<h3 class="title text-center"> Get USD 50 OFF BUFFET </h3>
		<div class="container-fluid">
			<div class="col-md-6">
				<h5 class="text-primary"> Use this coupon get your benifit </h5>
				<h5 class="text-info"> Address details are </h5>
				Majestic Resturant and Banquest,
				maddison street, near HDFC bank.
				Chicago , illinois.
			</div>
			<div class="col-md-6">
				<h3 class="text-danger text-left coupon"> CUP127FHS </h3>
			</div>
		</div>
	</div>
	<div class="col-md-8 col-md-offset-2 well well-sm">
		<h3 class="title text-center"> Get USD 34 OFF BUFFET </h3>
		<div class="container-fluid">
			<div class="col-md-6">
				<h5 class="text-primary"> Use this coupon get your benifit </h5>
				<h5 class="text-info"> Address details are </h5>
				oberoi,
				chicago, 32nd street.
				illinois.
			</div>
			<div class="col-md-6">
				<h3 class="text-danger text-left coupon"> CUP127FHS </h3>
			</div>
		</div>
	</div>
	<div class="col-md-8 col-md-offset-2 well well-sm">
		<h3 class="title text-center"> Get USD 10 OFF BUFFET </h3>
		<div class="container-fluid">
			<div class="col-md-6">
				<h5 class="text-primary"> Use this coupon get your benifit </h5>
				<h5 class="text-info"> Address details are </h5>
				Majestic Resturant and Banquest,
				michigan evenue.
				Chicago , illinois.
			</div>
			<div class="col-md-6">
				<h3 class="text-danger text-left coupon"> CUP127FHS </h3>
			</div>
		</div>
	</div>
	<div class="col-md-8 col-md-offset-2 well well-sm">
		<h3 class="title text-center"> Get USD 150 OFF BUFFET </h3>
		<div class="container-fluid">
			<div class="col-md-6">
				<h5 class="text-primary"> Use this coupon get your benifit </h5>
				<h5 class="text-info"> Address details are </h5>
				Majestic Resturant and Banquest,
				maddison street, near HDFC bank.
				Chicago , illinois.
			</div>
			<div class="col-md-6">
				<h3 class="text-danger text-left coupon"> CUP127FHS </h3>
			</div>
		</div>
	</div>
</section>
		</div>
	</div>
</div>
</section><div class="clearfix"></div>
<!-- <footer class="footer container"> -->
	<!-- <div class="row sitemap">
		<div class="col-md-2">
			<b> LOCATIONS </b><br>
			<a href="http://www.partynplace.com/location/city/Chicago">chicago</a>			<a href="http://www.partynplace.com/location/city/chennai">Chennai</a>			<a href="http://www.partynplace.com/location/city/mumbai">Mumbai</a>			<a href="http://www.partynplace.com/location/city/dheli">Dheli</a>			<a href="http://www.partynplace.com/location/city/banglore">Banglore</a>		</div>
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
	</div>
	<div class="clearfix"></div>
	<div class="col-md-5 text-left copyrights">All Rights Reserved
		©2013-2016 partynplace.com.</div>
	<div class="col-md-7 text-right footer-menu">
 		<a href="http://www.partynplace.com/aboutus" class="btn btn-inverse">AboutUs</a>
<a href="http://www.partynplace.com/terms" class="btn btn-inverse">Terms &amp; Conditions</a>
<a href="http://www.partynplace.com/privacy" class="btn btn-inverse">Privacy Policies</a>
<a href="http://www.partynplace.com/contactus" class="btn btn-inverse">Contact Us</a>
<a href="http://www.partynplace.com/follow" class="btn btn-inverse">Follow Us</a>
	</div>
</footer>
 -->
</body></html>