$(document).ready(function(){
	var site_url = new String();
	site_url = "http://partynplace.com/";
	var loc = new String();
	var searchKey = new String();
	var type = new String();
	var ac = new String();
	var food = new String();
	var drink = new String();
	var seats = new String();
	var rent = new String();
	loc = type = seats = rent = "";
	ac = "BOTH";
	food = "BOTH";
	drink = "BOTH";
	searchKey = "";
	var final_locations = new String();
	$.ajax({
		url: "http://partynplace.com/search/locations/",
		method : "GET"
	}).success(function(data) {
		$("#locations").html(data);
	});
	$.ajax({
		url: "http://partynplace.com/search/venuetypes/",
		method : "GET"
	}).success(function(data) {
		$("#vtypes").html(data);
	});
	$("#slocation").change(function(){
		slocation = $(this).val(); 
		$.ajax({
			url: "http://partynplace.com/search/locations/"+slocation+"/",
			method : "GET"
		}).success(function(data) {
			$("#locations").html(data);
		});
	});
	$("#svenuetype").change(function(){
		svkey = $(this).val(); 
		$.ajax({
			url: "http://partynplace.com/search/venuetypes/"+svkey+"/",
			method : "GET"
		}).success(function(data) {
			$("#vtypes").html(data);
		});
	});
	$("#acyes").click(function(){
		ac = "YES";
		searchnow();
	});
	$("#acno").click(function(){
		ac = "NO";
		searchnow();
	});
	$("#acboth").click(function(){
		ac = "BOTH";
		searchnow();
	});
	$("#vegyes").click(function(){
		food = "YES";
		searchnow();
	});
	$("#vegno").click(function(){
		food = "No";
		searchnow();
	});
	$("#vegboth").click(function(){
		food = "BOTH";
		searchnow();
	});
	$("#alcholyes").click(function(){
		drink = "YES";
		searchnow();
	});
	$("#alcholno").click(function(){
		drink = "NO";
		searchnow();
	});
	$("#alcholboth").click(function(){
		drink = "BOTH";
		searchnow();
	});
	$("#seatrange").change(function(){
		var seatrange = $(this).val();
		$("#selected-seat-range").html(seatrange.replace(",", "  -  "));
		seats = seatrange;
	});
	$("#rentrange").change(function(){
		var rentrange =  $(this).val();
		$("#selected-rent-range").html(rentrange.replace(",", "  -  "));
		rent = rentrange;
	});
	$("#vtypes").click(function(){
		type = $("#selectedtype").val();
		if(type == '') type = ","; 
		searchnow();
	});
	$("#locations").click(function(){
		loc = $("#selectedlocations").val();
		if(loc == '') loc = ",";
		searchnow();
	});
	$("#filtersubmit").click(function(){
		$("#vtypes").click();
	});
	$("#searchkey").change(function(){
		searchKey = $(this).val();
		searchnow();
	});
	function searchnow() {
		$("#loader").css("display","block");
		var searchurl = new String();
		searchurl = "http://partynplace.com/search/all";
		$.ajax({
			url: searchurl,
			async : false,
			method : "POST",
			data : { "searchkey" : searchKey , "location": loc, "vtype" : type, "ac": ac , "food" : food , "drink" : drink , "seats" : seats, "rent" : rent  }
		}).success(function(data) {
			console.log(data);
			$("#loader").css("display","none");
			$("#resultlist").html(data);
			var newItem = new String();
			if(data.venues != null) {
			$.each(data.venues, function(index, item){
				if(item.mail == "null" || item.mail ==  null) item.mail = "info@partynplace.com";
				if(item.contact == "null" || item.contact == null) item.contact = "+91 9XX 988 1221";
				newItem = "<div class=\"container-fluid list-box\" onclick=\"loadvenue('"+item.vtitle+"~"+item.venue+"')\" > <div class=\"row\" > <div class=\"col-md-4\" > <div class=\"row\" > <img alt=\"list title\" src=\""+site_url+"res/venues/"+item.vpic+"\" class=\"img\" width=\"100%\" /> <div class=\"rating \" > <i class=\"glyphicon glyphicon-star\" ></i>"+item.rating+"</div> </div> </div> <div class=\"col-md-8\" > <h3 class=\"title text-left\" style=\"margin-top: 0px;\" > "+item.vtitle+" </h3> <h4 class=\"text-left\" > "+item.vendor+" </h4> <h5 class=\"title text-left\" > "+item.venueType+" </h5> <div class=\"container-fluid\" > "+item.addresss+" </div> <div class=\"row\" > <div class=\"col-md-6\" > <i class=\"glyphicon glyphicon-envelope\" ></i> "+item.mail+" </div> <div class=\"col-md-6\" > <i class=\"glyphicon glyphicon-phone\" ></i> "+item.contact+" </div> </div> </div> </div> </div>";
				$("#resultlist").append(newItem);
			});
			} 
			if(data.vendors != null ) {
			$.each(data.vendors, function(index, item){
				if(item.mail == "null" || item.mail ==  null) item.mail = "info@partynplace.com";
				if(item.contact == "null" || item.contact == null) item.contact = "+91 9XX 988 1221";
				newItem = "<div class=\"container-fluid list-box\" > <div class=\"row\" > <div class=\"col-md-4\" > <div class=\"row\" > <img alt=\"list title\" src=\""+site_url+"res/vendors/"+item.pic+"\" class=\"img\" width=\"100%\" /> <div class=\"rating \" > <i class=\"glyphicon glyphicon-star\" ></i>"+item.rating+"</div> </div> </div> <div class=\"col-md-8\" > <h3 class=\"title text-left\"  style=\"margin-top: 0px;\" > "+item.vendorName+" </h3> <h4 class=\"text-left\" > "+item.organization+" </h4> <h5 class=\"title text-left\" > "+item.category+" </h5> <div class=\"container-fluid\" > "+item.address+" </div> <div class=\"row\" > <div class=\"col-md-6\" > <i class=\"glyphicon glyphicon-envelope\" ></i> "+item.email+" </div> <div class=\"col-md-6\" > <i class=\"glyphicon glyphicon-phone\" ></i> "+item.phone+" </div> </div> </div> </div> </div>";
				$("#resultlist").append(newItem);
			});
			}
			$(".list-box .h3").css("margin-top","0px");
		});
	}
	$("#filtersubmit").click();
});