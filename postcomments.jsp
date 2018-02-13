<%-- 
    Document   : searchaction
    Created on : Aug 18, 2015, 10:32:38 AM
    Author     : java2
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Learning to Rank Image Tags</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script>
            $(function () {
                $("#searchLink").click(function () {
                    var data = $('#search').val();
                    var url = "https://www.google.co.in/?gfe_rd=cr&ei=i-_KVe6rGufI8AfjsYqYBw&gws_rd=ssl#q=" + data;
                    window.open(url, '_blank');
                    $("#search").val("");
                });
            });

        </script>
    </head>
    <body>
        <div id="topPan"><br />
            <center><h1 style="text-indent: 20px;line-height: 50px;color: white">Learning to Rank Image Tags With Limited<br />
                    Training Examples</h1></center>
        </div>
        <div id="headerPan" style="height: 180px;">
            <div id="headerleftPan" style="height: 143px"><img src="images/blank.gif" alt="" width="1" height="1" /></div>
            <div id="headermiddlePan">
                <div id="menuPan">
                    <ul>
                        <li class="home"><a href="userhome.jsp">Home</a></li>
                        <li><a href="search.jsp">Image Search</a></li>
                        <li><a href="details.jsp">User Details</a></li>
                        <li><a href="index.html">Logout</a></li>
                    </ul>
                </div>
                <div id="headerbodyPan">
                    <div id="headerleftredPan">
                        <marquee>
                            <h1 style="font-size: 20px;color: black">Learning to Rank Image Tags With Limited Training Examples</h1>
                            <center><h1 style="font-size: 20px;color: black">Welcome to <span style="color: red">Massive Search Page</span></h1></center>
                        </marquee>
                    </div>
                </div>
            </div>
           
        </div>
        <div  style="width: 600px;height: 400px;color: white;margin-left: 350px;border-radius: 20px;overflow-y: scroll;overflow-x: hidden">
           

            <center><h1 style="color: red"> Post Your Comments</h1></center>

            </div>
            
            <div  style="width: 600px;height: 430px;border: 5px dotted blue;border-radius: 20px;margin-left: 30px;color: white;background-image: url('images/back3.jpg')">
                <center><h1>Post Your Comments</h1></center><br />
                <form style="width: 500px;height:160px" action="commentsupdate.jsp" method="post">
                    
                    
                    <label style="font-size: 20px;margin-left: 70px">Your Comments</label>&nbsp;&nbsp;&nbsp;&nbsp;<textarea cols="40" rows="5" name="iann" required="" style="margin-left: 210px;"></textarea><br /><br />
                    <label style="font-size: 20px;margin-left: 70px">Image Rating</label>
                    <div class="stars" style="margin-left: 200px;">
                        <input type="radio" name="star" value="1" class="star-1" id="star-1" />
                        <label class="star-1" for="star-1">1</label>
                        <input type="radio" name="star" value="2" class="star-2" id="star-2" />
                        <label class="star-2" for="star-2">2</label>
                        <input type="radio" name="star" value="3" class="star-3" id="star-3" />
                        <label class="star-3" for="star-3">3</label>
                        <input type="radio" name="star" value="4" class="star-4" id="star-4" />
                        <label class="star-4" for="star-4">4</label>
                        <input type="radio" name="star" value="5" class="star-5" id="star-5" />
                        <label class="star-5" for="star-5">5</label>
                        <span></span>
                    </div><br /><br />
                    <input type="submit" class="myButton" style="margin-left:250px " value="Post"/>
                </form> 
            </div>  
            
        </div>
        
    </body>
</html>


