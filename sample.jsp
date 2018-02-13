<%-- 
    Document   : sample
    Created on : Sep 1, 2015, 11:06:53 AM
    Author     : java1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String keyword=null,location=null,keyname=null,des=null;
                     keyword=(String)session.getAttribute("keyword");
                     location=(String)session.getAttribute("locaton");
                     keyname=(String)session.getAttribute("keyname");
                     des=(String)session.getAttribute("des");
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
        %>
    </body>
</html>
