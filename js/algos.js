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
	console.log(array_with_lengths);
	var longest_string = Math.max.apply(Math, array_with_lengths); 
	var index_string = array_with_lengths.indexOf(longest_string);
	console.log(array[index_string]);
}


lenght_string(["long phrase","longest phrase","longer phrase"]);
lenght_string(["Assunta","Anton","Josephine"]);
lenght_string(["Hello World","Hallo Welt","Salut"]);


