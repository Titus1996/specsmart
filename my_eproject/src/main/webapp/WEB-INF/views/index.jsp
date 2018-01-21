<html>
<head><title>John-Glasses</title>
<meta charset="utf-8">
  <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body{
height:100%;
 background-image: url("resources/wall2.jpg"); 
 
}                       
</style>

</head>
<script>
$(document).ready(function(){
    // Activate Carousel
    $("#myCarousel").carousel({interval: 2000, wrap:true});
});
</script>
    
    <body>
     <%@ include file="header.jsp"%>
      <div class="col-sm-1">
     <br/>
     <br/>
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
  <div id="myCarousel" class="carousel slide">

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
    
      <div class="item active">
      <img src="resources/cat.jpg" alt="Loading..." style="width:110%; height:90vh">
      </div>
      
       <div class="item">
        <img src="resources/bgimage1.jpg" alt="Loading2..." style="width:110%; height:90vh">
      </div>
      
       <div class="item">
        <img src="resources/bgimage10.jpg" alt="Loading5..." style="width:110%; height:90vh">
      </div>
    
    <div class="item">
        <img src="resources/bgimage2.jpg" alt="Loading3..." style="width:110%; height:90vh">
      </div>

      <div class="item">
        <img src="resources/bgimage3.jpg" alt="Loading4..." style="width:110%; height:90vh">
      </div>
   
       <div class="item">
        <img src="resources/bgimage4.jpg" alt="Loading5..." style="width:110%; height:90vh">
      </div>
      
        <div class="item">
        <img src="resources/bgimage.jpg" alt="Loading9..." style="width:110%; height:90vh">
      </div>
      
       <div class="item">
        <img src="resources/bgimage5.jpg" alt="Loading6..." style="width:110%; height:90vh">
      </div>
      
       <div class="item">
        <img src="resources/bgimage6.jpg" alt="Loading7..." style="width:110%; height:90vh">
      </div>
      
       <div class="item">
        <img src="resources/bgimage7.jpg" alt="Loading8..." style="width:110%; height:90vh">
      </div>
      
       </div>
 
   
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
    </div>
    </div>
 
  <div class="col-sm-1">
  
  </div>
    </body>

</html>
