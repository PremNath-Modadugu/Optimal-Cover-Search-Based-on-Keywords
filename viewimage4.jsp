<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Eco Green Theme - Web Design Gallery</title>
<meta name="keywords" content="eco green, gallery theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Eco Green Theme Gallery is a free website template provided by tooplate.com" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/stylet.css" />
<%@ page import="java.sql.*,databaseconnection.*"%>

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" />    
    
<!-- Arquivos utilizados pelo jQuery lightBox plugin -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="gallery_style.css" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->

<!-- Ativando o jQuery lightBox plugin -->
<script type="text/javascript">
$(function() {
    $('.lightbox').lightBox();
});
</script>
<script language="javascript">
    function validation(){
 var a = document.form.username.value;
var b = document.form.userid.value;
var c = document.form.emailid.value;
var d = document.form.password.value;
var e = document.form.mobie.value;
var f = document.form.date.value;
if(a=="")
{
alert("Enter your  username");
document.form.username.focus();
return false;
}
if(b=="")
{
alert("Enter your  userid");
document.form.userid.focus();
return false;
}
if(c=="")
{
alert("Enter Your valid EMAIL_ID");
document.form.emailid.focus();
return false;
 }
 if (c.indexOf("@", 0) < 0)
{
alert("Please Reenter a valid e-mail address.");
document.form.emailid.focus();
return false;
}
if (c.indexOf(".", 0) < 0)
{
alert("Please Reenter a valid e-mail address.");
document.form.emailid.focus();
return false;
}
 if(d=="")
{
alert("Enter Your valid password");
document.form.password.focus();
return false;
 }
 if(e=="")
{
alert("Enter Your valid mobile");
document.form.mobile.focus();
return false;
 }
 if(e.indexOf("[0-9]") <0);
{
alert("Enter Your valid mobile");
document.form.mobile.focus();
return false;
 }
 if(f=="")
{
alert("Enter Your valid password");
document.form.data.focus();
return false;
 }
    }
</script>
<!--   Free Website Template by t o o p l a t e . c o m   -->
</head>

<body>
<div id="tooplate_body_wrapper">
	<div id="tooplate_wrapper">
		<div id="tooplate_header">
                    <center><img src="images1/hed.png" alt="Image 03" width="400" height="100"/></center>
    	
<!--			<div id="site_title"><h1><a rel="nofollow" href="http://www.tooplate.com">Free Website Templates</a></h1></div>
        
			<div id="twitter"><a href="#"></a></div>-->
        
			<div class="cleaner"></div>
		</div>
    
		<div id="tooplate_menu">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="search1.jsp" class="current">search</a></li>
<!--				<li><a href="news.html">News</a></li>
				<li><a href="blog.html">Blog</a></li>
				<li><a href="contact.html">Contact</a></li>-->
			</ul>    	
        
			<div class="cleaner"></div>
		</div> <!-- end of tooplate_menu -->
    
    
		<div id="tooplate_middle_subpage">
                    <marquee scrollamount="15"> <img src="images1/image1.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image2.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image3.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image4.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image5.jpg" alt="Image 03" width="200" height="150"/>
                    </marquee>
			
                </div>

		<div id="tooplate_main" style="background-image: url(images1/pa.jpg)"><span class="tm_top"></span>
                    
                     <form name="form" action="feedback.jsp" method="get" onSubmit="return validation();">   
                    <div align="center" color="red">
                        <center><h1> IMAGE DETAILS</h1><center>
                            <%
                                 
                        InputStream n1 = null;
                        String logo = null;
                        String place1 = null, de1=null,rate1=null;
//                        int uploadId = Integer.parseInt(request.getQueryString());
//                        System.out.println("your id is "+uploadId);
//                        session.setAttribute("uploadId",uploadId);
                       
                        Integer id=null;
                        id=(Integer)session.getAttribute("id");
                        int i = 1;
                        Connection con=databasecon.getconnection();
                        Statement st=con.createStatement();
                        ResultSet rs = st.executeQuery("select * from imageup where id='"+id+"'");
                        while (rs.next()){
                            place1=rs.getString("place4");
                            de1=rs.getString("de4");
                            rate1=rs.getString("rate4");
                            
                            
                      %>
                    <div><img src="viewimage24.jsp?id=<%=id%>" alt="" width="350" height="250" /></div>
                    <center><div class="CSSTableGenerator" >
            <table width="300" >
                <tr><td> place</td><td> <%=place1%></td></tr>
                <tr><td> DESCRIPTION</td><td> <%=de1%></td></tr>
                <tr><td> RATINGS</td><td> <%=rate1%></td></tr>
                </table>
                <div>
                       
                            <h1> your feedback </h1> 
                            <input size="10" type="text" name="uattri" value="" style="margin-left: 5px;width: 500px;height: 50px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/>
                            
                            <input type="submit" name="submit" value="my suggesion"style="width: 150px;height: 30px;font-size: 20px;border-radius: 30px;background-color: pink;color: red"/><br><br><br><br>
                            <label style="font-size: 20px;margin-left: 70px"> Rating</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="rating" >     
        <input type="radio" name="stars" id="4_stars" value="5" >
        <label class="stars" for="4_stars">4 stars</label>
        <input type="radio" name="stars" id="3_stars" value="4" >
        <label class="stars" for="3_stars">3 stars</label>
        <input type="radio" name="stars" id="2_stars" value="3" >
        <label class="stars" for="2_stars">2 stars</label>
        <input type="radio" name="stars" id="1_stars" value="2" >
        <label class="stars" for="1_stars">1 star</label>
        <input type="radio" name="stars" id="0_stars" value="1" required>
        <label class="stars" for="0_stars">0 star</label>
        <span  class="label"> Rating: </span>
    </div >
                        </form>
                    </div>
                        <%
                        }
                        %>
        
        </div></center>
                         
                        </div>
                        
                         </form>
                       
    
                    
		</div>
                <!
                -- end of main -->
    
		<div id="tm_bottom"></div>
    
		<div id="tooplate_footer">
    	
       
    
		</div> <!-- end of footer -->
        
	</div> <!-- end of wrapper -->
	<div class="cleaner"></div>
</div>
   
    <!-- end of body wrapper -->
<!--   Free Website Template by t o o p l a t e . c o m   -->
</body>
</html>