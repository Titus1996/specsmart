<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    <%@taglib prefix="spring-form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Register Yourself Here</title>
<style>#success_message{ display:none;}</style>
<script>
$(document).ready(function() {
    $('#form_group').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            first_name: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Please enter your First Name'
                    }
                }
            },
             last_name: {
                validators: {
                     stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Please enter your Last Name'
                    }
                }
            },
			 user_name: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Please enter your Username'
                    }
                }
            },
			 user_password: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Please enter your Password'
                    }
                }
            },
			confirm_password: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Please confirm your Password'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'Please enter your Email Address'
                    },
                    emailAddress: {
                        message: 'Please enter a valid Email Address'
                    }
                }
            },
            contact_no: {
                validators: {
                  stringLength: {
                        min: 12, 
                        max: 12,
                    notEmpty: {
                        message: 'Please enter your Contact No.'
                     }
                }
            },

                }
            }
        })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#contact_form').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});


</script>

</head>
<style>
.container{
max-width:450px;
}
html,body{
height:100%;
 background-image: url("resources/wall5.jpg"); 
}
li a{
color:#FFA500;
}
.gif1{
padding-left:40px;

}
.gif2{
padding-right:5px; 
}

</style>
<body>
     <%@ include file="header.jsp"%>

<c:set value="${pageContext.request.contextPath }" var="context"></c:set>
     <div class="row">
     <div class="col-sm-4">
    
          <div class="gif1">
<img src="${context}/resources/giphy.gif" alt="loading..." style="width:400px;height:250px;"><br/><br/>
<img src="${context}/resources/giphy1.gif" alt="loading..." style="width:400px;height:250px;">

</div>
</div>
<div class="col-sm-4">
<div class="container">

    <spring-form:form class="well form-horizontal" action="${pageContext.request.contextPath}/add" method="post"   modelAttribute="user">
<!-- Form Name -->
<legend><center><h2><b><th><th>Registration Here</th></th></b></h2></center></legend>

<!-- Text input-->
<center>
<div class="form-group">
  <spring-form:label class="col-md-4 control-label" path="firstname">First Name</spring-form:label>  
  <div class="col-md-7 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <spring-form:input  name="firstname" placeholder="First Name" class="form-control"  type="text" path="firstname"></spring-form:input>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <spring-form:label class="col-md-4 control-label" path="lastname" >Last Name</spring-form:label>
    <div class="col-md-7 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <spring-form:input name="lastname" placeholder="Last Name" class="form-control"  type="text" path="lastname"></spring-form:input>
    </div>
  </div>
</div>
  
<!-- Text input-->

<div class="form-group">
  <spring-form:label class="col-md-4 control-label" path="username">Username</spring-form:label>  
  <div class="col-md-7 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <spring-form:input  name="username" placeholder="Username" class="form-control"  type="text" path="username"></spring-form:input>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <spring-form:label class="col-md-4 control-label" path="password" >Password</spring-form:label> 
    <div class="col-md-7 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <spring-form:input name="password" placeholder="Password" class="form-control"  type="password" path="password"></spring-form:input>
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group">
  <spring-form:label class="col-md-4 control-label" path="email">E-Mail</spring-form:label>  
    <div class="col-md-7 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <spring-form:input name="email" placeholder="E-Mail Address" class="form-control"  type="text" path="email"></spring-form:input>
    </div>
  </div>
</div>


<!-- Text input-->
       
<div class="form-group">
  <spring-form:label class="col-md-4 control-label" path="contactno">Contact No.</spring-form:label>  
    <div class="col-md-7 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <spring-form:input name="contactno" placeholder="(+91)" class="form-control" type="text" path="contactno"></spring-form:input>
    </div>
  </div>
</div>

<!-- Select Basic -->

<!-- Success message -->
<div class="alert alert-success"  align="center" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!!!</div>

<!--  submit Button -->
<div class="form-group">

 <label class="col-md-6 control-label">
 <input type="reset" class="btn btn-info" value="RESET">
 <!-- reset button -->
 </label>
 
  <label class="col-md-3 control-label">
 <input type="submit" class="btn btn-warning" value="SUBMIT">
 <!-- reset button -->
 </label>
 </div>
</center>
</spring-form:form>
</div>
 </div>
 <div class="col-sm-4"></div>
      <div class="gif2">
<img src="${context}/resources/giphy2.gif" alt="loading..." style="width:400px;height:250px;"><br/><br/>
<img src="${context}/resources/giphy3.gif" alt="loading..." style="width:400px;height:250px;">
</div>
 </div>
 </body>
</html>