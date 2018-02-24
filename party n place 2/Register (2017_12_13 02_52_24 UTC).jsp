<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page isErrorPage="false" errorPage="Error.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <jsp:useBean id= "UserBean" scope= "request" class="Beans.User"/>
<body>
<%-- <%@ include file="dbconnection.jsp" %> --%>


<% 
//step3 create the statement object  
	String user = request.getParameter("user");
	String pswd = request.getParameter("pswd");
	String email = request.getParameter("email");
	
   	UserBean.setPassword(pswd);
	UserBean.setUsername(user);   
	
	long phone = Long.parseLong(request.getParameter("phone"));
	out.println(request.getQueryString());
	 out.println(user + pswd + email + phone); 
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	  
	//step2 create  the connection object  
	 Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@www.papademas.net:1521:orcl","ora_smamidi1","oracle"); 

	
	 Statement stmt1=con.createStatement();   
	 PreparedStatement pst = con.prepareStatement("select * from signup where username = ?"); 
		  
		
		pst.setString(1, user);
		
		ResultSet rs = pst.executeQuery();              
		if(!rs.next()) {          
		   out.println("Valid login credentials"); 
		   /* session.setAttribute("UserName", rs.getString(1)); */
	PreparedStatement stmt=con.prepareStatement("insert into signup values(?,?,?,?)");  
	stmt.setString(1,user);//1 specifies the first parameter in the query  
	stmt.setString(2,pswd);  
	stmt.setString(3,email);
	stmt.setLong(4,phone);
	int i=stmt.executeUpdate();  
	
	//step4 execute query  
	
	
 
	//step5 close the connection object  
	//con.close();   
		   %>
		   
		   <jsp:forward page="signup.jsp">
		   <jsp:param name="successmsg" value="You are succesfully registered, please login" />
		   
		   
		   </jsp:forward> 
		<% }
		else{
		   out.println(" ");     
		%>
		<jsp:forward page="signup.jsp">

		<jsp:param name="successmsg" value="User already exists with this  username" />
		</jsp:forward>
		<%} %>

</body>
</html>