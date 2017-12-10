<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome!!!</title>
</head>
<body>
<br/>
<br/>
<br/>
 <div class=container>
    <div align="center">
        <table border="2">
            <tr>
                <td colspan="2" align="center"><h2>Registration has been  Successful!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3>Thank you for registering! Here's the details:</h3>
                </td>
            </tr>
             <tr>
                <td>First Name:</td>
                <td>${userForm.firstname}</td>
            </tr>
              <tr>
                <td>Last Name:</td>
                <td>${userForm.lastname}</td>
            </tr>
            <tr>
                <td>User Name:</td>
                <td>${userForm.username}</td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>${userForm.password}</td>
            </tr>
             <tr>
                <td>Confirm Password:</td>
                <td>${userForm.confirmpassword}</td>
            </tr>
            <tr>
                <td>E-mail:</td>
                <td>${userForm.email}</td>
            </tr>
             <tr>
                <td>Contact no.:</td>
                <td>${userForm.contactno}</td>
            </tr>
        </table>
    </div>
    </div>
</body>
</html>