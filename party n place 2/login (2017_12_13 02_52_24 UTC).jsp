<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String user = request.getParameter("user");
String pswd = request.getParameter("pswd");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection(  
		"jdbc:oracle:thin:@www.papademas.net:1521:orcl","ora_smamidi1","oracle");
PreparedStatement pst = con.prepareStatement("Select username,password from signup where username=? and password=?");
pst.setString(1, user);
pst.setString(2, pswd);
ResultSet rs = pst.executeQuery();              
if(rs.next()) {          
   out.println("Valid login credentials"); 
   session.setAttribute("UserName", rs.getString(1));
   %>
   <jsp:forward page="partynplace.jsp"/>
<% }
else{
   out.println("Invalid login credentials");     
%>
<jsp:forward page="signup.jsp">

<jsp:param name="successmsg" value=" " />
</jsp:forward>
<%} %>
</body>
</html>