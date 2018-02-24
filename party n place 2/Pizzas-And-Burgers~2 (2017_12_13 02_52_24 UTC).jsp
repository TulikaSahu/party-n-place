<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page isErrorPage="false" errorPage="Error.jsp" %>
<html><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="Pizzas-And-Burgers%7E2_files/fonts.css" rel="stylesheet" type="text/css" media="all">
<link href="Pizzas-And-Burgers%7E2_files/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="Pizzas-And-Burgers%7E2_files/style.css" rel="stylesheet" type="text/css" media="all">
<link href="Pizzas-And-Burgers%7E2_files/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link rel="icon" type="image/x-icon" href="http://partynplace.com/images/favicon.ico">
<script type="text/javascript" src="Pizzas-And-Burgers%7E2_files/jquery-2.js"></script>
<script type="text/javascript" src="Pizzas-And-Burgers%7E2_files/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="./jquery.datetimepicker.css"/>
<!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>
<form action="Book.jsp" method="get" accept-charset="utf-8" class="form" id="users_form">
<input type=hidden id="UserName" name="UserName" value=<%=session.getAttribute("UserName")%>>
<input type=hidden id="VenueId" name="VenueId" value=<%=request.getParameter("VenueId")%>>
<input type="hidden" value="" id="datetimepickertxt" name="datetimepickertxt">
<%if(request.getParameter("successmsg")!=null){%>
<%=request.getParameter("successmsg") %>
 <%}%>
	<header class="container">
		<nav class="row navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a href="partynplace.jsp" class="navbar-brand">
					<img src="Pizzas-And-Burgers%7E2_files/logo.jpg" alt="">					</a>
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
			        <li class="menuitem1"><a href="deals.jsp"><i class="pnp-icon24 pnp-deals"></i> Deals</a></li><li>
</li><li class="menuitem2"><a href="Status.jsp"><i class="pnp-icon24 pnp-vendor"></i>Booking Cart</a></li><li>
</li><li class="menuitem3"><a href="SignOut.jsp"><i class="pnp-icon24 pnp-sign-up"></i> SignOut </a></li><li>
</li><li class="menuitem4"><a href="" ><i class="pnp-icon24 pnp-login"></i> <%= (String)session.getAttribute("UserName")%></a></li><li>      
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
					<!-- <form action="http://www.partynplace.com/account/login" method="post" accept-charset="utf-8" class="form" id="users_form"> -->
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
					<!-- </form> -->
				</div>
			</div>
		</div>
	</header><style type="text/css">
.search-bar {
	height: 40px;
	line-height: 40px;
	box-shadow: 0px 0px 10px #000;
}
.dropdown-toggle-search {
	font-size: 16px; 
}
.search-bar .glyphicon-map-marker {
	font-size: 25px; float:left;  margin-left: 5px; line-height: 40px;
}
.search-bar .btn , .search-bar  .form-control{
	width: 100%; height: 40px;  border-radius: 0px; 
}
.search-bar .dropdown-menu { top: 92%; left: 30px; border-radius: 0px; }
</style>
<section class="container search-bar-wrapper" style="position: absolute; z-index: 10; width: 100%;">
	<div class="row ">
		<!-- <div class="col-md-10 col-md-offset-1 search-bar" style="background-color: #fff;">
			<div class="row">
				<div class="col-sm-2">
					<div class="row">
						<i class="glyphicon glyphicon-map-marker text-primary"></i>
						&nbsp;
						<a class="dropdown-toggle dropdown-toggle-search" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
				    India				    <span class="caret text-right"></span>
						</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="http://partynplace.com/location/city/hyderabad">Hyderabad</a> </li>
							<li> <a href="http://partynplace.com/location/city/chennai">Chennai</a></li>
							<li> <a href="http://partynplace.com/location/city/bangulore">Bangulore</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="row">
						<input name="skey" id="skey" class="form-control input-sm" type="text">
					</div>
				</div>
				<div class="col-sm-2">	
					<div class="row">	
						<button type="button" class=" btn btn-primary" style="margin-top: -3px"> Search </button>
					</div>
				</div>
			</div>
		</div> -->
	</div>
</section>
<section class="slider-wrapper container">
	<div class="row">
		<div id="carousel-example-generic" class="carousel slider" data-ride="carousel">
			<div class="carousel-inner" role="listbox">
<div class="item active  slide1"><img src="Pizzas-And-Burgers%7E2_files/food-07.jpg" alt="Dwbiadda Slide1" width="100%" height="300">
<div class="carousel-caption "></div></div><div class="item slide2"><img src="Pizzas-And-Burgers%7E2_files/hamburgers_layers_stuffing_red_background_fast_food_44372_20.jpg" alt="Dwbiadda Slide2" width="100%" height="300">
<div class="carousel-caption "></div></div>   </div>
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</section>
<div class="clearfix"></div>


<section class="container page" >
	<div class="page-header container-fluid" style="color: #fff;">
		<div class="col-md-9">
			<span class="h3">  </span>
		</div>
		<div class="col-md-3 text-right"> 
			<span class="h3"> <i class="fa fa-star"></i> 4.2 </span>
		</div>
	</div>
<br ><br ><br >
<div class="clearfix" ></div>	
<div class="col-md-10" >
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active">
		<a href="#home" aria-controls="home" role="tab" data-toggle="tab" ><i class="fa fa-folder" ></i> Venue 1</a>
	</li>
    
  </ul>
  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
		<br>
		
<% 
//step3 create the statement object  
	String venueId = request.getParameter("VenueId");
	 
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	  
	//step2 create  the connection object  
	
	 Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@www.papademas.net:1521:orcl","ora_smamidi1","oracle"); 	
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
	 Statement stmt1=con.createStatement();   
	 PreparedStatement pst = con.prepareStatement("select venuename, address1, address2, city, state, country, ZIPCODE, contact, rent, email, venuetype from address, venue where venue.VENUEID= ? and venue.ADDRESSID=address.ADDRESSID"); 

		pst.setString(1, venueId);
		
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
		 rent=rs.getString(9);
		 email=rs.getString(10);
		 venuetype=rs.getString(11);
	
	//step4 execute query  
	
	
 
	//step5 close the connection object  
	//con.close();   
		   
		   
		   
		 }
		%>
			
		<div class="well well-sm " >
			<h3> <%=venuename %></h3>
			<blockquote> 
				Venue 1 description will be generated automatically. You can get pizzas and burggers are at any time.
				Edit and change the text.
			</blockquote>
		</div>
		<h3 class="title" > Related Media </h3>
		<div class="container-fulid" >
			<img src="Pizzas-And-Burgers%7E2_files/cat3.jpg" class="img-thumbnail">
			<img src="Pizzas-And-Burgers%7E2_files/cat11.jpg"  class="img-thumbnail">
			<img src="Pizzas-And-Burgers%7E2_files/cat3.jpg"  class="img-thumbnail">
			<img src="Pizzas-And-Burgers%7E2_files/cat11.jpg" class="img-thumbnail">
		</div>
		<br>
		<div class="bg-primary" style="padding: 15px; font-size: 14px;" >
			<em>
				ADDRESS: <%=address1 + address2 %>
			</em>
			<div class="row" >
				<div class="col-md-6" >
					<i class="fa fa-envelope" ></i> Email: <%=email %>
				</div>
				<div class="col-md-6" >
					<i class="fa fa-phone" ></i> Phone: <%=contact %>
				</div>
			</div>
		</div>
		<br >
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Land Mark </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" > Above HDFC Bank, Madhapur </div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Venue Type </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" > <%=venuetype %> </div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Cuisine </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" >
				<table class="table table-bordered" >
					<tbody >
						<tr>
							<th > FOOD </th>
							<td class="text-danger" > Veg </td>
							<td class="text-success" > Non-Veg </td>
						</tr>
						<tr>
							<th > DRINKS </th>
							<td class="text-danger" > Alchol </td>
							<td class="text-success" > Non-Alchol </td>
						<tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Aminities </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" > Car Parking, Stage tables/Chairs, Rest rooms, Decorator </div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Capacity </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-4 text-center" > 
				<strong class="title-default" > MAX : </strong> 500
			</div>
			<div class="col-sm-5 text-center" > 
				<strong class="title-default" > MIN : </strong> 200
			</div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Sutiable </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" > Birthday parties, Marriege Parties </div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Mode of Payment </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-3" > Debit Card </div>
			<div class="col-sm-3" > Credit Card </div>
			<div class="col-sm-3" > Cash </div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > FEE </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-4 text-center" > 
				<strong class="title-default" > Rent : </strong> <%=rent %> 
			</div>
			<div class="col-sm-5 text-center" > 
				<strong class="title-default" > Adavance : </strong> 1,700 / hours
			</div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Available Days </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-3"><input type="text" value="enter date" id="datetimepicker2" name="datetimepicker" onchange=setval(this.value)></div>
		</div>
		<br><br>
<!-- 		<input type="button" onclick="partynplace.jsp" value ="Home Page2" class="btn btn-primary" style="min-width: 120px;"/>
		<a href=partynplace.jsp>Home Page</a> -->
		<button type="submit" class="btn btn-primary" style="min-width: 120px;">Book Now</button>
	</div>
    <div role="tabpanel" class="tab-pane" id="profile">
	<br>
		<div class="well well-sm " >
			<h3> Venue 2 Description </h3>
			<blockquote> 
				Venue 2 description will be generated automaticall. You can get pizzas and burggers are at any time.
				Edit and change the text.
			</blockquote>
		</div>
		<h3 class="title" > Related Media </h3>
		<div class="container-fulid" >
			<img src="Pizzas-And-Burgers%7E2_files/cat3.jpg" class="img-thumbnail">
			<img src="Pizzas-And-Burgers%7E2_files/cat11.jpg"  class="img-thumbnail">
			<img src="Pizzas-And-Burgers%7E2_files/cat3.jpg"  class="img-thumbnail">
			<img src="Pizzas-And-Burgers%7E2_files/cat11.jpg" class="img-thumbnail">
		</div>
		<br>
		<div class="bg-primary" style="padding: 15px; font-size: 14px;" >
			<em>
				ADDRESS: #4-42, Madhapur Hyderabad. 
			</em>
			<div class="row" >
				<div class="col-md-6" >
					<i class="fa fa-envelope" ></i> Email: kiranjrkk@gmail.com
				</div>
				<div class="col-md-6" >
					<i class="fa fa-phone" ></i> Phone: 9676640228
				</div>
			</div>
		</div>
		<br >
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Land Mark </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" > Above HDFC Bank, Madhapur </div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Venue Type </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" > Multti Cusine, Resturant </div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Cuisine </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" >
				<table class="table table-bordered" >
					<tbody >
						<tr>
							<th > FOOD </th>
							<td class="text-danger" > Veg </td>
							<td class="text-success" > Non-Veg </td>
						</tr>
						<tr>
							<th > DRINKS </th>
							<td class="text-danger" > Alchol </td>
							<td class="text-success" > Non-Alchol </td>
						<tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Aminities </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" > Car Parking, Stage tables/Chairs, Rest rooms, Decorator </div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Capacity </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-4 text-center" > 
				<strong class="title-default" > MAX : </strong> 500
			</div>
			<div class="col-sm-5 text-center" > 
				<strong class="title-default" > MIN : </strong> 200
			</div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Sutiable </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" > Birthday parties, Marriege Parties </div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Mode of Payment </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-3" > Debit Card </div>
			<div class="col-sm-3" > Credit Card </div>
			<div class="col-sm-3" > Cash </div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > FEE </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-4 text-center" > 
				<strong class="title-default" > Rent : </strong> 1,200 / hours
			</div>
			<div class="col-sm-5 text-center" > 
				<strong class="title-default" > Adavance : </strong> 1,700 / hours
			</div>
		</div>
		<div class="container-fluid" >
			<div class="col-sm-2 title-default" > Available Days </div>
			<div class="col-sm-1" > : </div>
			<div class="col-sm-9" > Mon, Tue , Wed, Thu </div>
		</div>
		<br><br>
	</div>
  </div>
</div>
<div class="col-md-2" >
	<div class="row" style="background-color: #efefef; " >
		<h1 class="text-center" style="height: 480px;" > ADD TEXT HERE </h1>
	</div>
</div>
</section>
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
	<style>
	.page { margin-top: -130px; }
	.page .page-header { margin-bottom: 50x; }
	.page .title { color: #B30468; border-bottom: 1px solid #B30468; }
	.page .img-thumbnail { width: 120px; }
	.page .title-default { color: #B30468; font-weight: 600; font-size: 14px; }
	.page .container-fluid { margin-bottom: 5px; }
</style>
</footer>

</form>
</body>
<script src="./jquery.js"></script>
<script src="build/jquery.datetimepicker.full.js"></script>
<script>/*
window.onerror = function(errorMsg) {
	$('#console').html($('#console').html()+'<br>'+errorMsg)
}*/

function setval(dat)
{
	//alert(dat)
	
	$('#datetimepickertxt').val=dat;

	//alert("----------------------------"+$('#datetimepickertxt').val());
	}

$.datetimepicker.setLocale('en');

$('#datetimepicker_format').datetimepicker({value:'2015/04/15 05:03', format: $("#datetimepicker_format_value").val()});
console.log($('#datetimepicker_format').datetimepicker('getValue'));

$("#datetimepicker_format_change").on("click", function(e){
	$("#datetimepicker_format").data('xdsoft_datetimepicker').setOptions({format: $("#datetimepicker_format_value").val()});
});
$("#datetimepicker_format_locale").on("change", function(e){
	$.datetimepicker.setLocale($(e.currentTarget).val());
});

$('#datetimepicker').datetimepicker({
dayOfWeekStart : 1,
lang:'en',
disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
startDate:	'2016/12/05'
});
$('#datetimepicker').datetimepicker({value:'2015/04/15 05:03',step:10});

$('.some_class').datetimepicker();

$('#default_datetimepicker').datetimepicker({
	formatTime:'H:i',
	formatDate:'d.m.Y',
	//defaultDate:'8.12.1986', // it's my birthday
	defaultDate:'+03.01.1970', // it's my birthday
	defaultTime:'10:00',
	timepickerScrollbar:false
});

$('#datetimepicker10').datetimepicker({
	step:5,
	inline:true
});
$('#datetimepicker_mask').datetimepicker({
	mask:'9999/19/39 29:59'
});

$('#datetimepicker1').datetimepicker({
	datepicker:false,
	format:'H:i',
	step:5
});
$('#datetimepicker2').datetimepicker({
	onGenerate:function( ct ){
		$(this).find('.xdsoft_date')
			.toggleClass('xdsoft_disabled');
	},
	lang:'ch',
	timepicker:false,
	format:'d/m/Y',
	formatDate:'Y/m/d',
	minDate:'-1970/01/02', // yesterday is minimum date
	maxDate:'+1970/01/02' // and tommorow is maximum date calendar
});
$('#datetimepicker3').datetimepicker({
	inline:true
});
$('#datetimepicker4').datetimepicker();
$('#open').click(function(){
	$('#datetimepicker4').datetimepicker('show');
});
$('#close').click(function(){
	$('#datetimepicker4').datetimepicker('hide');
});
$('#reset').click(function(){
	$('#datetimepicker4').datetimepicker('reset');
});
$('#datetimepicker5').datetimepicker({
	datepicker:false,
	allowTimes:['12:00','13:00','15:00','17:00','17:05','17:20','19:00','20:00'],
	step:5
});
$('#datetimepicker6').datetimepicker();
$('#destroy').click(function(){
	if( $('#datetimepicker6').data('xdsoft_datetimepicker') ){
		$('#datetimepicker6').datetimepicker('destroy');
		this.value = 'create';
	}else{
		$('#datetimepicker6').datetimepicker();
		this.value = 'destroy';
	}
});
var logic = function( currentDateTime ){
	if (currentDateTime && currentDateTime.getDay() == 6){
		this.setOptions({
			minTime:'11:00'
		});
	}else
		this.setOptions({
			minTime:'8:00'
		});
};
$('#datetimepicker7').datetimepicker({
	onChangeDateTime:logic,
	onShow:logic
});
$('#datetimepicker8').datetimepicker({
	onGenerate:function( ct ){
		$(this).find('.xdsoft_date')
			.toggleClass('xdsoft_disabled');
	},
	minDate:'-1970/01/2',
	maxDate:'+1970/01/2',
	timepicker:false
});
$('#datetimepicker9').datetimepicker({
	onGenerate:function( ct ){
		$(this).find('.xdsoft_date.xdsoft_weekend')
			.addClass('xdsoft_disabled');
	},
	weekends:['01.01.2014','02.01.2014','03.01.2014','04.01.2014','05.01.2014','06.01.2014'],
	timepicker:false
});
var dateToDisable = new Date();
	dateToDisable.setDate(dateToDisable.getDate() + 2);
$('#datetimepicker11').datetimepicker({
	beforeShowDay: function(date) {
		if (date.getMonth() == dateToDisable.getMonth() && date.getDate() == dateToDisable.getDate()) {
			return [false, ""]
		}

		return [true, ""];
	}
});
$('#datetimepicker12').datetimepicker({
	beforeShowDay: function(date) {
		if (date.getMonth() == dateToDisable.getMonth() && date.getDate() == dateToDisable.getDate()) {
			return [true, "custom-date-style"];
		}

		return [true, ""];
	}
});
$('#datetimepicker_dark').datetimepicker({theme:'dark'});


</script>
</html>