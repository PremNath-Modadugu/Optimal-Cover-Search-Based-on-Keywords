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
           Integer r = null;
            String  nid=null ;
         
         
            nid=(String)session.getAttribute("nids");
            System.out.println("your id is ="+nid);
            String place1=request.getParameter("place1");
            String place2=request.getParameter("place2");
            String place3=request.getParameter("place3");
            String place4=request.getParameter("place4");
            String place5=request.getParameter("place5");
            String place6=request.getParameter("place6");
            String place7=request.getParameter("place7");
            String rate1=request.getParameter("rate1");
            String rate2=request.getParameter("rate2");
            String rate3=request.getParameter("rate3");
            String rate4=request.getParameter("rate4");
            String rate5=request.getParameter("rate5");
            String rate6=request.getParameter("rate6");
            String rate7=request.getParameter("rate7");
            String de1=request.getParameter("de1");
            String de2=request.getParameter("de2");
            String de3=request.getParameter("de3");
            String de4=request.getParameter("de4");
            String de5=request.getParameter("de5");
            String de6=request.getParameter("de6");
            String de7=request.getParameter("de7");
            System.out.println("ypur place 1"+place1);
            System.out.println("ypur place 1"+place2);
            System.out.println("ypur place 1"+place3);
            System.out.println("ypur place 1"+rate1);
            System.out.println("ypur place 1"+rate2);
            System.out.println("ypur place 1"+rate3);
            
            Connection con=databasecon.getconnection();
             Statement st=con.createStatement();
            
      int up = st.executeUpdate("update imageup set place1 ='" +place1+"', place2='"+place2+"',place3 ='" + place3 + "', place4='"+place4+"',place5 ='" + place5 + "', place6='"+place6+"',place7 ='" + place7 + "', rate1='"+rate1+"',rate2='"+rate2+"',rate3='"+rate3+"',rate4='"+rate4+"',rate5='"+rate5+"',rate6='"+rate6+"',rate7='"+rate7+"',de1='"+de1+"',de2='"+de2+"',de3='"+de3+"',de4='"+de4+"',de5='"+de5+"',de6='"+de6+"',de7='"+de7+"' where id = '" + nid + "'");
            if (up != 0) {
                response.sendRedirect("welcomeadmin.jsp?msg=imageview");
                System.out.println("updated sucess..!");
            }
        %>
        
    </body>
</html>
