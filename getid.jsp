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
    String place1=null,place2=null,place3=null,place4=null,place5=null,place6=null,place7=null;
        place1=(String)session.getAttribute("place1");
        place2=(String)session.getAttribute("place2");
        place3=(String)session.getAttribute("place3");
        place4=(String)session.getAttribute("place4");
        place5=(String)session.getAttribute("place5");
        place6=(String)session.getAttribute("place6");
        place7=(String)session.getAttribute("place7");
        
           
	Statement st = null;
        ResultSet rs = null;
        String emailsin=request.getParameter("username");		
        
	String passw=request.getParameter("password");
	
         try{
	Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/attributer","root","root");
	st = con.createStatement();
	String qry ="select * from imageup where place1='"+place1+"' or place2='"+place2+"' or place3='"+place3+"' or place4='"+place4+"',or place5='"+place5+"' or place6='"+place6+"'or place7='"+place7+"'"; 
	rs = st.executeQuery(qry);
	if(rs.next()){
           Integer id= rs.getInt("id");
            session.setAttribute("place1", id);
	
	response.sendRedirect("uploaddes.jsp");
	
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






