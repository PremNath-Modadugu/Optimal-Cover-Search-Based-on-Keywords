<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Eco Green Theme - Web Design Gallery</title>
<meta name="keywords" content="eco green, gallery theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Eco Green Theme Gallery is a free website template provided by tooplate.com" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
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
<!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->

<!-- Ativando o jQuery lightBox plugin -->
<script type="text/javascript">
$(function() {
    $('.lightbox').lightBox();
});
</script>
<script language="javascript">
    function validation(){
 var a = document.form.keyword.value;
var b = document.form.location.value;
var c = document.form.keyname.value;
var d = document.form.desc.value;
var a = document.form.keyword.value;
var b = document.form.location.value;
var c = document.form.keyname.value;
var d = document.form.desc.value;
var a = document.form.keyword.value;
var b = document.form.location.value;
var c = document.form.keyname.value;
var d = document.form.desc.value;
var a = document.form.keyword.value;
var b = document.form.location.value;
var c = document.form.keyname.value;
var d = document.form.desc.value;
var a = document.form.keyword.value;
var b = document.form.location.value;
var c = document.form.keyname.value;
var d = document.form.desc.value;
if(a=="")
{
alert("Enter your  keyword");
document.form.keyword.focus();
return false;
}
if(b=="")
{
alert("Enter your  location");
document.form.location.focus();
return false;
}
if(c=="")
{
alert("Enter Your valid keyname");
document.form.keyname.focus();
return false;
 }
 if(d=="")
{
alert("Enter Your valid description");
document.form.desc.focus();
return false;
 }
 if(a=="")
{
alert("Enter your  keyword");
document.form.keyword.focus();
return false;
}
if(b=="")
{
alert("Enter your  location");
document.form.location.focus();
return false;
}
if(c=="")
{
alert("Enter Your valid keyname");
document.form.keyname.focus();
return false;
 }
 if(d=="")
{
alert("Enter Your valid description");
document.form.desc.focus();
return false;
 }
 if(a=="")
{
alert("Enter your  keyword");
document.form.keyword.focus();
return false;
}
if(b=="")
{
alert("Enter your  location");
document.form.location.focus();
return false;
}
if(c=="")
{
alert("Enter Your valid keyname");
document.form.keyname.focus();
return false;
 }
 if(d=="")
{
alert("Enter Your valid description");
document.form.desc.focus();
return false;
 }
 if(a=="")
{
alert("Enter your  keyword");
document.form.keyword.focus();
return false;
}
if(b=="")
{
alert("Enter your  location");
document.form.location.focus();
return false;
}
if(c=="")
{
alert("Enter Your valid keyname");
document.form.keyname.focus();
return false;
 }
 if(d=="")
{
alert("Enter Your valid description");
document.form.desc.focus();
return false;
 }
 if(a=="")
{
alert("Enter your  keyword");
document.form.keyword.focus();
return false;
}
if(b=="")
{
alert("Enter your  location");
document.form.location.focus();
return false;
}
if(c=="")
{
alert("Enter Your valid keyname");
document.form.keyname.focus();
return false;
 }
 if(d=="")
{
alert("Enter Your valid description");
document.form.desc.focus();
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
				<li><a href="index.jsp">Home</a></li>
				<li><a href="login2.jsp" class="current">user</a></li>
				<li><a href="admin.jsp">admin</a></li>
<!--				<li><a href="blog.html">Blog</a></li>
				<li><a href="contact.html">Contact</a></li>-->
			</ul>    	
        
			<div class="cleaner"></div>
		</div> <!-- end of tooplate_menu -->
    
    
		<div id="tooplate_middle_subpage">
                    <marquee scrollamount="15"> <img src="images1/image6.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image7.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image8.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image9.jpg" alt="Image 03" width="200" height="150"/>
                        <img src="images1/image10.jpg" alt="Image 03" width="200" height="150"/>
                 
                    </marquee>-->
                </div>

		<div id="tooplate_main" style="background-image: url(images1/pa.jpg)"><span class="tm_top"></span>
                    
                     <form name="form" action="updateratings3.jsp" method="post"  > 
                         
                         <% 
                             
        
         String places1=null,places2=null,places3=null,places4=null,places5=null,places6=null,places7=null, nid=null ;
         String rates1=null,rates2=null,rates3=null,rates4=null,rates5=null,rates6=null,rates7=null;
         String det1=null,det2=null,det3=null,det4=null,det5=null,det6=null,det7=null;
		
	nid=(String)session.getAttribute("nids");
       System.out.println("your id is ="+nid);
       Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from imageup where  id='"+nid+"'");
       
        while(rs.next()){
            
             places1=rs.getString("place1");
             places2=rs.getString("place2");
             places3=rs.getString("place3");
             places4=rs.getString("place4");
             places5=rs.getString("place5");
             places6=rs.getString("place6");
             places7=rs.getString("place7");
             rates1=rs.getString("rate1");
             rates2=rs.getString("rate2");
             rates3=rs.getString("rate3");
             rates4=rs.getString("rate4");
             rates5=rs.getString("rate5");
             rates6=rs.getString("rate6");
             rates7=rs.getString("rate7");
             det1=rs.getString("de1");
             det2=rs.getString("de2");
             det3=rs.getString("de3");
             det4=rs.getString("de4");
             det5=rs.getString("de5");
             det6=rs.getString("de6");
             det7=rs.getString("de7");
            
            
        }
             
           
            %>
        
       
	
   
                    <div align="center" color="red">
                        <center><h1> UPDATE DATAS</h1><center>
                            <table>
 <tr><td><font color=brown>NAME</td></font><td><input size="10" type="text"  name="place1" value="<%=places1%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">RATINGS</font><input size="10" type="text"  name="rate1" value="<%=rates1%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
 <tr>
     <td><font color=brown>DESCRIPTION</td><td><input size="10" type="text" name="de1" value="<%=det1%>" style="margin-left: 5px;width: 600px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/></font><td></input> </td>
 </tr>
 </tr>
    <tr>
        <td><font color="red">OTHER</font></td>
    </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">NAME</td></font><td><input size="10" type="text"  name="place2" value="<%=places2%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">RATINGS</font><input size="10" type="text"  name="rate2" value="<%=rates2%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
    <tr>
     <td><font color=brown>DESCRIPTION</td></font><td><input size="10" type="text" name="de2" value="<%=det2%>" style="margin-left: 5px;width: 600px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/></input> </td>
 </tr>
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">NAME</td></font><td><input size="10" type="text"  name="place3" value="<%=places3%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">RATINGS</font><input size="10" type="text"  name="rate3" value="<%=rates3%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
    <tr>
     <td><font color=brown>DESCRIPTION</td></font><td><input size="10" type="text" name="de3" value="<%=det3%>" style="margin-left: 5px;width: 600px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/></input> </td>
 </tr>
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">NAME</td></font><td><input size="10" type="text"  name="place4" value="<%=places4%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">RATINGS</font><input size="10" type="text"  name="rate4" value="<%=rates4%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown"></td>
    <tr>
     <td><font color=brown>DESCRIPTION</td></font><td><input size="10" type="text" name="de4" value="<%=det4%>" style="margin-left: 5px;width: 600px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/></input> </td>
 </tr>
    
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">NAME</td></font><td><input size="10" type="text"  name="place5" value="<%=places5%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">RATINGS</font><input size="10" type="text"  name="rate5" value="<%=rates5%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
    <tr>
     <td><font color=brown>DESCRIPTION</td></font><td><input size="10" type="text" name="de5" value="<%=det5%>" style="margin-left: 5px;width: 600px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/></input> </td>
 </tr>
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">NAME</td></font><td><input size="10" type="text"  name="place6" value="<%=places6%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">RATINGS</font><input size="10" type="TEXT"  name="rate6" value="<%=rates6%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
    <tr>
     <td><font color=brown>DESCRIPTION</td></font><td><input size="10" type="text" name="de6" value="<%=det6%>" style="margin-left: 5px;width: 600px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/></input> </td>
 </tr>
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">NAME</td></font><td><input size="10" type="text"  name="place7" value="<%=places7%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">RATINGS</font><input size="10" type="TEXT"  name="rate7" value="<%=rates7%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
    <tr>
     <td><font color=brown>DESCRIPTION</td></font><td><input size="10" type="text" name="de7" value="<%=det7%>" style="margin-left: 5px;width: 600px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/></input> </td>
 </tr>
    
 </tr>
    
</table>
                                <input type="submit" name="submit" value="UPDATE"  id="user" style="width: 100px; height: 25px;"/>
                                
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