<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
  <%-- <%@page isErrorPage="false" errorPage="Error.jsp" %> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <jsp:useBean id= "UserBean" scope= "request" class="Beans.User"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%String username =(String)session.getAttribute("UserName");%>
<%int venueid =Integer.parseInt(request.getParameter("VenueId"));%>
<%String bookingdate =request.getParameter("datetimepicker");%>
<% 
	out.println("-------------------------"+request.getParameter("datetimepicker"));

	 /* out.println(user + pswd + email + phone);  */
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	  
	//step2 create  the connection object  
	 Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@www.papademas.net:1521:orcl","ora_smamidi1","oracle"); 
	
	
	 Statement stmt1=con.createStatement();   
	 PreparedStatement stmt = con.prepareStatement("select * from status where venueid = ? and vdate = ? "); 
	
	 //stmt.setString(1, username); 
	 stmt.setInt(1, venueid);
	 stmt.setString(2, bookingdate);
	 
	 ResultSet rs = stmt.executeQuery();  
	
	 if(rs.next()) {          
	%>	    
				<jsp:forward page="Pizzas-And-Burgers~2.jsp">
			   <jsp:param name="successmsg" value="Venue is not available , please book for a different date"/>
			   <jsp:param name="VenueId" value="<%=venueid%>"/>
			   </jsp:forward> 
	
				
	<% 
	 }
	 else
	 {
		PreparedStatement pst = con.prepareStatement("INSERT INTO STATUS VALUES (?, ?,?,?)");
 
pst.setString(1,username);//1 specifies the first parameter in the query  
pst.setInt(2,venueid);  
pst.setString(3,bookingdate);
pst.setString(4,"Booked");
int i=pst.executeUpdate();  

%>
	
			<jsp:forward page="Pizzas-And-Burgers~2.jsp">
		   <jsp:param name="successmsg" value="you have succesfully booked the venue"/>
		   <jsp:param name="VenueId" value="<%=venueid%>"/>
		   </jsp:forward> 
<% } %>
</body>
</html>