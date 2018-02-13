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
		
	String a=request.getParameter("keyword");
        String b=request.getParameter("location");		
        String c=request.getParameter("keyname");
	String d=request.getParameter("desc");
        session.setAttribute("keyword", a);
        session.setAttribute("location", b);
        session.setAttribute("keyname", c);
        session.setAttribute("desc", d);
	
        
        
        
        
         Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
       
        
	
        String sql="insert into uploads(keywords,location,keyname,des) values ('"+a+"','"+b+"','"+c+"','"+d+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("viewmap2.jsp?message=Successfully Registered");
	
		}
				else{
		response.sendRedirect("viewmap2.jsp?message=fail");
		
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
