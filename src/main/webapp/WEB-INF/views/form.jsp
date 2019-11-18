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
	<form action="add-person" method="post" id="specialSnowflake" submit="return validateEmailWithoutParam()">
		First Name: <input type="text" id="first" name="first" required> 
		<br>
		<br>Last Name: <input type="text" id="last" name="last" required> 
		<br>
		<br>Email: <input type="text" id="email" name="email" pattern="\w{5,}@\w{5,}\.\w{2,3}">
		<!-- pattern="\w+\@\w+.\w{2,3}"   title="Please enter an email like 'george\u0040gmail.com': with at least one word character before the \u0040, \u000A an \u0040, a domain with one or more word characters in the name, and a 2- or 3- character .domain.required"--> 
		<!--  pattern="\w+\u004A\w+.\w{2,3}" title="Please enter an email like 'george\u0040gmail.com': with at least one word character before the \u0040, \u000A an \u0040, a domain with one or more word characters in the name, and a 2- or 3- character .domain.required>  -->
		<br>
		<br>Phone Number: <input type="tel" id="phone" name="phone"
		  title="Please enter a telephone number in the format 123-456-7890 or 1234567890." pattern="([0-9]{3}-[0-9]{3}-[0-9]{4}|[0-9]{10})" required>
		<br>
		<br>Password: <input type="password" id="password" name="password" required>
		<br>
		<br>
		<fieldset>
			<br>Would you like to sign up for our special marketing offers? 
			<div>
				<input type="radio" name="specialOffersYes" id="offerSignupY" value="true" checked="true"/>Yes
			</div>
			<div>
				<input type="radio" name="specialOffersYes" id="offerSignupN" value="false"/>No
			</div>
		</fieldset>
		<fieldset>
			<br>Would you like to know more about our financing options for premium coffee?
			<input type="checkbox" name="financingFollowupYes" id="financeSignup" checked/>
			<br>
			<br>Please select an option:
			<br>
			<select name="financingFollowupMethod">
				<option value="email">Send me informational emails</option>
				<option value="broker" selected="1" default>Have a broker call me directly</option>
				<option value="no">I don't want to know</option>
			</select>
		</fieldset>
		
		<br>
		<input
			class="btn-primary" type="submit" value="Register" id="otherSnowflake">
				<input
			class="btn-primary" type="reset" value="Reset"> 
	</form>
	
	
	
	<script>
		console.log("Please fill in the form to register");
		function validateInfo() {
			console.log("validateInfo() entered execution");
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
			} /* /* else if (phone.length > 9 || phone.length < 9){
				alert("Please enter a valid phone number!");
				console.log("done");
				document.getElementById("phone").focus();
				return false; */
			}
		}
	</script>
	<script type="text/javascript" src="shared.js"></script>
</body>
</html>