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
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
    
//<![CDATA[
// Latitude and Longitude math routines are from: http://www.fcc.gov/mb/audio/bickel/DDDMMSS-decimal.html

var map = null;
var latsgn = 1;
var lgsgn = 1;
var marker = null;
var posset = 0;
var ls='';
var lm='';
var ld='';
var lgs='';
var lgm='';
var lgd='';
var mrks = {mvcMarkers: new google.maps.MVCArray()};
var iw;
var drag=false;

function xz() {
ll = new google.maps.LatLng(20.0, -10.0);
zoom=2;
var mO = {
scaleControl:true,
zoom:zoom,
zoomControl:true,
zoomControlOptions: {style:google.maps.ZoomControlStyle.LARGE},
center: ll,
disableDoubleClickZoom:true,
mapTypeId: google.maps.MapTypeId.ROADMAP
};
map = new google.maps.Map(document.getElementById("map"), mO);
map.setTilt(0);
map.panTo(ll);
marker = new google.maps.Marker({position:ll,map:map,draggable:true,title:'Marker is Draggable'});   

google.maps.event.addListener(marker, 'click', function(mll) {
gC(mll.latLng);
var html= "<div style='color:#000;background-color:#fff;padding:5px;width:150px;'><p>Latitude - Longitude:<br />" + String(mll.latLng.toUrlValue()) + "<br /><br />Lat: " + ls +  "&#176; " + lm +  "&#39; "  + ld + "&#34;<br />Long: " + lgs +  "&#176; " + lgm +  "&#39; " + lgd + "&#34;</p></div>";
iw = new google.maps.InfoWindow({content:html});
iw.open(map,marker);
});
google.maps.event.addListener(marker, 'dragstart', function() {if (iw){iw.close();}});

google.maps.event.addListener(marker, 'dragend', function(event) {
posset = 1;
if (map.getZoom() < 10){map.setZoom(10);}
map.setCenter(event.latLng);
computepos(event.latLng);
drag=true;
setTimeout(function(){drag=false;},250);
});

google.maps.event.addListener(map, 'click', function(event) {
if (drag){return;}
posset = 1;
fc(event.latLng) ;
if (map.getZoom() < 10){map.setZoom(10);}
map.panTo(event.latLng);
computepos(event.latLng);
});

}

function computepos (point)
{
var latA = Math.abs(Math.round(point.lat() * 1000000.));
var lonA = Math.abs(Math.round(point.lng() * 1000000.));
if(point.lat() < 0)
{
	var ls = '-' + Math.floor((latA / 1000000)).toString();
}
else
{
	var ls = Math.floor((latA / 1000000)).toString();
}
var lm = Math.floor(((latA/1000000) - Math.floor(latA/1000000)) * 60).toString();
var ld = ( Math.floor(((((latA/1000000) - Math.floor(latA/1000000)) * 60) - Math.floor(((latA/1000000) - Math.floor(latA/1000000)) * 60)) * 100000) *60/100000 ).toString();
if(point.lng() < 0)
{
  var lgs = '-' + Math.floor((lonA / 1000000)).toString();
}
else
{
	var lgs = Math.floor((lonA / 1000000)).toString();
}
var lgm = Math.floor(((lonA/1000000) - Math.floor(lonA/1000000)) * 60).toString();
var lgd = ( Math.floor(((((lonA/1000000) - Math.floor(lonA/1000000)) * 60) - Math.floor(((lonA/1000000) - Math.floor(lonA/1000000)) * 60)) * 100000) *60/100000 ).toString();
document.getElementById("latbox").value=point.lat().toFixed(6);
document.getElementById("latboxm").value=ls;
document.getElementById("latboxmd").value=lm;
document.getElementById("latboxms").value=ld;
document.getElementById("lonbox").value=point.lng().toFixed(6);
document.getElementById("lonboxm").value=lgs;
document.getElementById("lonboxmd").value=lgm;
document.getElementById("lonboxms").value=lgd;
}

function showAddress(address) {
var geocoder = new google.maps.Geocoder();
geocoder.geocode( { 'address': address}, function(results, status) {
 if (status == google.maps.GeocoderStatus.OK) {
  map.setCenter(results[0].geometry.location);
  map.setMapTypeId(google.maps.MapTypeId.HYBRID);
  if (map.getZoom() < 16){map.setZoom(16);}else{}
  marker.setPosition(results[0].geometry.location);
  posset = 1;
  computepos(results[0].geometry.location);
 } else {
  alert("Geocode was not successful for the following reason: " + status);
 }
});
}

function showLatLong(latitude, longitude) {
if (isNaN(latitude)) {alert(' Latitude must be a number. e.g. Use +/- instead of N/S'); return false;}
if (isNaN(longitude)) {alert(' Longitude must be a number.  e.g. Use +/- instead of E/W'); return false;}

latitude1 = Math.abs( Math.round(latitude * 1000000.));
if(latitude1 > (90 * 1000000)) { alert(' Latitude must be between -90 to 90. ');  document.getElementById("latbox1").value=''; return;}
longitude1 = Math.abs( Math.round(longitude * 1000000.));
if(longitude1 > (180 * 1000000)) { alert(' Longitude must be between -180 to 180. ');  document.getElementById("lonbox1").value='';  return;}

var point = new google.maps.LatLng(latitude,longitude);
posset = 1;
if (map.getZoom() < 13){map.setZoom(13);}else{}
map.setMapTypeId(google.maps.MapTypeId.HYBRID);
map.setCenter(point);
fc(point);
computepos(point);
}

function showLatLong1(latitude, latitudem,latitudes, longitude,  longitudem,  longitudes) {
if (isNaN(latitude)) {alert(' Latitude must be a number. e.g. Use +/- instead of N/S'); return false;}
if (isNaN(latitudem)) {alert(' Latitude must be a number. e.g. Use +/- instead of N/S'); return false;}
if (isNaN(latitudes)) {alert(' Latitude must be a number. e.g. Use +/- instead of N/S'); return false;}
if (isNaN(longitude)) {alert(' Longitude must be a number.  e.g. Use +/- instead of E/W'); return false;}
if (isNaN(longitudem)) {alert(' Longitude must be a number.  e.g. Use +/- instead of E/W'); return false;}
if (isNaN(longitudes)) {alert(' Longitude must be a number.  e.g. Use +/- instead of E/W'); return false;}

if (latitude.indexOf('-') < 0){latsgn = 1;}else{latsgn = -1;}
alat = Math.abs( Math.round(latitude * 1000000.));
if(alat > (90 * 1000000)) { alert(' Degrees Latitude must be between -90 to 90. ');  document.getElementById("latbox1m").value=''; document.getElementById("latbox1md").value=''; document.getElementById("latbox1ms").value=''; return; }
latitudem = Math.abs(Math.round(latitudem * 1000000.)/1000000);  //integer
absmlat = Math.abs(Math.round(latitudem * 1000000.));  //integer
if(absmlat >= (60 * 1000000)) {  alert(' Minutes Latitude must be between 0 to 59. ');  document.getElementById("latbox1md").value=''; document.getElementById("latbox1ms").value=''; return;}
latitudes = Math.abs(Math.round(latitudes * 1000000.)/1000000);
absslat = Math.abs(Math.round(latitudes * 1000000.));
if(absslat > (59.99999999 * 1000000)) {  alert(' Seconds Latitude must be between 0 and 59.99. '); document.getElementById("latbox1ms").value=''; return; }

if (longitude.indexOf('-') < 0){lgsgn = 1;}else{lgsgn = -1;}
alon = Math.abs( Math.round(longitude * 1000000.));
if(alon > (180 * 1000000)) {  alert(' Degrees Longitude must be between -180 to 180. '); document.getElementById("lonbox1m").value=''; document.getElementById("lonbox1md").value=''; document.getElementById("lonbox1ms").value=''; return;}
longitudem = Math.abs(Math.round(longitudem * 1000000.)/1000000);
absmlon = Math.abs(Math.round(longitudem * 1000000));
if(absmlon >= (60 * 1000000))   {  alert(' Minutes Longitude must be between 0 to 59. '); document.getElementById("lonbox1md").value=''; document.getElementById("lonbox1ms").value='';   return;}
longitudes = Math.abs(Math.round(longitudes * 1000000.)/1000000);
absslon = Math.abs(Math.round(longitudes * 1000000.));
if(absslon > (59.99999999 * 1000000)) {  alert(' Seconds Longitude must be between 0 and 59.99. '); document.getElementById("lonbox1ms").value=''; return;}

latitude = Math.round(alat + (absmlat/60.) + (absslat/3600.) ) * latsgn/1000000;
longitude = Math.round(alon + (absmlon/60) + (absslon/3600) ) * lgsgn/1000000;
var point = new google.maps.LatLng(latitude,longitude);
posset = 1;
if (map.getZoom() < 13){map.setZoom(13);}else{}
map.setMapTypeId(google.maps.MapTypeId.HYBRID);
map.setCenter(point);
fc(point);
computepos(point);
}

function lotsize()
{
if (posset == 0)
{
	alert("Position Not Set.  Please click on the spot on the map to set the lot size map point.");
	return;
}
var point = map.getCenter();
var t1 = String(point);
t1 = t1.replace(/[() ]+/g,"");
var lotsize_str = "http://www.satelliteview.co/?e=" + t1 + ":0:Latitude-Longitude Point:measure:0";
var popup = window.open(lotsize_str, "llwindow");
popup.focus();
}

function getaddress()
{
if (posset == 0)
{
	alert("Position Not Set.  Please click on the spot on the map to set the get address map point.");
	return;
}
var point = map.getCenter();
var t1 = String(point);
t1 = t1.replace(/[() ]+/g,"");
var getaddr_str = "http://www.satelliteview.co/?e=" + t1 + ":0:Latitude-Longitude Point:map:0";
var popup = window.open(getaddr_str, "llwindow");
popup.focus();
}

function latlongwiki()
{
if (posset == 0)
{
	alert("Position Not Set.  Please click on the spot on the map to set the latlongwiki map point.");
	return;
}
var point = map.getCenter();
var llwiki_str = "http://www.latlongwiki.com/?title=Latitude-Longitude Point&l=" + point.lat() + "&g=" + point.lng();
var popup = window.open(llwiki_str, "llwindow");
popup.focus();
}

function fc(point)
{
gC(point);
var html= "<div style='color:#000;background-color:#fff;padding:3px;width:150px;'><p>Latitude - Longitude:<br />" + String(point.toUrlValue()) + "<br /><br />Lat: " + ls +  "&#176; " + lm +  "&#39; "  + ld + "&#34;<br />Long: " + lgs +  "&#176; " + lgm +  "&#39; " + lgd + "&#34;</p></div>";
var iw = new google.maps.InfoWindow({content:html});
var marker = new google.maps.Marker({position:point,map:map,icon:'/i/blue-dot.png',draggable:true});
mrks.mvcMarkers.push(marker);
google.maps.event.addListener(marker, 'click', function(event) {
gC(event.latLng);
var html= "<div style='color:#000;background-color:#fff;padding:3px;width:150px;'><p>Latitude - Longitude:<br />" + String(event.latLng.toUrlValue()) + "<br /><br />Lat: " + ls +  "&#176; " + lm +  "&#39; "  + ld + "&#34;<br />Long: " + lgs +  "&#176; " + lgm +  "&#39; " + lgd + "&#34;</p></div>";
var iw = new google.maps.InfoWindow({content:html});
iw.open(map,marker);
computepos(event.latLng);
});
}

function rL()
{
var marker = mrks.mvcMarkers.pop();
if (marker)
{
marker.setMap(null);
document.getElementById("latbox").value='';
document.getElementById("latboxm").value='';
document.getElementById("latboxmd").value='';
document.getElementById("latboxms").value='';
document.getElementById("lonbox").value='';
document.getElementById("lonboxm").value='';
document.getElementById("lonboxmd").value='';
document.getElementById("lonboxms").value='';
}
}

function gC(ll){
var latA = Math.abs(Math.round(ll.lat() * 1000000.));
var lonA = Math.abs(Math.round(ll.lng() * 1000000.));
if(ll.lat() < 0)
{
	var tls = '-' + Math.floor((latA / 1000000)).toString();
}
else
{
	var tls = Math.floor((latA / 1000000)).toString();
}
var tlm = Math.floor(((latA/1000000) - Math.floor(latA/1000000)) * 60).toString();
var tld = ( Math.floor(((((latA/1000000) - Math.floor(latA/1000000)) * 60) - Math.floor(((latA/1000000) - Math.floor(latA/1000000)) * 60)) * 100000) *60/100000 ).toString();
ls = tls.toString();
lm = tlm.toString();
ld = tld.toString();

if(ll.lng() < 0)
{
  var tlgs = '-' + Math.floor((lonA / 1000000)).toString();
}
else
{
	var tlgs = Math.floor((lonA / 1000000)).toString();
}
var tlgm = Math.floor(((lonA/1000000) - Math.floor(lonA/1000000)) * 60).toString();
var tlgd = ( Math.floor(((((lonA/1000000) - Math.floor(lonA/1000000)) * 60) - Math.floor(((lonA/1000000) - Math.floor(lonA/1000000)) * 60)) * 100000) *60/100000 ).toString();
lgs = tlgs.toString();
lgm = tlgm.toString();
lgd = tlgd.toString();
}

function reset() {
mrks.mvcMarkers.forEach(function(elem, index) {elem.setMap(null);});
mrks.mvcMarkers.clear();
document.getElementById("latbox").value='';
document.getElementById("latboxm").value='';
document.getElementById("latboxmd").value='';
document.getElementById("latboxms").value='';
document.getElementById("lonbox").value='';
document.getElementById("lonboxm").value='';
document.getElementById("lonboxmd").value='';
document.getElementById("lonboxms").value='';
marker.setPosition(map.getCenter());
}

function reset1() {
marker.setPosition(map.getCenter());
computepos (map.getCenter());
}

//]]>
</script>
<script language="JavaScript">
    function validation(){
var a = document.form.latt1.value;
var b = document.form.latt2.value;
var c = document.form.latt3.value;
var d = document.form.latt4.value;
var e = document.form.latt5.value;
var f = document.form.latt6.value;
var g = document.form.latt7.value;
var g = document.form.long1.value;
var i = document.form.long2.value;
var j = document.form.long3.value;
var k = document.form.long4.value;
var l = document.form.long5.value;
var m = document.form.long6.value;
var n = document.form.long7.value;
var o = document.form.place1.value;
var p = document.form.place2.value;
var q = document.form.place3.value;
var r = document.form.place4.value;
var s = document.form.place5.value;
var t = document.form.place6.value;
var u = document.form.place7.value;
if(a=="")
{
alert("Enter your  latitude");
document.form.latt1.focus();
return false;
}
if(b=="")
{
alert("Enter your  latitude");
document.form.latt2.focus();
return false;
}
if(c=="")
{
alert("Enter Your latitude");
document.form.latt3.focus();
return false;
 }
 

 if(d=="")
{
alert("Enter Your latitude");
document.form.latt4.focus();
return false;
 }
 if(e=="")
{
alert("Enter your  latitude");
document.form.latt5.focus();
return false;
}
if(f=="")
{
alert("Enter your  latitude");
document.form.latt6.focus();
return false;
}
if(g=="")
{
alert("Enter Your latitude");
document.form.latt7.focus();
return false;
 }
 if(h=="")
{
alert("Enter Your longitude");
document.form.long1.focus();
return false;
 }
 if(i=="")
{
alert("Enter Your valid longitude");
document.form.long2.focus();
return false;
 }
 if(j=="")
{
alert("Enter Your longitude");
document.form.long3.focus();
return false;
 }
 if(k=="")
{
alert("Enter Your valid longitude");
document.form.long4.focus();
return false;
 }

 if(l=="")
{
alert("select date");
document.form.long5.focus();
return false;
 }
 if(m=="")
{
alert("Enter Your valid longitude");
document.form.long6.focus();
return false;
 }

 if(n=="")
{
alert("enter your valid longitude");
document.form.long7.focus();
return false;
 }
 if(o=="")
{
alert("select your place");
document.form.place1.focus();
return false;
 }
 if(p=="")
{
alert("select your place");
document.form.place2.focus();
return false;
 }
 if(q=="")
{
alert("select your place");
document.form.place3.focus();
return false;
 }
 if(r=="")
{
alert("select your place");
document.form.place4.focus();
return false;
 }
 if(s=="")
{
alert("select your place");
document.form.place5.focus();
return false;
 }
 if(t=="")
{
alert("select your place");
document.form.place6.focus();
return false;
 }
 if(u=="")
{
alert("select your place");
document.form.place7.focus();
return false;
 }
 
 
    }
    
</script>

<link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" />    
    
<!-- Arquivos utilizados pelo jQuery lightBox plugin -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />
<!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->

<!-- Ativando o jQuery lightBox plugin -->
<script type="text/javascript">
$(function() {
    $('.lightbox').lightBox();
});
</script>
<!--   Free Website Template by t o o p l a t e . c o m   -->
</head>

<body onload="xz()">
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
<!--				<li><a href="news.html">News</a></li>
				<li><a href="blog.html">Blog</a></li>
				<li><a href="contact.html">Contact</a></li>-->
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
    
			<div class="col_w900 col_w900_last">
				<div id="gallery">
                                    <center>

<!--<div id="h0"></div>-->
<div id="o">
    <form  name="form" action=" latlong1.jsp" method="post" onSubmit="return validation();" >
    
<table>
 <tr><td><font color=brown>LATITUDE</td></font><td><input size="10" type="text"  name="latt1" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">LONGITUDE</font><input size="10" type="text" name="long1" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">NAME</font><input size="10" type="text"  name="place1" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
 </tr>
    <tr>
        <td><font color="red">other</font></td>
    </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LATITUDE</td></font><td><input size="10" type="text"  name="latt2" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">LONGITUDE</font><input size="10" type="text" name="long2" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">NAME</font><input size="10" type="text"  name="place2" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LATITUDE</td></font><td><input size="10" type="text"  name="latt3" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">LONGITUDE</font><input size="10" type="text" name="long3" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">NAME</font><input size="10" type="text"  name="place3" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LATITUDE</td></font><td><input size="10" type="text"  name="latt4" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">LONGITUDE</font><input size="10" type="text" name="long4" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">NAME</font><input size="10" type="text"  name="place4" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LATITUDE</td></font><td><input size="10" type="text"  name="latt5" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">LONGITUDE</font><input size="10" type="text" name="long5" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">NAME</font><input size="10" type="text"  name="place5" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LATITUDE</td></font><td><input size="10" type="text"  name="latt6" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">LONGITUDE</font><input size="10" type="text" name="long6" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">NAME</font><input size="10" type="text"  name="place6" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
 </tr>
    <tr><td><font color=brown FACE=",Arial" size="2">LATITUDE</td></font><td><input size="10" type="text"  name="latt7" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"><font color="brown">LONGITUDE</font><input size="10" type="text" name="long7" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"/><font color="brown">NAME</font><input size="10" type="text"  name="place7" value="" style="margin-left: 5px;width: 200px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td>
 </tr>
    
</table>
        <input type="submit" name="submit" value="NEXT"  id="user" style="width: 100px; height: 25px;" />
        </form>

<div id="content">
    
    
    <hr style="hight:5"></hr>
<table cellpadding="4" cellspacing="0" px="100" width="325" height="364">
<tr>
<td class="cs" width="100%">
<div class="lb0">
<table cellpadding="5" cellspacing="0" width="100%">
<tr>

<td>
<form onsubmit="showAddress(this.address.value); return false;">
    <div ><strong><font COLOR=brown FACE="Arial" SIZE=3>Address:</font></strong> <input type="text" style="width:300px;font-size:1.1em;border-radius: 5px;background-color: bisque;color: red" name="address" value="123 Street, City State/Country" onfocus="if (this.value == '123 Street, City State/Country'){this.value='';} "> <input type="submit" style="font-size:100%" value=" GO "></div>
</form>
</td>
</tr>
</table>
</div>

<table width="100%">
    <tr><td style="color:brown;font-size: 15px"><font COLOR=brown FACE="Geneva, Arial" SIZE=3>Latitude:</font></td><td colspan="3"><input size="15" type="text" id="latbox" name="lat" value="" style="margin-left: 5px;width: 250px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red"></td><td ><FONT COLOR=brown FACE="Geneva, Arial" SIZE=3>Longitude:</font></td><td colspan="3"><input size="15" type="text" id="lonbox" name="lon" value=""style="margin-left: 5px;width: 250px;height: 25px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red" ></td></tr>
<tr></tr>
<tr style="display:none;font-size: 15px" ><td colspan="4"><br><hr></td></tr>
<tr style="display:none"><td> </td><td><strong>Degrees</strong></td><td><strong>Minutes</strong></td><td><strong>Seconds</strong></td></tr>
<tr style="display:none"><td>Latitude:</td><td><input size="5" type="hidden" id="latboxm" name="latm" value=""style="margin-left: 100px;width: 250px;height: 20px;font-size: 15px;border-radius: 5px;background-color: bisque;color: red" ></td><td><input size="6" type="text" id="latboxmd" name="latmd" value="" ></td><td><input size="8" type="text" id="latboxms" name="latms" value="" ></td></tr>
<tr style="display:none"><td >Longitude:</td><td><input size="5" type="hidden" id="lonboxm" name="lonm" value="" ></td><td><input size="6" type="text" id="lonboxmd" name="lonmd" value="" ></td><td><input size="8" type="text" id="lonboxms" name="lonms" value="" ></td></tr>
</table>
<%
    System.out.println("your latitue is ");
%>
</p>

<div id="wrapper" style="margin:5px"><div id="map" style="width: 900px; height: 550px"></div></div>
</td>
<td class="as" align="center">
<script type="text/javascript"><!--
google_ad_client = "pub-0418728868848218";
/* 160x600, created 1/21/10 */
google_ad_slot = "6707462996";
google_ad_width = 160;
google_ad_height = 600;
//-->
</script>
</tr></table>
</div>


</div>
</center>
					
                
					
                
					
                 
					
                 
					
                 
					
					<div class="cleaner"></div>
				</div>
			</div> 
                    
			<div class="cleaner"></div>
		</div> <!-- end of main -->
    
		<div id="tm_bottom"></div>
    
		<div id="tooplate_footer">
    	
        Copyright © 2048 <a href="#">Company Name</a>
    
		</div> <!-- end of footer -->
        
	</div> <!-- end of wrapper -->
	<div class="cleaner"></div>
</div> <!-- end of body wrapper -->
<!--   Free Website Template by t o o p l a t e . c o m   -->
</body>
</html>