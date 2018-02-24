<!DOCTYPE html>
<html><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="cataors_files/fonts.css" rel="stylesheet" type="text/css" media="all">
<link href="cataors_files/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="cataors_files/style.css" rel="stylesheet" type="text/css" media="all">
<link rel="icon" type="image/x-icon" href="http://partynplace.com/images/favicon.ico">
<script type="text/javascript" src="cataors_files/jquery-2.js"></script>
<script type="text/javascript" src="cataors_files/bootstrap.js"></script>
<link href="cataors_files/bootstrap-slider.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="cataors_files/bootstrap-slider.js"></script>
<script type="text/javascript" src="cataors_files/search.js"></script>
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
					<a href="http://partynplace.com/" class="navbar-brand">
					<img src="cataors_files/logo.jpg" alt="">					</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a class="dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					    India					    <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<li><a href="http://partynplace.com/location/city/hyderabad">Hyderabad</a> </li>
								<li> <a href="http://partynplace.com/location/city/chennai">Chennai</a></li>
								<li> <a href="http://partynplace.com/location/city/bangulore">Bangulore</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
			        <li class="menuitem1"><a href="http://www.partynplace.com/deals"><i class="pnp-icon24 pnp-deals"></i> Deals</a></li><li>
</li><li class="menuitem2"><a href="http://www.partynplace.com/registration"><i class="pnp-icon24 pnp-vendor"></i>Add Vendor</a></li><li>
</li><li class="menuitem3"><a href="http://www.partynplace.com/signup"><i class="pnp-icon24 pnp-sign-up"></i> Signup </a></li><li>
</li><li class="menuitem4"><a href="http://www.partynplace.com/#" data-toggle="modal" data-target="#myModal"><i class="pnp-icon24 pnp-login"></i> Login</a></li><li>      
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
							<a href="http://partynplace.com/signup" class="btn btn-default" style="min-width: 120px;">Signup</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</header><style>
.slider-track-low, .slider-track-high {
	background-color: #ccc;
}
.list-box .h3 { margin-top: 0px; }
</style>
<div class="container">
	<div class="row">
		<img src="cataors_files/advert1.jpg" width="100%" height="100">
	</div>
</div>
<section class="container search-wrapper">
	<script type="text/javascript">
	function loadvenue(urlsegment) {
		urlsegment = urlsegment.replace(/\s/g,"-");
		url = "http://partynplace.com/venues/"+urlsegment;
		console.log(url);
		window.location = url;
	}
</script>
	<div class="row">
		<div class="col-md-3 filters">
			<div class="container-fluid"></div>
			<div class="container-fluid filter-box">
				<input id="searchkey" class="form-control input-sm" placeholder="Search Your Prefect Place in party" style="margin-bottom: 10px;" type="text"> 
					<input id="slocation" class="form-control input-sm" placeholder="Search Location" type="text"> 
					<input id="selectedlocations" value="" type="hidden">
				<div class="container-fluid " id="locations"><div class="location"><input class="filterlocation" value="3" type="checkbox"> <label> Bangalore </label></div><div class="location"><input class="filterlocation" value="2" type="checkbox"> <label> Hyderabad </label></div><div class="location"><input class="filterlocation" value="1" type="checkbox"> <label> vijyawada </label></div><script>
			$(".filterlocation").click(function(){
				var value = $(this).val();
				if($(this).is(":checked")) {
					existedValue = $("#selectedlocations").val();
					if(existedValue == "" || existedValue == ",") {
						$("#selectedlocations").val(value);
					} else {
						existedValue = existedValue.replace(",,", ",");
						$("#selectedlocations").val( existedValue + "," + value );
					}
				} else {
					existedValue = $("#selectedlocations").val();
					existedValue = existedValue.replace(value, "");
					existedValue = existedValue.replace(",,", ",");
					$("#selectedlocations").val( existedValue);
				}
			}); </script></div>
			</div>
			<div class="container-fluid filter-box">
				<div class="row">
					<strong class="col-md-4"> Ac Type </strong>
					<div class="col-md-8 text-right">
						<div class="btn-group btn-group-xs ">
							<button class="btn btn-xs btn-default" id="acyes">Yes</button>
							<button class="btn btn-xs btn-default" id="acno">No</button>
							<button class="btn btn-xs btn-default" id="acboth">Both</button>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid filter-box">
				<div class="row">
					<strong class="col-md-4"> Non Veg</strong>
					<div class="col-md-8 text-right">
						<div class="btn-group btn-group-xs ">
							<button class="btn btn-xs btn-default" id="vegyes">Yes</button>
							<button class="btn btn-xs btn-default" id="vegno">No</button>
							<button class="btn btn-xs btn-default" id="vegboth">Both</button>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid filter-box">
				<div class="row">
					<strong class="col-md-4"> Alochol </strong>
					<div class="col-md-8 text-right">
						<div class="btn-group btn-group-xs ">
							<button class="btn btn-xs btn-default" id="alcholyes">Yes</button>
							<button class="btn btn-xs btn-default" id="alcholno">No</button>
							<button class="btn btn-xs btn-default" id="alcholboth">Both</button>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid filter-box">
				<div class="row">
					<strong class="col-md-5">Seat Range</strong>
					<div class="col-md-7 text-right">
						<b id="selected-seat-range"> 0 - 200 </b>
					</div>
				</div>
				<div class="row">
					<div class="container-fluid text-center seat-slider">
						<div class="slider slider-horizontal" id=""><div class="slider-track"><div class="slider-track-low" style="left: 0px; width: 24.2424%;"></div><div class="slider-selection" style="left: 24.2424%; width: 20.202%;"></div><div class="slider-track-high" style="right: 0px; width: 55.5556%;"></div><div class="slider-handle min-slider-handle round" role="slider" aria-valuemin="10" aria-valuemax="1000" style="left: 24.2424%;" aria-valuenow="250" tabindex="0"></div><div class="slider-handle max-slider-handle round" role="slider" aria-valuemin="10" aria-valuemax="1000" style="left: 44.4444%;" aria-valuenow="450" tabindex="0"></div></div><div class="tooltip tooltip-main top" role="presentation" style="left: 34.3434%; margin-left: -33.5px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">250 : 450</div></div><div class="tooltip tooltip-min top" role="presentation" style="left: 24.2424%; margin-left: -18.5px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">250</div></div><div class="tooltip tooltip-max top" role="presentation" style="left: 44.4444%; margin-left: -18.5px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">450</div></div></div><input id="seatrange" class="seatrange filter-input" value="250,450" data-slider-min="10" data-slider-max="1000" data-slider-step="5" data-slider-value="[250,450]" style="display: none;" data-value="250,450" type="text">
						<script> $("#seatrange").slider({}); </script>
					</div>
				</div>
			</div>
			<div class="container-fluid filter-box">
				<div class="row">
					<strong class="col-md-5">Rent Range</strong>
					<div class="col-md-7 text-right">
						<b id="selected-rent-range"> 240 - 400 </b>
					</div>
				</div>
				<div class="row">
					<div class="container-fluid text-center rent-slider">
						<div class="slider slider-horizontal" id=""><div class="slider-track"><div class="slider-track-low" style="left: 0px; width: 24.2424%;"></div><div class="slider-selection" style="left: 24.2424%; width: 20.202%;"></div><div class="slider-track-high" style="right: 0px; width: 55.5556%;"></div><div class="slider-handle min-slider-handle round" role="slider" aria-valuemin="10" aria-valuemax="1000" style="left: 24.2424%;" aria-valuenow="250" tabindex="0"></div><div class="slider-handle max-slider-handle round" role="slider" aria-valuemin="10" aria-valuemax="1000" style="left: 44.4444%;" aria-valuenow="450" tabindex="0"></div></div><div class="tooltip tooltip-main top" role="presentation" style="left: 34.3434%; margin-left: -33.5px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">250 : 450</div></div><div class="tooltip tooltip-min top" role="presentation" style="left: 24.2424%; margin-left: -18.5px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">250</div></div><div class="tooltip tooltip-max top" role="presentation" style="left: 44.4444%; margin-left: -18.5px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">450</div></div></div><input id="rentrange" class="rentrange filter-input" value="250,450" data-slider-min="10" data-slider-max="1000" data-slider-step="5" data-slider-value="[250,450]" style="display: none;" data-value="250,450" type="text">
						<script> $("#rentrange").slider({}); </script>
					</div>
				</div>
			</div>
			<div class="container-fluid filter-box">
				<input id="svenuetype" class="form-control input-sm" placeholder="Search Venue Type" type="text"> <input id="selectedtype" value="1" name="selectedtype" class="form-control input-sm" type="hidden">
				<div class="container-fluid " id="vtypes"><div class="location"><input class="vtype" value="1" type="checkbox"> <label> function hall </label></div><div class="location"><input class="vtype" value="2" type="checkbox"> <label> Resort </label></div><script>
			$(".vtype").click(function(){
				var value = $(this).val(); 
				if($(this).is(":checked")) {
					existedValue = $("#selectedtype").val();
					if(existedValue == "" || existedValue == ",") {
						$("#selectedtype").val(value);
					} else {
						existedValue = existedValue.replace(",,", ",");
						$("#selectedtype").val( existedValue + "," + value );
					}
				} else {
					existedValue = $("#selectedtype").val();
					existedValue = existedValue.replace(value, "");
					existedValue = existedValue.replace(",,", ",");
					$("#selectedtype").val(existedValue);
				}
			}); </script></div>
			</div>
			<div class="container-fluid">
				<button class="btn btn-default" style="width: 100%" id="filtersubmit">Filter &amp; Search</button>
			</div>
		</div>
		<div class="col-md-7">
			<div class="container-fluid text-center" id="loader" style="display: none; padding-top: 15px; padding-bottom: 20px;">
				<span class="h3">Finding . . . </span><img src="cataors_files/load.gif" alt="">			</div>
				<div class="container-fulid " id="resultlist">
					<div class="container-fluid list-box"
						onclick="Pizzas-And-Burgers~2.jsp">
						<div class="row">
							<div class="col-md-4">
					<div class="row">
									<img alt="list title" src="cataors_files/food-07.jpg"
										class="img" width="100%">
									<div class="rating ">
										<i class="glyphicon glyphicon-star"></i>5
									</div>
								</div>
							</div>
							<a href=Pizzas-And-Burgers~2.jsp?VenueId=1>
							<div class="col-md-8">
							
								<h3 class="title text-left" style="margin-top: 0px;">
								H	Pizzas And Burgers</h3>
								<h4 class="text-left">Jrkk &amp; co</h4>
								<h5 class="title text-left">function hall</h5>
								<div class="container-fluid">#4-42, Manikonda Post</div>
								<div class="row">
									<div class="col-md-6">
										<i class="glyphicon glyphicon-envelope"></i>
										kiranjrkk@gmail.com
									</div>
									<div class="col-md-6">
										<i class="glyphicon glyphicon-phone"></i> 9676640228
									</div>
								</div>
							</div>
							</a>
						</div>
					</div>
					<div class="container-fluid list-box"
						onclick="loadvenue('Sandwitch Center~7')">
						
						<div class="row">
						
							<div class="col-md-4">
								<div class="row">
									<img alt="list title" src="cataors_files/trans9.png"
										class="img" width="100%">
									<div class="rating ">
										<i class="glyphicon glyphicon-star"></i>1
									</div>
								</div>
							</div>
							<a href=Pizzas-And-Burgers~2.jsp?VenueId=2>
							<div class="col-md-8">
								<h3 class="title text-left" style="margin-top: 0px;">
									Sandwitch///// Center</h3>
								<h4 class="text-left">Jrkk &amp; co</h4>
								<h5 class="title text-left">function hall</h5>
								<div class="container-fluid">manikonda</div>
								<div class="row">
									<div class="col-md-6">
										<i class="glyphicon glyphicon-envelope"></i>
										kiranjrkk@gmail.com
									</div>
									<div class="col-md-6">
										<i class="glyphicon glyphicon-phone"></i> 9676640228
									</div>
								</div>
							</div>
							</a>
						</div>
					</div>
					<div class="container-fluid list-box"
						onclick="loadvenue('Sandwitch Center~5')">
						<div class="row">
							<div class="col-md-4">
								<div class="row">
									<img alt="list title" src="cataors_files/trans7.png"
										class="img" width="100%">
									<div class="rating ">
										<i class="glyphicon glyphicon-star"></i>1
									</div>
								</div>
							</div>
							<div class="col-md-8">
								<h3 class="title text-left" style="margin-top: 0px;">
									Sandwitch Center</h3>
								<h4 class="text-left">Jrkk &amp; co</h4>
								<h5 class="title text-left">function hall</h5>
								<div class="container-fluid">manikonda</div>
								<div class="row">
									<div class="col-md-6">
										<i class="glyphicon glyphicon-envelope"></i>
										info@partynplace.com
									</div>
									<div class="col-md-6">
										<i class="glyphicon glyphicon-phone"></i> +91 9XX 988 1221
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="container-fluid list-box"
						onclick="loadvenue('Sandwitch Center~8')">
						<div class="row">
							<div class="col-md-4">
								<div class="row">
									<img alt="list title" src="cataors_files/trans10.png"
										class="img" width="100%">
									<div class="rating ">
										<i class="glyphicon glyphicon-star"></i>1
									</div>
								</div>
							</div>
							<div class="col-md-8">
								<h3 class="title text-left" style="margin-top: 0px;">
									Sandwitch Center</h3>
								<h4 class="text-left">Jrkk &amp; co</h4>
								<h5 class="title text-left">function hall</h5>
								<div class="container-fluid">manikonda, unguturu mandal.</div>
								<div class="row">
									<div class="col-md-6">
										<i class="glyphicon glyphicon-envelope"></i>
										kiranjrkk@gmail.com
									</div>
									<div class="col-md-6">
										<i class="glyphicon glyphicon-phone"></i> 9676640228
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="container-fluid list-box"
						onclick="loadvenue('Sandwitch Center~6')">
						<div class="row">
							<div class="col-md-4">
								<div class="row">
									<img alt="list title" src="cataors_files/trans8.png"
										class="img" width="100%">
									<div class="rating ">
										<i class="glyphicon glyphicon-star"></i>1
									</div>
								</div>
							</div>
							<div class="col-md-8">
								<h3 class="title text-left" style="margin-top: 0px;">
									Sandwitch Center</h3>
								<h4 class="text-left">Jrkk &amp; co</h4>
								<h5 class="title text-left">function hall</h5>
								<div class="container-fluid">manikonda</div>
								<div class="row">
									<div class="col-md-6">
										<i class="glyphicon glyphicon-envelope"></i>
										kiranjrkk@gmail.com
									</div>
									<div class="col-md-6">
										<i class="glyphicon glyphicon-phone"></i> 9676640228
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="container-fluid list-box">
						<div class="row">
							<div class="col-md-4">
								<div class="row">
									<img alt="list title" src="cataors_files/cat3.jpg" class="img"
										width="100%">
									<div class="rating ">
										<i class="glyphicon glyphicon-star"></i>3.5
									</div>
								</div>
							</div>
							<div class="col-md-8">
								<h3 class="title text-left" style="margin-top: 0px;">jrk
									Kiran 1213</h3>
								<h4 class="text-left">Jrkk &amp; co</h4>
								<h5 class="title text-left">Cataors</h5>
								<div class="container-fluid">#4-42, Manikonda Post</div>
								<div class="row">
									<div class="col-md-6">
										<i class="glyphicon glyphicon-envelope"></i>
										jrkkiran.mca@gmail.com
									</div>
									<div class="col-md-6">
										<i class="glyphicon glyphicon-phone"></i> 9676640228
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="container-fluid list-box">
						<div class="row">
							<div class="col-md-4">
								<div class="row">
									<img alt="list title" src="cataors_files/cat11.jpg" class="img"
										width="100%">
									<div class="rating ">
										<i class="glyphicon glyphicon-star"></i>3.5
									</div>
								</div>
							</div>
							<div class="col-md-8">
								<h3 class="title text-left" style="margin-top: 0px;">jrk
									Kiran 1213</h3>
								<h4 class="text-left">Jrkk &amp; co</h4>
								<h5 class="title text-left">Cataors</h5>
								<div class="container-fluid">#4-42, Manikonda Post</div>
								<div class="row">
									<div class="col-md-6">
										<i class="glyphicon glyphicon-envelope"></i>
										jrkkiran.mca@gmail.com
									</div>
									<div class="col-md-6">
										<i class="glyphicon glyphicon-phone"></i> 9676640228
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<div class="col-md-2 hbanner-wrapper text-center">
			<div class="container-fluid hbanner ">Add Text Here</div>
		</div>
	</div>
</section><div class="clearfix"></div>
<footer class="footer container">
	<div class="row sitemap">
		<div class="col-md-2">
			<b> LOCATIONS </b><br>
			<a href="http://partynplace.com/location/city/hyderabad">Hyderbad</a>			<a href="http://partynplace.com/location/city/chennai">Chennai</a>			<a href="http://partynplace.com/location/city/mumbai">Mumbai</a>			<a href="http://partynplace.com/location/city/dheli">Dheli</a>			<a href="http://partynplace.com/location/city/banglore">Banglore</a>		</div>
		<div class="col-md-2">
			<b> COLLECTIONS </b> <br>
			<a href="http://partynplace.com/collection/venues">Venues</a>			<a href="http://partynplace.com/collection/catering">Catering</a>			<a href="http://partynplace.com/collection/bands">Music Bands</a>			<a href="http://partynplace.com/collection/djs">Disc Jockey</a>			<a href="http://partynplace.com/collection/restaurent">Restaurent</a>		</div>
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

</body></html>