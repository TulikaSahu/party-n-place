<%@page import="java.sql.*"%>
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
try{  
	//step1 load the driver class  
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	  
	//step2 create  the connection object  
	Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@www.papademas.net:1521:orcl","ora_smamidi1","oracle");  
	  
 	//step3 create the statement object  
	/* Statement stmt=con.createStatement();   */ 
/* 	String sql = "INSERT INTO signup " +
            "VALUES (100, 'Zara', 'Ali', 18)";
stmt.executeUpdate(sql);
sql = "INSERT INTO signup " +
            "VALUES (101, 'Mahnaz', 'Fatma', 25)";
stmt.executeUpdate(sql);
sql = "INSERT INTO signup " +
            "VALUES (102, 'Zaid', 'Khan', 30)";
stmt.executeUpdate(sql);
sql = "INSERT INTO signup " +
            "VALUES(103, 'Sumit', 'Mittal', 28)";
stmt.executeUpdate(sql);
out.println("Inserted records into the table..."); */

	
	//step4 execute query  
/* 	ResultSet rs=stmt.executeQuery("select * from signup");  
	while(rs.next())  
	out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
	  
	//step5 close the connection object  
	con.close();   */
	  
	}catch(Exception e){ System.out.println(e);}  
	   %>
</body>
</html>