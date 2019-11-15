<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome!</title>
</head>
<body>
	<div class="container">
	
	<h1>Welcome!</h1>
		<!-- Hello $ {String.format("%s %s! Thank you for registering.", p.getFirstName(), p.getLastName());} -->
	<p>Hello, ${p.getFirstName()} ${p.getLastName() }!</p>
	
	<p>Thank you for registering.
	
	<p>Your email is: ${p.getEmail()}</p>
	
	<p>Your phone is: ${p.getPhoneNumber() }</p>
	
	<p>Don't worry about entering your bank information--we'll have that soon.</p>
	</div>

</body>
</html>