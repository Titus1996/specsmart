<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Welcome!!!</title>
<style>
html,body{
height:100%;
 background-image: url("resources/wall2.jpg"); 
 
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
color:ff66ff;
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
un{
text-decoration: underline;
}
</style>
</head>
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
     <br/>
     <br/>
     <br/>
     <a href="https://www.facebook.com/" class="fa fa-facebook"></a><br/>
     <a href="https://twitter.com/?lang=en" class="fa fa-twitter"></a><br/>
     <a href="https://accounts.google.com/SignUp?hl=en" class="fa fa-google"></a><br/>
      <a href="https://www.youtube.com/" class="fa fa-youtube"></a><br/>
      <a href="https://www.instagram.com/accounts/login/" class="fa fa-instagram"></a>
      </div>    
<br/>
<c:set value="${pageContext.request.contextPath }" var="context"></c:set>

 <div class="col-sm-7"> 
 <div class=container>
    <div class="well well-lg" align="center">
                <div id="un" align="center" ><h2>Registration has been  Successful!</h2></div>
                <br/>
                <div align="center" align="center">
                    <h3>Thank you for registering! Here's the details:</h3></div>
               <table class="table table-hover" border="3">
             <tr>
                <td>First Name:</td>
                <td>Last Name:</td>
                <td>User Name:</td>
                <td>Password:</td>
                <td>Confirm Password:</td>
                <td>E-mail:</td>
                <td>Contact no.:</td>
             </tr>
             <c:forEach items="${Users}" var="user">
             <tr>
                <td>${user.firstname}</td>
                <td>${user.lastname}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.confirmpassword}</td>
                <td>${user.email}</td>
                <td>${user.contactno}</td>
            </tr>
           </c:forEach>
        </table>
    </div>
    </div>
     </div>
      <div class="col-sm-2">
       </div> 
       </div>
</body>
</html>