var colors = ['red', 'green', 'blue', 'yellow'];
var names = ['Matthew', 'Mark', 'Luke', 'John'];

colors.push('purple');
names.push('Judas');

console.log(colors);
console.log(names);

var horses = {};

for (var i = 0; i < names.length; i++) {
    horses[names[i]] = colors[i];
}

console.log(horses);

function Car(color, year, is_automatic) {

    console.log("Initializing car:", this);

    this.color = color;
    this.year = year;
    this.is_automatic = is_automatic;

    this.honk = function(int) {
        for (var i = 0; i < int; i++) {
            console.log("*honk*");
        }
    }

    console.log("Car complete:", this);
}

console.log("Let's build a car!");
var car1 = new Car("green", 1990, true);
var car2 = new Car("blue", 2016, false);
var car3 = new Car("yellow", 2002, true);

car3.honk(3);