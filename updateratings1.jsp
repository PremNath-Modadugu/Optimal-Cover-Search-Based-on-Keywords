<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Eco Green Theme - Web Design Gallery</title>
<meta name="keywords" content="eco green, gallery theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Eco Green Theme Gallery is a free website template provided by tooplate.com" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style_1.css" />

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

		<div id="tooplate_main" style="background-image: url(images1/pa.jpg)"  ><span class="tm_top"></span>
                    
                     <form name="form" action="updateratings2.jsp" method="get" onSubmit="return validation();">   
                    <div align="center" color="red">
                        <center><font color="RED"><h1> UPDATE</font></h1><center>
                            <table>
                                <tr>
                                        <td style="color:salmon"> your IDS</td>
                                        <td><input type="text" name="nids" id="user" style="margin-left: 10px;width: 250px;height: 20px;font-size: 15px;border-radius: 5px;background-color: bisque;color: black"/>
                                            
                                        </td>
                                    </tr>
                                
                                
                                
                                
                                
                                
                            </table><br>
                                <input type="submit" name="submit" value="NEXT"  id="user" style="width: 100px; height: 25px;"/>
                        </div>
                         </form>
    
                    
		</div>
                <!
                -- end of main -->
    
		<div id="tm_bottom"></div>
    
		<div id="tooplate_footer">
    	
       
    
		</div> <!-- end of footer -->
        
	</div> <!-- end of wrapper -->
<!--	<div class="cleaner"></div>-->
</div>
   
    <!-- end of body wrapper -->
<!--   Free Website Template by t o o p l a t e . c o m   -->
</body>
</html>