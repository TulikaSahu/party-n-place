<!DOCTYPE html>
<html><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="signup_files/fonts.css" rel="stylesheet" type="text/css" media="all">
<link href="signup_files/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="signup_files/style.css" rel="stylesheet" type="text/css" media="all">
<link rel="icon" type="image/x-icon" href="http://www.partynplace.com/images/favicon.ico">
<script type="text/javascript" src="signup_files/jquery-2.js"></script>
<script type="text/javascript" src="signup_files/bootstrap.js"></script>
<%@page isErrorPage="false" errorPage="Error.jsp" %>
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
					<img src="signup_files/logo.jpg" alt="">					</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a class="dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					    united states					    <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<li><a href="http://www.partynplace.com/location/city/hyderabad">Hyd</a> </li>
								<li> <a href="http://www.partynplace.com/location/city/chennai">Chennai</a></li>
								<li> <a href="http://www.partynplace.com/location/city/bangulore">Bangulore</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
			        <li class="active"><a href=#><i class="pnp-icon24 pnp-deals"></i> Deals </a></li><li>
</li><li class="menuitem2"><a href="http://www.partynplace.com/registration"><i class="pnp-icon24 pnp-vendor"></i></a></li><li>
</li><li class="menuitem3"><a href="http://www.partynplace.com/signup"><i class="pnp-icon24 pnp-sign-up"></i>  </a></li><li>
</li><li class="menuitem4"><a href="http://www.partynplace.com/#" data-toggle="modal" data-target="#myModal"><i class="pnp-icon24 pnp-login"></i> </a></li><li>      
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
										<input class="form-control input-sm user" id="user" name="user" required placeholder="Email Id / mobile number" type="text" required>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<h5>Password</h5>
										<input value="" class="form-control input-sm pswd" id="pswd" name="pswd" required placeholder="Password" type="password" required>
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
		<h3 class="title text-center"> Complete Registration [or] Login and Get Benifitss</h3>
		<%if(request.getParameter("successmsg")!=null){%>
		<h5 class="title text-center"><%=request.getParameter("successmsg") %></h5>
 		<%}%>
	</div>
</section>
<section class="container page-wrapper">
<div class="container-fluid ">
	<script>
		$(document).ready(function(){
			$(".alert").delay(6000).slideUp(100);
		});
	</script>
		<div class="col-sm-2"></div>
		<div class="col-sm-8 alert alert-info text-center fade-out"> Register now and Take Training</div>
		<div class="col-sm-2"></div>
</div>
<div class="row">
	<div class="page col-md-6">
		<script type="text/javascript"> 
		$(document).ready(function(){
		 $("#users_form").validate({
		 	rules: { 
				user: "required",
				pswd: "required",
				email: "required",
				phone: "required"
			}
		 });
		});
		</script>
<form action="Register.jsp" method="get" accept-charset="utf-8" class="form" id="users_form" enctype="multipart/form-data">
<div class="col-md-9 col-md-offset-3 well">
	<h3 class="text-center"> Register and get benifits from www.partynplace.com </h3>
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="form-group">
				<div class="row">
					<h5>Username</h5>
					<input class="form-control input-sm user" id="user" name="user" required placeholder="User name" type="text">
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<h5>Password</h5>
					<input value="" class="form-control input-sm pswd" id="pswd" name="pswd" required placeholder="Password" type="password">
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<h5>Email</h5>
					<input class="form-control input-sm email" id="email" name="email" required placeholder="Email address " type="text">
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<h5>Phone / Mobile</h5>
					<input class="form-control input-sm phone" id="phone" name="phone" required placeholder="Phone /  Mobile number" type="text">
				</div>
			</div>
			<div class="text-center">
				<input type="submit" class="btn btn-primary" value="Register here">
				<button type="reset" class="btn btn-default">Reset All</button>
			</div>
			<br>
		</div>
	</div>
</div>
</form>	</div>
	<div class="page-panel col-md-6">
		<script type="text/javascript"> 
		$(document).ready(function(){
		 $("#users_form").validate({
		 	rules: { 
				user: "required",
				pswd: "required"
			}
		 });
		});
		</script>
<form action="login.jsp" method="get" accept-charset="utf-8" class="form" id="users_form" enctype="multipart/form-data">
<div class="col-md-9 col-md-offset-0 bg-warning">
	<h3 class="text-center">Login and get private benifits</h3>
	<div class="col-md-10 col-md-offset-1">
		<div class="form-group">
			<div class="row">
				<h5>Username</h5>
				<input class="form-control input-sm user" id="user" name="user" required placeholder="Email Id / mobile number" type="text">
			</div>
		</div>
		<div class="form-group">
			<div class="row">
				<h5>Password</h5>
				<input value="" class="form-control input-sm pswd" id="pswd" name="pswd" required placeholder="Password" type="password">
			</div>
		</div>
		<div class="row text-right">
			<button type="submit" class="btn btn-default" style="width: 150px; border: 1px solid transparent;">Login here</button>
		</div>
		<br><br>
	</div>
</div>
</form>
<div class="clearfix"></div>
<br>
<!-- <div class="col-md-9 col-md-offset-0 text-center bg-info" style="padding:20px;">
	<h3> Reset your Login password </h3> <br>
	<a href="http://www.partynplace.com/signup/forgot" class="btn btn-default" style="border: 1px solid transparent;">Forgot Password</a>
	<br>
</div> -->	</div>
</div>
</section>
<div class="clearfix"></div>
<!-- <!-- <footer class="footer container"> -->
	<div class="row sitemap">
		<div class="col-md-2">
			<b> LOCATIONS </b><br>
			<a href="http://www.partynplace.com/location/city/hyderabad">Hyderbad</a>			<a href="http://www.partynplace.com/location/city/chennai">Chennai</a>			<a href="http://www.partynplace.com/location/city/mumbai">Mumbai</a>			<a href="http://www.partynplace.com/location/city/dheli">Dheli</a>			<a href="http://www.partynplace.com/location/city/banglore">Banglore</a>		</div>
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