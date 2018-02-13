<%@page import="java.io.InputStream"%>
?<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Eco Green Theme - Blog Page</title>
<meta name="keywords" content="eco green, blog theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Eco Green Theme Blog is a free website template provided by tooplate.com" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/stylets.css" />
<%@ page import="java.sql.*,databaseconnection.*"%>

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<!--   Free Website Template by t o o p l a t e . c o m   -->
</head>

<body>
<div id="tooplate_body_wrapper" >
    <div id="tooplate_wrapper" style="color: palevioletred">
		<div id="tooplate_header">
                    <center><img src="images1/hed.png" alt="Image 03" width="400" height="100"/></center>
    	
<!--			<div id="site_title"><h1><a rel="nofollow" href="http://www.tooplate.com">Free Website Templates</a></h1></div>
        
			<div id="twitter"><a href="#"></a></div>-->
        
			<div class="cleaner"></div>
		</div>
    
		<div id="tooplate_menu">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="login2.jsp">user</a></li>
				<li><a href="admin.jsp">admin</a></li>
				<li><a href="uploaddes.jsp" class="current">upload</a></li>
<!--				<li><a href="contact.html">Contact</a></li>-->
			</ul>    	
			
			<div class="cleaner"></div>
		</div> <!-- end of tooplate_menu -->
    
		<div id="tooplate_middle_subpage">
			<marquee scrollamount="15"> <img src="images1/image11.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image12.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image13.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image14.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image15.jpg" alt="Image 03" width="200" height="150"/>
                    </marquee>
		</div>

                <div id="tooplate_main" style="background-image: url(images1/pa.jpg)"><span class="tm_top"></span>
                    <center><div class="CSSTableGenerator" >
                    <center><h1> VIEW USER DETAILS</h1>
                        <table width="50">
                <tr><td> ID</td><td> USERNAME</td><td>EMAIL_ID</td><td>MOBILE</td><td>DATE</td></tr>
                
               
                    
     <%
                                 
                        InputStream n1 = null;
                        String logo = null;
                        Integer ids=null;
                        String  username=null,emailid=null,mobile = null, date=null;
                        Connection con=databasecon.getconnection();
                        Statement st=con.createStatement();
                        ResultSet rs = st.executeQuery("select * from usereg");
                        while (rs.next()){
                            ids=rs.getInt("id");
                            System.out.print("your "+ids);
                            username=rs.getString("username");
                            emailid=rs.getString("emailid");
                            mobile=rs.getString("mobie");
                            date=rs.getString("date");
                            
                            
                      %>
                      <tr><td> <%=ids%></td>
                      <td><%=username%></td>
                      <td><%=emailid%></td>
                      <td><%= mobile%></td>
                      </td><td><%=date%></td></tr>
                      
            
                 
                        <%
                        }
                        %>
                         </table>
        
        </div></center>
                    
        
			<div class="cleaner"></div>
		</div> <!-- end of main -->
		
		<div id="tm_bottom"></div>
    
		<div id="tooplate_footer">
    	
			
    
		</div> <!-- end of footer -->
       
	</div> <!-- end of wrapper -->
	
	<div class="cleaner"></div>
</div> <!-- end of body wrapper -->
<!--   Free Website Template by t o o p l a t e . c o m   -->
</body>
</html>