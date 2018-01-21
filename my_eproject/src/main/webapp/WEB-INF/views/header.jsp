<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>header</title>
</head>
<style>
ul{ 
list-style-type:none;
margin:5px;
padding:1px 2px 1px 0;
overflow:hidden;
}
li a{
display:block;
color:ff66ff;
text-align:center;
padding:15px;
text-decoration:darkturquoise;
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
  
li{
float:right;
}

li a:hover
{
background-color:none;
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
     	<c:set var="context" value="${pageContext.request.contextPath}"></c:set>

			<ul>
				<li><a href="${context}/home" style="text-align: center; color: white;">
						<span class="glyphicon glyphicon-home"
						style="text-align: center; color: red;"></span> Home
				</a></li>
				
			<li><a href="${context}/support" style="text-align: center; color: white;"><span
							class="glyphicon glyphicon-leaf"
							style="text-align: center; color: red;"></span>About Us</a></li>
							
	<security:authorize access="hasAuthority('ROLE_USER')">	
	
			<li><a href="${context}/shop" style="text-align: center; color: white;"><span
						class="glyphicon glyphicon-gift"
						style="text-align: center; color: red;"></span>Shop</a></li>
						  
		    <li><a href="${context}/mycart" style="text-align: center; color: white;"><span
								class="glyphicon glyphicon-shopping-cart"
								style="text-align: center; color: red;"></span>My Cart</a>
						</li>
				
	</security:authorize>			
	
	 <security:authorize access="hasAuthority('ROLE_ADMIN')">
		
				      <li>
							<a href="${context}/category" style="text-align: center; color: white;"><span
								class="glyphicon glyphicon-list"
								style="text-align: center; color: red;"></span> Add Category</a>
				       <li>
				
				       <li>
						<a href="${context}/productform" style="text-align: center; color: white;"><span
								class="glyphicon glyphicon-list"
								style="text-align: center; color: red;"></span> Add product</a>
						</li>
						
	 </security:authorize>
	
						
		<security:authorize access="isAnonymous()">
						
					<li><a href="${context}/signup" style="text-align: center; color: white;"><span
							class="glyphicon glyphicon-user"
							style="text-align: center; color: red;"></span> Register</a></li>
							
					<li><a href="${context}/signin" style="text-align: center; color: white;"><span
							class="glyphicon glyphicon-log-in"
							style="text-align: center; color: red;"></span> Login</a>
							</li>
									
		</security:authorize>
																		
				     <security:authorize access="isAuthenticated()">
				     	<form class="navbar-form navbar-left">				
                  <li><a href="" style="text-align:center;color:white;">WELCOME MR./MS./MRS...
                  <security:authentication property="principal.username"/></a>
                  </li>
						
					<li><a href="${context}/logout" style="text-align: center; color: white;"><span
							class="glyphicon glyphicon-log-out"
							style="text-align: center; color: red;"></span>Logout!!!</a>
							</li>
						</form>	
					</security:authorize>

                   
				</ul>

</body>
</html>