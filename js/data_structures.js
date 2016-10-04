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