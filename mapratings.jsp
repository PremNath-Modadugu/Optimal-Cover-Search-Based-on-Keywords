<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Eco Green Theme - Web Design Gallery</title>
<meta name="keywords" content="eco green, gallery theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Eco Green Theme Gallery is a free website template provided by tooplate.com" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />


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
    <% 
        
         String place1=null,place2=null,place3=null,place4=null,place5=null,place6=null,place7=null;
		
	place1=(String)session.getAttribute("place1");
        place2=(String)session.getAttribute("place2");
        place3=(String)session.getAttribute("place3");
        place4=(String)session.getAttribute("place4");
        place5=(String)session.getAttribute("place5");
        place6=(String)session.getAttribute("place6");
        place7=(String)session.getAttribute("place7");
	
   %>
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
				<li><a href="gallery.html" class="current">Gallery</a></li>
				<li><a href="news.html">News</a></li>
				<li><a href="blog.html">Blog</a></li>
				<li><a href="contact.html">Contact</a></li>
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
                    
                     <form name="form" action="mapratings1.jsp" method="get"> 
                          
                    <div align="center" color="red">
                        <center><h1> upload</h1><center>
                            <table>
 <tr><td><font color=brown>LOCATION</td></font><td><input size="10" type="text"  name="place1" value="<%=place1%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">DESCRIPTION</font><input size="10" type="text" name="de1" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">RATINGS</font><select name="rate1"  style="background-color:#A4E4F5;"> <option required="required">----------SelectRatings--------</option>
           
            <option value="15">15</option>
            <option value="30">30</option>
            <option value="45">45</option>
            <option value="60">60</option>
            <option value="75">75</option>
            <option value="95">95</option>
            <option value="100">100</option>
     </input> </select></td>
 
 </tr>
    <tr>
        <td><font color="red">other</font></td>
    </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LOCATION</td></font><td><input size="10" type="text"  name="place2" value="<%=place2%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">DESCRIPTION</font><input size="10" type="text" name="de2" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">RATINGS</font><select name="rate2"  style="background-color:#A4E4F5;"><option required="required">----------SelectRatings--------</option>
            
            <option value="15">15</option>
            <option value="30">30</option>
            <option value="45">45</option>
            <option value="60"60</option>
            <option value="75">75</option>
            <option value="95">95</option>
            <option value="100">100</option>
            </input></select></td>
    
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LOCATION</td></font><td><input size="10" type="text"  name="place3" value="<%=place3%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">DESCRIPTION</font><input size="10" type="text" name="de3" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">RATINGS</font><select name="rate3"  style="background-color:#A4E4F5;"><option required="required">----------SelectRatings--------</option>
            <option value="15">15</option>
            <option value="30">30</option>
            <option value="45">45</option>
            <option value="60">60</option>
            <option value="75">75</option>
            <option value="95">95</option>
            <option value="100">100</option>
        </input></select></td>
    
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LOCATION</td></font><td><input size="10" type="text"  name="place4" value="<%=place4%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">DESCRIPTION</font><input size="10" type="text" name="de4" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">RATINGS</font><select name="rate4"  style="background-color:#A4E4F5;"><option required="required">----------SelectRatings--------</option>
            <option value="15">15</option>
            <option value="30">30</option>
            <option value="45">45</option>
            <option value="60">60</option>
            <option value="75">75</option>
            <option value="95">95</option>
            <option value="100">100</option>
        </input></select></td>
    
    
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LOCATION</td></font><td><input size="10" type="text"  name="place5" value="<%=place5%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">DESCRIPTION</font><input size="10" type="text" name="de5" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">RATINGS</font><select name="rate5"  style="background-color:#A4E4F5;"><option required="required">----------SelectRatings--------</option>
            <option value="15">15</option>
            <option value="30">30</option>
            <option value="45">45</option>
            <option value="60">60</option>
            <option value="75">75</option>
            <option value="95">95</option>
            <option value="100">100</option>
        </input></select></td>
    
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LOCATION</td></font><td><input size="10" type="text"  name="place6" value="<%=place6%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">DESCRIPTION</font><input size="10" type="text" name="de6" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">RATINGS</font><select name="rate6"  style="background-color:#A4E4F5;"><option required="required">----------SelectRatings--------</option>
            <option value="15">15</option>
            <option value="30">30</option>
            <option value="45">45</option>
            <option value="60">60</option>
            <option value="75">75</option>
            <option value="95">95</option>
            <option value="100">100</option>
            </input> </select></td>
    
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LOCATION</td></font><td><input size="10" type="text"  name="place7" value="<%=place7%>" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">DESCRIPTION</font><input size="10" type="text" name="des7" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">RATINGS</font><select name="rate7"  style="background-color:#A4E4F5;"><option required="required">----------SelectRatings--------</option>
            <option value="15">15</option>
            <option value="30">30</option>
            <option value="45">45</option>
            <option value="60">60</option>
            <option value="75">75</option>
            <option value="95">95</option>
            <option value="100">100</option>
            </input> </select></td>
    
    
 </tr>
    
</table>
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
	<div class="cleaner"></div>
</div>
   
    <!-- end of body wrapper -->
<!--   Free Website Template by t o o p l a t e . c o m   -->
</body>
</html>