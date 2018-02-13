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

<!--   Free Website Template by t o o p l a t e . c o m   -->
</head>

<body>
     <form id="kk" method="post"> 
<div id="tooplate_body_wrapper">
	<div id="tooplate_wrapper">
		<div id="tooplate_header">
                    <center><img src="images1/hed.png" alt="Image 03" width="400" height="100"/></center>
    	
<!--			<div id="site_title"><h1><a rel="nofollow" href="http://www.tooplate.com">Free Website Templates</a></h1></div>
        
			<div id="twitter"><a href="#"></a></div>
        -->
			<div class="cleaner"></div>
		</div>
    
		<div id="tooplate_menu">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="login2.jsp" class="current">user</a></li>
				<li><a href="search1.jsp">search</a></li>
<!--				<li><a href="blog.html">Blog</a></li>
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

		<div id="tooplate_main"  style="background-image: url(images1/pa.jpg)"><span class="tm_top"></span>
                    
                     <div>
                        
        <%
            Integer id=null;
            String keywords=request.getParameter("key");
           String location=request.getParameter("location");
        System.out.println("your key"+keywords);
            System.out.println("your location"+location); 
        String latt1=null,latt2=null,latt3 =null,latt4=null,latt5=null,latt6=null,latt7=null;
        String long1=null,long2=null,long3 =null,long4=null,long5=null,long6=null,long7=null;
        String place1=null,place2=null,place3 =null,place4=null,place5=null,place6=null,place7=null;
       
        Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from uploadss where  keywords like '%"+keywords+"%' and location like '%"+location+"%' or  keyname like '%"+keywords+"%' and location like '%"+location+"%'");
       
        while(rs.next()){
            id=rs.getInt("id");
            session.setAttribute("id", id);
            System.out.println("your id"+id);
            latt1=rs.getString("latt1");
            latt2=rs.getString("latt2");
            latt3=rs.getString("latt3");
            latt4=rs.getString("latt4");
            latt5=rs.getString("latt5");
            latt6=rs.getString("latt6");
            latt7=rs.getString("latt7");
             long1=rs.getString("long1");
             long2=rs.getString("long2");
             long3=rs.getString("long3");
             long4=rs.getString("long4");
             long5=rs.getString("long5");
             long6=rs.getString("long6");
             long7=rs.getString("long7"); 
             place1=rs.getString("place1");
             place2=rs.getString("place2");
             place3=rs.getString("place3");
            place4=rs.getString("place4");
            place5=rs.getString("place5");
            place6=rs.getString("place6");
            place7=rs.getString("place7");
            
                    
             
           
            %>
            
      
            <script lang="javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
            <script lang="javascript">
        var infowindow = null;
//$(document).ready(function () { initialize(); });
 
window.onload=function initialize() {
 
var centerMap = new google.maps.LatLng(21, 78);
 
var myOptions = {
zoom: 3,
center: centerMap,
mapTypeId: google.maps.MapTypeId.ROADMAP
}
 
var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
 
setMarkers(map, sites);
infowindow = new google.maps.InfoWindow({
content: "loading..."
});
 
//var bikeLayer = new google.maps.BicyclingLayer();
//bikeLayer.setMap(map);
}
 
var sites = [
['<%=latt1%>','<%=long1%>','<%=place1%>'],
['<%=latt2%>','<%=long2%>','<%=place2%>'],
['<%=latt3%>','<%=long3%>','<%=place3%>'],
['<%=latt4%>','<%=long4%>','<%=place4%>'],
['<%=latt5%>','<%=long5%>','<%=place5%>'],
['<%=latt6%>','<%=long6%>','<%=place6%>'],
['<%=latt7%>','<%=long7%>','<%=place7%>']

];
 
function setMarkers(map, markers) {
 
for (var i = 0; i < markers.length; i++) {
var sites = markers[i];
var siteLatLng = new google.maps.LatLng(sites[0], sites[1]);
var marker = new google.maps.Marker({
position: siteLatLng,
map: map,
title: sites[0],
zIndex: sites[2],
//html: sites[4]
});
 
var contentString = "Some content";
 
google.maps.event.addListener(marker, "click", function () {
infowindow.setContent(this.html);
infowindow.open(map, this);
});
}
}
   <% 
       }
        
       %>  
             
            <%
             String de1=null,de2=null,de3 =null,de4=null,de5=null,de6=null,de7=null;
            String rate1=null,rate2=null,rate3 =null,rate4=null,rate5=null,rate6=null,rate7=null;
            Connection con1=databasecon.getconnection();
           Statement st1=con1.createStatement();
           System.out.println("your id"+id);
           
           ResultSet rs1=st1.executeQuery("select * from imageup where id='"+id+"'");
           while (rs1.next()){
                rate1=rs1.getString("rate1");
               rate2=rs1.getString("rate2");
               rate3=rs1.getString("rate3");
               rate4=rs1.getString("rate4");
               rate5=rs1.getString("rate5");
                rate6=rs1.getString("rate6");
               rate7=rs1.getString("rate7");
               System.out.println("your rate"+rate1);
           }
          
              
        %>
        
    </script>
    </form>
   <div id="map_canvas" style="width: 950px; height: 450px"></div>
    <hr></hr>
    <center><div class="CSSTableGenerator" >
            <table width="300" >
                    <tr>
                        <td>
                            NAME
                        </td>
                        
                        <td>
                            RATINGS%
                        </td>
                        <td>
                            IMAGE
                        </td>
                       
                            
                    </tr>
                    <tr>
                        <td >
                            <%=place1%>
                        </td>
                        
                        <td>
                           <%=rate1%> 
                        </td>
                        <td>
                           <ul>
                               <li><a href="viewimage1.jsp">see images</a></li></ul>
                        </td>
                        </td>
                    </tr>
                    <tr>
                        <td >
                           <%=place2%>
                        </td>
                        
                        <td>
                            <%=rate2%>
                        </td>
                        <td>
                            <ul>
                               <li><a href="viewimage2.jsp">see images</a></li></ul>
                        </td>
                    </tr>
                    <tr>
                        <td >
                           <%=place3%>
                        </td>
                        
                        <td>
                           <%=rate3%>
                        </td>
                        <td>
                            <ul>
                               <li><a href="viewimage3.jsp">see images</a></li></ul>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <%=place4%>
                        </td>
                        
                        <td>
                            <%=rate4%>
                        </td>
                        <td>
                            <ul>
                               <li><a href="viewimage4.jsp">see images</a></li></ul>
                        </td>
                    </tr>
                    <tr>
                        <td >
                           <%=place5%>
                        </td>
                       
                        <td>
                           <%=rate5%>
                        </td>
                        <td>
                           <ul>
                               <li><a href="viewimage5.jsp">see images</a></li></ul>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <%=place6%>
                        </td>
                        
                        <td>
                            <%=rate6%>
                        </td>
                        <td>
                            <ul>
                               <li><a href="viewimage6.jsp">see images</a></li></ul>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <%=place7%>
                        </td>
                        <td >
                            <%=rate7%>
                        </td>
                        <td>
                            <ul>
                               <li><a href="viewimage7.jsp">see images</a></li></ul>
                        </td>
                    </tr>
                </table>
                        <%
         
                        %>
        
        </div></center>
            
    
                         
                       
            
                        </div>
    
                    
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