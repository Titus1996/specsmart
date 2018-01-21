<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set value="${pageContext.request.contextPath }" var="context"></c:set>
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
 background-image: url("${context}/resources/wall2.jpg"); 
}
li a{
color:#FF4500;
}
#under{
text-decoration: underline;
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
<br/>
 <security:authorize access="hasAuthority('ROLE_ADMIN')">
		
 <div class="col-sm-7" align="center"> 
 <div class=container align="center">
    <div class="well well-lg" align="center">
                <div id="under" align="center" ><h2>!!!Registration has been  Successful!!!</h2></div>
                <div align="center" align="center">
                    <h3>Thank you for registering! Here's the details:</h3></div>
               <table class="table table-hover" border="3" align="center">
             <tr>
                <td>First Name:</td>
                <td>Last Name:</td>
                <td>User Name:</td>
                <td>Password:</td>
                <td>Role:</td>
                <td>E-mail:</td>
                <td>Contact no.:</td>
             </tr>
             <c:forEach items="${Users}" var="user">
             <tr>
                <td>${user.firstname}</td>
                <td>${user.lastname}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.role}</td>
                <td>${user.email}</td>
                <td>${user.contactno}</td>
             </tr>
           </c:forEach>
        </table>
    </div>
    </div>
     </div>
     </security:authorize>
      <div class="col-sm-2">
       </div> 
       </div>
</body>
</html>