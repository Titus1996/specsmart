<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
 <style>
  @import url("https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css");
html,body{
height:100%;
 background-image: url("resources/walls.jpg"); 
}
ul{ 
list-style-type:none;
margin:10px;
padding:1px 2px 1px 0;
overflow:hidden;
}

li{
float:right;
}

li a{
display:block;
color:#FFFFFF;
text-align:center;
padding:15px;
text-decoration:darkturquoise;
}

li a:hover
{
background-color:none;
}


.fa {
  padding: 10px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  margin: 10px 28px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}
</style>
<body>
<ul>
        <h4> 
        <li><strong><a href="index">Home</a></strong></li>
        <li><strong><a href="support">Support</a></strong></li>
        <li><strong><a href="cart">My Cart</a></strong></li>
        <li><strong><a href="register">Sign Up</a></strong></li>
        <li><strong><a href="signin">Sign In</a></strong></li>
        <li><strong><a href="shop">Start Shopping</a></strong></li>
        </h4>
     </ul>

     <div class="col-sm-1">
     <br/>
     <br/>
     <br/>
     <a href="https://www.facebook.com/" class="fa fa-facebook"></a><br/>
     <a href="https://twitter.com/?lang=en" class="fa fa-twitter"></a><br/>
     <a href="https://accounts.google.com/SignUp?hl=en" class="fa fa-google"></a><br/>
      <a href="https://www.youtube.com/" class="fa fa-youtube"></a><br/>
      <a href="https://www.instagram.com/?hl=en" class="fa fa-instagram"></a>
      </div>    
     
     <div class="col-sm-10">
     <div class="container">
    <div class="jumbotron jumbotron-sm" style="background-color:#40bf95;margin-top:-1%;color:white;">
        <div class="row">
            <div class="col-sm-15 col-lg-15">
                <h2 class="h2" style="margin-top:-2%" align="center">
                    <u>Contact Us</u>
                </h2>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <div class="well">
                <h3 style="line-height:20%;"><i class="fa fa-home fa-1x" style="line-height:6%;color:#339966"></i>HeadOffice Address:</h3>               
                <p style="margin-top:6%;line-height:35%">No.7,4th street,Ramanujam street,Gandhinagar,Avadi,ch-54,Tamilnadu,India.</p>
                <br/>
                <h3 style="line-height:20%;"><i class="fa fa-envelope fa-1x" style="line-height:6%;color:#339966"></i> E-Mail Address:</h3>
                <p style="margin-top:6%;line-height:35%">johnglasses@gmail.com</p>
              
                <h3 style="line-height:20%;"><i class="fa fa-user fa-1x" style="line-height:6%;color:#339966"></i>contact us:</h3>
                <p style="margin-top:6%;line-height:35%">9566074532<br><br><br><br>9566473257<br><br><br><br>8764557674</p>
                
            </div>
        </div>
        <div class="col-sm-5">
           <div id="map" style="width:550px;height:400px;background:yellow"></div>

<script>
function myMap() {
  var mapCanvas = document.getElementById("map");
  var mapOptions = {
    center: new google.maps.LatLng(13.067439,80.237617), zoom: 13
  };
  var map = new google.maps.Map(mapCanvas, mapOptions);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD327wXP7odsbu2uC2nsdsjkPT5xgrF620&callback=myMap"></script>
        </div>
    </div>
</div>
</div>
</body>
</html>