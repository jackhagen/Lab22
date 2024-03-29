var formInput = document.getElementById('specialSnowflake');

//This form works
//emailInput.onchange = validateEmailWithoutParam;
//emailInput.onchange = handleEmailValidation;
//formInput.onsubmit = handleEmailValidation;
//This form does not work.
//emailInput.addEventListener("change", handleEmailValidation);
//emailInput.addEventListener("change", handleEmailValidation());
//These forms do not work.
//emailInput.addEventListener("change", function(){
//	return validateEmail(eventObject.target.textContent);
//});
//emailInput.addEventListener("click", function(){
//	validateEmail(eventObject.target.textContent);
//});
//emailInput.addEventListener("close", function(){
//});
//emailInput.addEventListener("change", validateEmail(emailInput.textContent));

//emailInput.addEventListener("click", validateEmail(emailInput.textContent));

//var personInputForm = document.getElementById('specialSnowflake');
//personInputForm.onsubmit = validateEmail(emailInput.textContent);
//personInputForm.addEventListener('submit', validateEmail(emailInput.textContent));
//
function validateEmail(email) {
	var patt = /\w+@\w+\.\w{2,3}/;
	if (!patt.test(email)) {
		alert("This email does not match the requested pattern.");
		return false;
	}
	return true;
}

function validateEmailWithoutParam() {
	return validateEmail(formInput.textContent);
}

function handleEmailValidation(eventObject) {
	var validationResult = validateEmail(eventObject.target.textContent);
	if (!validationResult) {
		eventObject.target.textContent = "";
	}
	return validationResult;
}