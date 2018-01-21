<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    <%@taglib prefix="spring-form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set value="${pageContext.request.contextPath}" var="context"></c:set>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
<title>Add Your Category</title>
<style>
html,body{
height:100%;
 background-image: url("${context}/resources/wallpaper2.jpg"); 
 
}
li a{
color:ff66ff;
text-decoration:darkturquoise;
}
.font{
font-size:x-large;
}
.tab{
padding-top: 20px;
}
</style>
</head>
<body>
     <%@ include file="header.jsp"%>

<c:set value="${pageContext.request.contextPath}" var="context"></c:set>
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
        <center>
		<h2><u>CATEGORY DETAILS</u></h2>
        </center>

	<spring-form:form class="form-horizontal" action="${context}/addCategory" modelAttribute="category">
		<spring-form:hidden path="id" />
		<div class="form-group">
		<div class="font">
			<label class="control-label col-sm-3" for="name">Enter the category:</label>
             </div>
			<div class="col-sm-6">
				<spring-form:input type="text" path="name" class="form-control" placeholder="Enter the category!!!" />
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-5 col-sm-6">
				<a href="${context}/category">
					<button type="submit" class="btn btn-success" id="btnsubmit">Add Category</button>
				</a>
			</div>
		</div>
	</spring-form:form>
	<div class="container">
	<div class="well well">
	<div class="tab">
	<table class="table table-hover"  border="3">
		<THEAD>
		<tr bordercolor="black">
			<th>Id</th>
			<th>Category</th>
			<th>Edit</th>
	     	</tr>
		</THEAD>
		<c:forEach items="${categories}" var="category">
			<tr align="center">
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td><a href="${context}/editcategory/${category.id}"><button
							type="submit" class="btn btn-basic">Edit</button></a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	</div>
	</div>
	     <div class="col-sm-1">
	     </div>
</body>
</html>