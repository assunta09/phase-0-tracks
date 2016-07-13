// create function that takes a string as a parameter
function reverse(string) {
	var new_string = ""
	//loop through the letters in the string
	for (var i = 1; i <= string.length; i++) {
		// add letters to new string in reverse order
		new_string += string[string.length - i]
	}
	//return new string
	return new_string
}



// test if function works correctly



if (1 === 1) {
	console.log(reverse("hello world!!"));
} else {
	console.log("Condition not true")
}