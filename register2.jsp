<%-- 
    Document   : upload
    Created on : Aug 31, 2015, 3:58:15 PM
    Author     : java1
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <title>Registration Insert Page</title>
<% 
        try
                {
		
	String a=request.getParameter("username");
        String b=request.getParameter("userid");		
        String c=request.getParameter("emailid");
	String d=request.getParameter("password");
        String e=request.getParameter("mobie");
         String f=request.getParameter("date");
	
        
	
        
        
        
        
         Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
       
        
	
        String sql="insert into usereg(username,userid,emailid,password,mobie,date) values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("registraction.jsp?message=Successfully Registered");
	
		}
				else{
		response.sendRedirect("login2.jsp?message=fail");
		
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>
       
  
        
  

    </body>
</html>
