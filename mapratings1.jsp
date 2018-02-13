<%-- 
    Document   : imageups3
    Created on : Jun 25, 2015, 4:05:26 PM
    Author     : java1
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>



    <% 
        try
                {
        String place1=null,place2=null,place3=null,place4=null,place5=null,place6=null,place7=null;
        place1=(String)session.getAttribute("place1");
        place2=(String)session.getAttribute("place2");
        place3=(String)session.getAttribute("place3");
        place4=(String)session.getAttribute("place4");
        place5=(String)session.getAttribute("place5");
        place6=(String)session.getAttribute("place6");
        place7=(String)session.getAttribute("place7");
        String de1=request.getParameter("de1");
        String de2=request.getParameter("de2");		
        String de3=request.getParameter("de3");
	String de4=request.getParameter("de4");
	String de5=request.getParameter("de5");
	String de6=request.getParameter("de6");
	String de7=request.getParameter("de7");
       String rate1=request.getParameter("rate1");
        String rate2=request.getParameter("rate2");
        String rate3=request.getParameter("rate3");
        String rate4=request.getParameter("rate4");
	String rate5=request.getParameter("rate5");
	String rate6=request.getParameter("rate6");
	String rate7=request.getParameter("rate7");
        System.out.println("your your placemap ratings"+place1);
        System.out.println("your your destinaction map"+de1);
         System.out.println("your your ratings is"+rate1);
	Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into image(place1,place2,place3,place4,place5,place6,place7,de1,de2,de3,de4,de5,de6,de7,rate1,rate2,rate3,rate4,rate5,rate6,rate7) values ('"+place1+"','"+place2+"','"+place3+"','"+place4+"','"+place5+"','"+place6+"','"+place7+"','"+de1+"','"+de2+"','"+de3+"','"+de4+"','"+de5+"','"+de6+"','"+de7+"','"+rate1+"','"+rate2+"','"+rate3+"','"+rate4+"','"+rate5+"','"+rate6+"','"+rate7+"')";
              int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("uploaddes.jsp?message=Successfully Registered");
                
        
        
    

	
		}
				else{
		response.sendRedirect("uploaddes.jsp?message=fail");
		
		}
                
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }   
       
	
        %>
       

       
  
        
  

  <!-- End ImageReady Slices -->





