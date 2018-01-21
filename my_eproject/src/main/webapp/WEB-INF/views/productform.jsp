<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    <%@ taglib prefix="spring-form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body{
height:100%;
 background-image: url("resources/wall16.jpg"); 
}
ul{ 
list-style-type:none;
margin:7px;
padding:1px 2px 1px 0;
overflow:hidden;
}

li{
float:right;
}

li a{
display:block;
color:#ffffff;
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

</head>
<style>
table, th, td {
    border: 2px solid black;
}
thead {
color:black;
text-decoration: underline;
font-size:small;
}
/* Full-width input fields */
input[type=text],input[type=number], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 5px 1px;
    display: inline-block;
    border: 2px solid #ccc;
    box-sizing: border-box;
}
.container {
    padding: 15px;
    max-width:700px;
}
h2{
text-align: center;
text-decoration:underline;
}
.gift1
{
padding-left:115px;
}
.gift2
{
padding-left:-15px;
}
</style>

<body>
<ul>
        <h4> 
        <li><strong><a href="home">Home</a></strong></li>
        <li><strong><a href="support">Support</a></strong></li>
        <li><strong><a href="cart">My Cart</a></strong></li>
        <li><strong><a href="register">Sign Up</a></strong></li>
        <li><strong><a href="signin">Sign In</a></strong></li>
        <li><strong><a href="shop">Start Shopping</a></strong></li>
        <li><strong><a href="registeredpage">User</a></strong></li>
         <li><strong><a href="productform">Product</a></strong></li>
         <li><strong><a href="category">Category</a></strong></li>
        </h4>
     </ul>
     <div class="row">
     <div class="col-sm-1">
     <br/>
     <a href="https://www.facebook.com/" class="fa fa-facebook"></a><br/>
     <a href="https://twitter.com/?lang=en" class="fa fa-twitter"></a><br/>
     <a href="https://accounts.google.com/SignUp?hl=en" class="fa fa-google"></a><br/>
      <a href="https://www.youtube.com/" class="fa fa-youtube"></a><br/>
      <a href="https://www.instagram.com/accounts/login/" class="fa fa-instagram"></a>
      </div>    
     
   
       <div class="col-sm-6"> 
<c:set value="${pageContext.request.contextPath }" var="context"></c:set>
<spring-form:form class="form-horizontal" action="${context}/addproduct" method="POST" modelAttribute="product">

<spring-form:hidden path="productId"/>
<div class="container">
<div class="well well-lg">
<h2><spring-form:label path="productName"><b>Register Your Product!!!</b></spring-form:label><br/></h2>
<spring-form:label path="productName"><b>Product Name:</b></spring-form:label>
<spring-form:input type="text"  path="productName" placeholder="Enter product name" name="productName" ></spring-form:input>
<spring-form:errors path="productName" id="message"/><br/>

<spring-form:label path= "productDescription"><b>Description:</b></spring-form:label>
<spring-form:input type="text"  path= "productDescription" placeholder="Enter productDesc" name="productDescription" ></spring-form:input>
<spring-form:errors path="productDescription" id="message"/><br/>

<spring-form:label path="productStock"><b>Stock:</b></spring-form:label>
<spring-form:input type="number"  path="productStock" placeholder="Enter stock" name="productStock" ></spring-form:input>


<spring-form:label path="productPrice"><b>Price:</b></spring-form:label>
<spring-form:input type="number"  path="productPrice" placeholder="Enter price" name="productPrice" ></spring-form:input>


<div class="clearfix">
<center><br/>
<input type="submit" class="btn btn-success" value="Register"/>
</center>
</div>
</div>
  </div>
</spring-form:form>
  </div>
  <br/>
  <div class="col-sm-5">
           <div class="gift1">
<img src="resources/giphy10.gif" alt="loading..." style="width:400px;height:250px;"><br/><br/>
<img src="resources/giphy8.gif" alt="loading..." style="width:400px;height:250px;">

</div>
 
  </div> 

     <div class="col-sm-8">
     <h2>Registered Products Are Displayed Below!!!</h2>
<div class="container">
 <table class="table table-hover">
 <thead>
          <tr>
          <th>ProductName</th>
          <th>ProductDescription</th>
          <th>ProductStock</th>
          <th>ProductPrice</th>
          <th>Edit</th>
          <th>Delete</th>
          </tr>
   </thead>       
          <c:forEach items="${products}" var="product">
          <tr>
             <td>${product.productName}</td>
             <td>${product.productDescription}</td>
             <td>${product.productStock}</td>
             <td>${product.productPrice}</td>
           <td> <a href="<c:url value='editproduct/${product.productId}'/>">
                   <button type="submit" class="btn btn-basic">Edit</button></a></td>
             <td><a href="deleteproduct/${product.productId}">
             <button type="submit" class="btn btn-basic">Delete</button></a>
             </td>
             </tr>
             </c:forEach>
          </table>
          </div>
          </div>
          
     <div class="col-sm-4">
      <div class="gift2">
<img src="resources/giphy3.gif" alt="loading..." style="width:400px;height:250px;"><br/><br/>
<img src="resources/giphy7.gif" alt="loading..." style="width:400px;height:250px;">

</div>

     </div>
          </div>
</body>
</html>  