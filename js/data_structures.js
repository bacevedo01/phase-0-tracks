

var colors = ["Blue","Red", "Green", "Yellow"]
var horse_names = ["Ed", "Silver", "Pegesus", "Comet"]

colors.push("White")
horse_names.push("Horsey")

console.log(colors)
console.log(horse_names)

function combine_arrays( keys, values)
{
    var horses = {};
    if ( keys.length != values.length)
       return null;
    for (var index in keys)
        horses[keys[index]] = values[index];
     return horses;
};


var horses = combine_arrays( horse_names, colors);

console.log(horses)

function Car(make, model, color) {
	this.make = make;
	this.model = model;
	this.color = color;

	this.vroom = function() { console.log("Vrrooom!"); };

	console.log("-----------");
}

var newCar = new Car("Dodge", "Challenger", "Black");
console.log(newCar.make);
console.log(newCar.model);
console.log(newCar.color);
newCar.vroom();

var newCar = new Car("Porche", "911 GT", "White w/ stripes");
console.log(newCar.make);
console.log(newCar.model);
console.log(newCar.color);
newCar.vroom();

var newCar = new Car("Ford", "GT", "Matte black");
console.log(newCar.make);
console.log(newCar.model);
console.log(newCar.color);
newCar.vroom();

