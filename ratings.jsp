<!doctype html>
<html>
<head>
    
    <meta charset="utf-8">
    <title>Rating</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <p>Please rate this item:</p>
    <fieldset class="rating">     
        <input type="radio" name="stars" id="4_stars" value="4" >
        <label class="stars" for="4_stars">4 stars</label>
        <input type="radio" name="stars" id="3_stars" value="3" >
        <label class="stars" for="3_stars">3 stars</label>
        <input type="radio" name="stars" id="2_stars" value="2" >
        <label class="stars" for="2_stars">2 stars</label>
        <input type="radio" name="stars" id="1_stars" value="1" >
        <label class="stars" for="1_stars">1 star</label>
        <input type="radio" name="stars" id="0_stars" value="0" required>
        <label class="stars" for="0_stars">0 star</label>
<!--        <span  class="label" > <font style="color:red;siz:10;"> Rating:</font> </span>-->
    </fieldset>
</body>
</html>