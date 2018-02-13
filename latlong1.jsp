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
		
	String keyword=null,location=null,keyname=null,des=null;
                     keyword=(String)session.getAttribute("keyword");
                     location=(String)session.getAttribute("location");
                     keyname=(String)session.getAttribute("keyname");
                     des=(String)session.getAttribute("desc");
                     String a=request.getParameter("latt1");
        String b=request.getParameter("latt2");		
        String c=request.getParameter("latt3");
	String d=request.getParameter("latt4");
	String e=request.getParameter("latt5");
	String f=request.getParameter("latt6");
	String g=request.getParameter("latt7");
        String h=request.getParameter("long1");
        String i=request.getParameter("long2");		
        String j=request.getParameter("long3");
	String k=request.getParameter("long4");
	String l=request.getParameter("long5");
	String m=request.getParameter("long6");
	String n=request.getParameter("long7");
        String o=request.getParameter("place1");
        String p=request.getParameter("place2");		
        String q=request.getParameter("place3");
	String r=request.getParameter("place4");
	String s=request.getParameter("place5");
	String t=request.getParameter("place6");
	String u=request.getParameter("place7");
        session.setAttribute("place1", o);
         session.setAttribute("place2", p);
          session.setAttribute("place3", q);
           session.setAttribute("place4", r);
            session.setAttribute("place5", s);
             session.setAttribute("place6", t);
              session.setAttribute("place7", u);
              System.out.println("your place"+o);
             
        
       Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
       
        
	
        String sql="insert into uploadss(keywords,location,keyname,des,latt1,latt2,latt3,latt4,latt5,latt6,latt7,long1,long2,long3,long4,long5,long6,long7,place1,place2,place3,place4,place5,place6,place7) values('"+keyword+"','"+location+"','"+keyname+"','"+des+"','"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+o+"','"+p+"','"+q+"','"+r+"','"+s+"','"+t+"','"+u+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("rating.jsp?message=Successfully Registered");
	
		}
				else{
		response.sendRedirect("rating.jsp?message=fail");
		
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





