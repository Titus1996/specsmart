<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Start Shopping!!!</title>
</head>
<style>

.row{
    padding-top:25px;
}
li a{
color:#FFFFFF;
}
card {
  display: block;
    margin-bottom: 20px;
    line-height: 1.42857143;
    background-color: #fff;
    border-radius: 2px;
    box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
    transition: box-shadow .25s;
}
.card:hover {
  box-shadow: 0 8px 17px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
}
.img-card {
  width:100%;
  height:200px;
  border-top-left-radius:2px;
  border-top-right-radius:2px;
  display:block;
    overflow: hidden;
}
.img-card img{
  width: 100%;
  height: 200px;
  object-fit:cover;
  transition: all .25s ease;
}
.card-content {
  padding:15px;
  text-align:left;
}
.card-title {
  margin-top:0px;
  font-weight: 700;
  font-size: 1.65em;
}
.card-title a {
  color: #000;
  text-decoration: none !important;
}
.card-read-more {
  border-top: 1px solid #D4D4D4;
}
.card-read-more a {
  text-decoration: none !important;
  padding:10px;
  font-weight:600;
  text-transform: uppercase;
}
html,body{
height:100%;
 background-image: url("resources/wally3.jpg"); 
}
</style>
<body>
     <%@ include file="header.jsp"%>
     	<c:set var="context" value="${pagecontext.request.contextPath}"></c:set>
     	<div class="row">
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
        
	<div class="container">
			<div class="col-lg-5">
				<img alt="${product.productName}" class="img-thumbnail"
					src="${pageContext.request.contextPath}/resources/productimages/${product.productImage}.jpg" height="300px" width="350px">
			</div>
			<div class="col-lg-8">
				<pre>
					<h2>${product.productName}</h2>
				</pre>
				<br>
				<h4>${product.productPrice}</h4>
				<br>
				<p>${product.productDescription}</p>
				<br> <a class="btn btn-danger"
					href="${pageContext.request.contextPath}/user/add/to/cart/${product.productId}">ADD
					TO CART</a>
			</div>
		</div>
  
	      <div class="col-sm-2">
	      
	</div>
	</div>
</body>
</html>