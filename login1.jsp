<%-- 
    Document   : imageups3
    Created on : Jun 25, 2015, 4:05:26 PM
    Author     : java1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<!DOCTYPE html>
<html>
    <head>
        
        
    </head>
    <body>
        <title>Registration Insert Page</title>
<% 
        
           
	Statement st = null;
        ResultSet rs = null;
        String emailsin=request.getParameter("emailid");		
        
	String passw=request.getParameter("password");
       
	
         try{
	Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bestkeycover","root","root");
	st = con.createStatement();
	String qry ="select * from usereg where emailid='"+emailsin+"' AND password='"+passw+"'"; 
	rs = st.executeQuery(qry);
	if(rs.next()){
            String username =null;
            username= rs.getString("username");
            System.out.println("your name"+username);
            session.setAttribute("username", username);
	
	response.sendRedirect("welcomeuser.jsp");
	
	}
	else{
		out.println("Enter correct username, password");		
	}
	con.close();
	st.close();
}
catch(Exception ex){
	out.println(ex);
}

        %>
       
  
        
  
</center>
  
       
  
        
  
        </td>
      
     
      
    </tr>
    </body>
  </table>
  <!-- End ImageReady Slices -->






