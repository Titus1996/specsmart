<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Image Upload</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
html,body{
height:100%;
 background-image: url("resources/wall16.jpg");  
}
li a{
color:#FF4500;
}                                    
</style>
</head>
<body>
       <%@ include file="header.jsp"%>  

<c:set value="${pageContext.request.contextPath }" var="context"></c:set>  

     <div class="row">
     <div class="col-sm-1">
     <br/>
     <br/>
     <br/>
     <br/>
     <a href="https://www.facebook.com/" class="fa fa-facebook"></a><br/>
     <a href="https://twitter.com/?lang=en" class="fa fa-twitter"></a><br/>
     <a href="https://accounts.google.com/SignUp?hl=en" class="fa fa-google"></a><br/>
      <a href="https://www.youtube.com/" class="fa fa-youtube"></a><br/>
      <a href="https://www.instagram.com/accounts/login/" class="fa fa-instagram"></a>
      </div> 
      
      <div class="col-sm-3">
      <div class="gift1">
				<img src="${context}/resources/giphy4.gif" alt="loading..."
					style="width: 300px; height: 165px;"><br />
				<br /> <img src="${context}/resources/giphy6.gif" alt="loading..."
					style="width: 300px; height: 165px;"><br/>
				<br /> <img src="${context}/resources/giphy5.gif" alt="loading..."
					style="width: 300px; height: 165px;">
			</div>
      </div>
       
<div class="col-sm-4"> 
<br/><br/>
<br/><br/> 
<br/><br/>
<br/><br/>
<div class="well well-primary" > 
<form:form class="form-horizontal" action="${context}/uploadFile" method="POST" modelAttribute="product" align="center" enctype="multipart/form-data">  
<form:label path="file" for="productId">Choose Image</form:label>  
<form:input name="file" path="file"  type="file" ailgn="center" />  
<button type="submit">Upload</button>  
</form:form>
</div>
</div>

<div class="col-sm-4">
  <div class="gift1">
				<img src="${context}/resources/giphy3.gif" alt="loading..."
					style="width: 300px; height: 165px;"><br />
				<br /> <img src="${context}/resources/giphy10.gif" alt="loading..."
					style="width: 300px; height: 165px;"><br/>
				<br /> <img src="${context}/resources/giphy9.gif" alt="loading..."
					style="width: 300px; height: 165px;">
 </div></div>
 </div>
</body>
</html>