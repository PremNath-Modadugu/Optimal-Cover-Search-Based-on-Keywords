<%-- 
    Document   : reranking3
    Created on : Aug 20, 2015, 3:59:23 PM
    Author     : java1
--%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            
            
            int id=(Integer)session.getAttribute("id");  
            System.out.println("your s value="+id);
            String a=request.getParameter("uattri");
            System.out.println("your get value="+a);
            int i = 1;
            String irating = request.getParameter("stars");
           System.out.println("Your Rating System Value is "+irating);
            Integer r = null;
            Connection con=databasecon.getconnection();
             Statement st=con.createStatement();
            
          System.out.println("here added " + a);
            int up = st.executeUpdate("update imageup set uerattri ='" + a + "', rates='"+irating+"' where id = '" + id + "'");
            if (up != 0) {
                response.sendRedirect("search1.jsp?msg=imageview");
                System.out.println("updated sucess..!");
            }
        %>
        
    </body>
</html>
<%
    
%>z