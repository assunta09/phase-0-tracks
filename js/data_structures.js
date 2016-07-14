var colors = ["red", "blue", "green", "purple"];

var names = ["Ben", "Ed", "Michael", "Assunta"];

colors.push("yellow");
names.push("Tom");

console.log(colors);
console.log(names);

var horses = {};

for (var i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i] ;
}

console.log(horses)

function Car(model, make, year) {
	console.log("Our new car:", this);
	this.model = model;
	this.make = make;
	this.year = year;

	this.honk = function() {
		console.log("Beep!!");
	};
	console.log("CAR INITIALIZATION COMPLETE");
}

console.log("let's build a car...");
var mercedes = new Car("A class", "Mercedes", 2015);
console.log(mercedes);
console.log("Our car can honk:");
mercedes.honk();
console.log("---------------");

console.log("let's build a car...");
var volkswagen = new Car("Golf 2", "Volkswagen", 1995);
console.log(volkswagen);
console.log("Our car can honk:");
volkswagen.honk();
console.log("---------------");

console.log("let's build a car...");
var ford = new Car("Mustang", "Ford", 1968);
console.log(ford);
console.log("Our car can honk:");
ford.honk();
console.log("---------------");



