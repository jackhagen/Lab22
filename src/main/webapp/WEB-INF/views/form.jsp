<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/cosmo/bootstrap.min.css">
	<link href="styles.css" rel="stylesheet">

</head>
<body>
	<a class="btn-pimary" href="/">home</a>
	<%-- ${p} --%>
	<h1>${register}</h1>
	<hr>
	<h1>Please fill in the form to register</h1>
	<!-- the action referenced below should match a @RequestMapping
		in the Controller to consume the input -->
	<form action="add-person" method="post">
		First Name: <input type="text" name="first" required> 
		<br>
		<br>Last Name: <input type="text" name="last" required> 
		<br>
		<br>Email: <input type="text" name="email" required> 
		<br>
		<br>Phone Number: <input type="number" name="phone" required> 
		<br>
		<br>Password: <input type="password" name="password" required>
		<br>
		<br>
		<input
			class="btn-primary" type="submit" value="Register"> 
	</form>
		<script>
	
 
	console.log("Please fill in the form to register");
	function validateInfo() {
		var firstName = document.getElementById("first").value;
		var lastName = document.getElementById("last").value;
		var phone = document.getElementById("phone").value;
		var password = document.getElementById("password").value;
		
		if (first.length <= 2) {
			alert("Please enter a longer first name!");
			document.getElementById("first").focus();
			return false;
		} else if (last.length <= 2) {
			alert("Please enter a longer last name!");
			document.getElementById("last").focus();
			return false;
		} else if (phone.length > 9 || phone.length < 9){
			alert("Please enter a valid phone number!");
			document.getElementById("phone").focus();
			return false;
		}
	}
	
	</script>
	
</body>
</html>