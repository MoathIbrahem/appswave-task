$('input[type=checkbox]').on('change', function() {
   var selected = this;
   $('[id^="region_"]').each(function(){
        this.checked = false;
	});
	selected.checked = true;
});

var input = document.querySelector("#phone");
window.intlTelInput(input, {});

var input = document.querySelector("#phone"),
errorMsg = document.querySelector("#error-msg"),
validMsg = document.querySelector("#valid-msg");

//here, the index maps to the error code returned from getValidationError - see readme
var errorMap = ["Invalid number", "Invalid country code", "Too short", "Too long", "Invalid number"];

//initialise plugin
var iti = window.intlTelInput(input, {
utilsScript: "./js/utils.js"
});




var reset = function() {

input.classList.remove("error");

errorMsg.innerHTML = "";
errorMsg.classList.add("iti__hide");
validMsg.classList.add("iti__hide");
};
//on blur: validate
input.addEventListener('blur', function() {

reset();
if (input.value.trim()) {
  if (iti.isValidNumber()) {
    validMsg.classList.remove("iti__hide");
  } else {
    input.classList.add("error");
    var errorCode = iti.getValidationError();
    if(errorCode === -99) {
		errorCode = 0;
	}
    errorMsg.innerHTML = errorMap[errorCode];
    errorMsg.classList.remove("iti__hide");
  }
}
});

//on keyup / change flag: reset
input.addEventListener('change', reset);
input.addEventListener('keyup', reset);


