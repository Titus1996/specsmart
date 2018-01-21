<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page isELIgnored="false" %>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set value="${pageContext.request.contextPath }" var="context"></c:set>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>sign in</title>
</head>
 <script src="http://mymaplist.com/js/vendor/TweenLite.min.js">
 $(document).ready(function() {
	    $(document).mousemove(function(event) {
	        TweenLite.to($("body"), 
	        .5, {
	            css: {
	                backgroundPosition: "" + parseInt(event.pageX / 8) + "px " + parseInt(event.pageY / '12') + "px, " + parseInt(event.pageX / '15') + "px " + parseInt(event.pageY / '15') + "px, " + parseInt(event.pageX / '30') + "px " + parseInt(event.pageY / '30') + "px",
	            	"background-position": parseInt(event.pageX / 8) + "px " + parseInt(event.pageY / 12) + "px, " + parseInt(event.pageX / 15) + "px " + parseInt(event.pageY / 15) + "px, " + parseInt(event.pageX / 30) + "px " + parseInt(event.pageY / 30) + "px"
	            }
	        })
	    })
	})
 </script>
<body>
     <%@ include file="header.jsp"%>
 <div class="row">
<div class="col-sm-4">
<div class="gift1">
<img src="resources/giphy4.gif" alt="loading..." style="width:400px;height:250px;"><br/><br/>
<img src="resources/giphy5.gif" alt="loading..." style="width:400px;height:250px;">
</div>
</div>

<div class="col-sm-4">
 <div class="gift2">
<img src="resources/giphy6.gif" alt="loading..." style="width:400px;height:250px;"><br/><br/>
<img src="resources/giphy.gif" alt="loading..." style="width:400px;height:250px;">
</div>
</div>

<div class="col-sm-4">
<br/>
<br/>
<br/>
      <div class="container">
                        <div class="panel panel-default">
                            <div class="panel-heading">   
                            <br/>                             
                                <div class="row-fluid user-row">
                                    <img src="resources/mylogo.jpg" class="img-responsive" alt="Loading..."/>
                                </div>
                            </div>
                            <br/>
                            <div class="panel-body">
                               <form action="${context}/login" method="POST">
                                    <fieldset>
                                        <input class="form-control" placeholder="Enter Your Username" name="username" type="text"><br/>
                                        <input class="form-control" placeholder="Enter Your Password" name="password" type="password"><br/>
                                        <input class="btn btn-lg btn-success btn-block" type="submit" id="login" value="signin">
                                    </fieldset>
                                </form>
                              </div>
                        </div>
      </div>
</div>

</div>
</body>
<style>
html,body{
height:100%;
 background-image: url("resources/wall7.jpg"); 
}
li a{
color:#FFD700;
}
 .form-signin input[type="text"] {
        margin-bottom: 5px;
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0;
    }
 .form-signin input[type="password"] {
        margin-bottom: 5px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
 .form-signin .form-control {
        position: relative;
        font-size: 16px;
        font-family: 'Open Sans', Arial, Helvetica, sans-serif;
        height: auto;
        padding: 3px;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
 .vertical-offset-100 {
        padding-top: 10px;
    }
 .img-responsive {
    display: block;
    max-width: 90%;
    height: auto;
    margin: auto;
    }
  .panel {
    margin-bottom: 10px;
    background-color: rgba(255, 255, 255, 0.75);
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    }
    .panel-heading
    {
    height:175px;
    width:324px;
    }
   .gift1
    {
    padding-left:30px; 
    }
    .gift2
    {
    padding-left:-10px;
    }
   .container{
   height:1000px;
   width:400px;
   padding-right: 60px;
   
   } 
</style>
</html>