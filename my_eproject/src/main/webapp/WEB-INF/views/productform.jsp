<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring-form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set value="${pageContext.request.contextPath }" var="context"></c:set>
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body {
	height: 100%;
	background-image: url("${context}/resources/wall16.jpg");
}
li a {
	color: #000000;
}
table, th, td {
	border: 2px solid black;
	text-align: center;
}

thead {
	color: black;
	text-decoration: underline;
	font-size: small;
}
/* Full-width input fields */
input[type=text], input[type=number], input[type=password], select,
	options {
	width: 100%;
	padding: 12px 20px;
	margin: 5px 1px;
	display: inline-block;
	border: 2px solid #ccc;
	box-sizing: border-box;
}

.container {
	padding: 10px;
	max-width: 700px;
	padding-top: 0px;
}

h2 {
	text-align: center;
	text-decoration: underline;
}

.gift1 {
	padding-left: 80px;
}

.gift2 {
	padding-left: 20px;
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
     <a href="https://www.facebook.com/" class="fa fa-facebook"></a><br/>
     <a href="https://twitter.com/?lang=en" class="fa fa-twitter"></a><br/>
     <a href="https://accounts.google.com/SignUp?hl=en" class="fa fa-google"></a><br/>
      <a href="https://www.youtube.com/" class="fa fa-youtube"></a><br/>
      <a href="https://www.instagram.com/?hl=en" class="fa fa-instagram"></a>
      </div>    
		<div class="col-sm-6">
			<spring-form:form class="form-horizontal" action="${context}/addproduct" method="POST" modelAttribute="product"  enctype="multipart/form-data">
				<spring-form:hidden path="productId" />

				<div class="container">
					<div class="well well-lg">
						<h2>
							<b>Register Your Product!!!</b>
						</h2>
						<spring-form:label path="productName">
							<b>Product Name:</b>
						</spring-form:label>
						<spring-form:input type="text" path="productName"
							placeholder="Enter product name" name="productName"></spring-form:input>
						<spring-form:errors path="productName" id="message" />
						<br />

						<spring-form:label path="productDescription">
							<b>Description:</b>
						</spring-form:label>
						<spring-form:input type="text" path="productDescription"
							placeholder="Enter productDesc" name="productDescription"></spring-form:input>
						<spring-form:errors path="productDescription" id="message" />
						<br />
                         
                         <spring-form:label path="productImage">
							<b>Product Image Name:</b>
						</spring-form:label>
						<spring-form:input type="text" path="productImage"
							placeholder="Enter productDesc" name="productImage"></spring-form:input>
						<spring-form:errors path="productImage" id="message" />
						<br />
						
						<spring-form:label path="category">
							<b>Category:</b>
						</spring-form:label>
						<spring-form:select path="category.id" multiple="false">
							<spring-form:option value="0" label="Select Your Product Category" />
							<spring-form:options items="${categories}" itemValue="id" itemLabel="name" />
						</spring-form:select>
						<br />

						<spring-form:label path="productStock">
							<b>Stock:</b>
						</spring-form:label>
						<spring-form:input type="number" path="productStock"
							placeholder="Enter stock" name="productStock"></spring-form:input>


						<spring-form:label path="productPrice">
							<b>Price:</b>
						</spring-form:label>
						<spring-form:input type="number" path="productPrice"
							placeholder="Enter price" name="productPrice"></spring-form:input>
                      

						<div class="clearfix">
							<center>
								<br /> <input type="submit" class="btn btn-success" value="Register" />
							</center>
						</div>
					</div>
				</div>
			</spring-form:form>
			
		</div>
		<br />
		<div class="col-sm-5">
			<div class="gift1">
				<img src="${context}/resources/giphy10.gif" alt="loading..."
					style="width: 400px; height: 300px;"><br />
				<br /> <img src="${context}/resources/giphy8.gif" alt="loading..."
					style="width: 400px; height: 300px;">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-8">
			<h2>Registered Products Are Displayed Below!!!</h2>
			<div class="container">
				<table class="table table-default table-responsive table-hover">
					<thead>
						<tr>
							<th>ProductName</th>
							<th>Description</th>
							<th>Product Image</th>
							<th>Category</th>
							<th>Stock</th>
							<th>Price</th>
							<th>Actions</th>
						</tr>
					</thead>
					<c:forEach items="${products}" var="product">
						<tr>
							<td>${product.productName}</td>
							<td>${product.productDescription}</td>
							<td><img alt="${product.productImage}" src="${context}/resources/productimages/${product.productImage}.jpg"
						     width="160px" height="120px"></td>
							<td>${product.category.name}</td>
							<td>${product.productStock}</td>
							<td>${product.productPrice}</td>
				
	         	      	    <td>
							<a href="/editproduct/${product.productId}">
									<button type="submit" class="btn btn-basic">Edit</button>
							</a>
							<br/>
							<br/>
							<a href="/deleteproduct/${product.productId}">
									<button type="submit" class="btn btn-basic">Delete</button>
							</a>
							</td>
										
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
     
		<div class="col-sm-4">
			<div class="gift2">
			<br/>
				<img src="${context}/resources/giphy3.gif" alt="loading..."
					style="width: 400px; height: 250px;"><br />
				<br /> <img src="${context}/resources/giphy7.gif" alt="loading..."
					style="width: 400px; height: 250px;"><br />
				<br /> <img src="${context}/resources/giphy5.gif" alt="loading..."
					style="width: 400px; height: 250px;"><br />
				<br /> <img src="${context}/resources/giphy9.gif" alt="loading..."
					style="width: 400px; height: 250px;"><br />
				<br /> <img src="${context}/resources/giphy2.gif" alt="loading..."
					style="width: 400px; height: 250px;"><br />
		         <br /> <img src="${context}/resources/giphy1.gif" alt="loading..."
					style="width: 400px; height: 250px;"><br />
		     </div>
		  </div>
		  </div>
</body>
</html>
