// Release 0
// Define a method that takes as an argument an array
// Loop through the array to find out the length of each string
// Create an array with the length of each string
// identify the highest number 
// return the index of the number in the array
// use the index of the number in the numbers array to print out the longest word



 function lenght_string(array) {
 	var array_with_lengths = []; 
 	for (var i = 0; i <= array.length - 1; i++) {
 		var lenght_string = array[i].length;
 		array_with_lengths.push(lenght_string);
 	}
 	var longest_string = Math.max.apply(Math, array_with_lengths); 
 	var index_string = array_with_lengths.indexOf(longest_string);
 	console.log(array[index_string]);
 }

// Release 1
// create a new array to store all the objects in.
// LOOP through the array to separate the keys from the values
// Store values in their own array
// To identify and duplicates LOOP through the array of values and compare the items on different spots
// If there is a duplicate store true in a new array
// Else store false
// If there is one true contained in the array return true

 var comparison_file = []

 function duplicate_check(object_1, object_2) {
 	comparison_file.push(object_1, object_2)
 	array_values = []
 	for (var i in comparison_file){
 		var to_convert = comparison_file[i]
 		for (var i in to_convert){
 			array_values.push(to_convert[i]);
 		}
 	}

 	var duplicate_finder = []
 	for(var i = 0; i <= array_values.length; i++) {
         for(var j = i; j <= array_values.length; j++) {
             if(i != j && array_values[i] == array_values[j]) {
                 duplicate_finder.push(true);
             } else {
             	duplicate_finder.push(false);
             }
         }
     }
     console.log(duplicate_finder.includes(true));
 }


// Release 2
//Create a method that creates random text:
//  - the method takes and integer that defines how many words shall be created
//  - LOOP through the number specified
//  	- Randomly decide how long every word is
//		- define a variable containing all the letters in the alphabeth
//		- randomly decide on an index and pick that number from the alphabeth
// 		- this is repeated for the length of the word. The letters are added to a varibale called text
//		- when all letters were created the text is added as a string to the array
//	- Return the array when all words have been created

function random_text(integer){
	new_array = []
	for(var i = 1; i <= integer; i++) {
		var text = ""
		for(var j = 0, length_word = Math.floor(Math.random() * 10) + 1; j < length_word; j++) {
		var letters = "abcdefghijklmnopqrstuvwxyz"
		text += letters[Math.floor(Math.random() * 26)]
		}
		new_array.push(text)
	}
	return new_array
}

//DRIVER CODE

// Release 0
// lenght_string(["long phrase","longest phrase","longer phrase"]);
// lenght_string(["Assunta","Anton","Josephine"]);
// lenght_string(["Hello World","Hallo Welt","Salut"]);

// Release 1
// duplicate_check({name: "Steven", age: 54},{name: "Tamir", age: 53});
// duplicate_check({name: "Tutti", age: 30},{name: "Tutti", age: 32});

// Release 2
//random_text(3)

for (var i = 1; i <= 10; i++) {
	var random_array = random_text(i + 1);
	console.log(random_array);
	lenght_string(random_array);
} 

