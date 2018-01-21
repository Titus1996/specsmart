<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing Address</title>
</head>
<body>
<%@include file="header.jsp" %>
<c:set var="context" value="${pageContext.request.contextPath }"></c:set>

<div class="container">
  <div class="row">

    <div class="col-sm-6">
      <div class="panel panel-info">
        <div class="panel-heading">Billing-CART</div>
  <div class="panel-body"></div>



<springForm:form modelAttribute="billingAddress"  class="form-horizontal">

  <div class="form-group">
  <springForm:label path="line1" class="control-label col-sm-3">Enter Street Name</springForm:label>
 <div class="col-sm-8">
<springForm:input path="line1" name="line1"/>
<%-- <springForm:errors path="line1" cssStyle="color:red"></springForm:errors> --%>
</div>
</div>



<div class="form-group">
<springForm:label path="city" class="control-label col-sm-3">Enter city</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="city" name="city"/>
<springForm:errors path="city" cssStyle="color:red"></springForm:errors>
</div>
</div>


<div class="form-group">
<springForm:label path="state" class="control-label col-sm-3">Enter state</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="state" name="state"/>
<springForm:errors path="state" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="country" class="control-label col-sm-3">Enter country</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="country" name="country"/>
<springForm:errors path="country" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="pincode" class="control-label col-sm-3">Enter zip code</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="pincode" name="zipcode"/>
<springForm:errors path="pincode" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
 <div class="col-sm-10">
  <div class="text-center">
 <input name="_eventId_submit" type="submit" value="Submit" /><br />>
</div>
</div>
</div>

</springForm:form>
</div>
</div>
</div>
</div>
</body>
</html>