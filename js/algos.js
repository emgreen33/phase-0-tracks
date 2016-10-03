//Release 0: Find the longest phrase
// Declare a function longestPhrase that will take in an array of strings
// Declare a new variable, longest, that is set initially at null and will be updated
// Set index at 0, until the index is equal to the length of the array iterate through
            // For each phrase in the array,
                    // If the next phrase is longer than the longest variable,
                            // Update the longest variable
// Return the longest phrase variable

function longestPhrase(array) {
    longest = array[0];
    for (var i = 0; i < array.length; i++ ) {
        if (array[i].length > longest.length) {
            longest = array[i];
        };
    } return longest;
};


//Release 1: Find a Key-Value Match
// Declare a function hasMatch that will take in two objects as parameters
// Declare a variable match, and set it to false
// Create an array of the keys for object 1
// Set index at 0, until the index is equal to the length of object 1, iterate through
        // For each object, check if the value of the same key is equal
                // If the values match
                    // return true
        // Otherwise return false
// Return the variable match

function hasMatch(object1, object2) {
    keys1 = Object.keys(object1);
    for (var i = 0; i < keys1.length; i++ ) {
        if (object1[keys1[i]] == object2[keys1[i]]) {
            return true;
        };
    }; return false;
};

var personOne = {name: "Bob", age: 30, city: "Chicago"};
var personTwo = {name: "Emily", age: 25, city: "Chicago"};

console.log(hasMatch(personOne, personTwo));












//Driver Code:
// var sample = ["long phrase","longest phrase","longer phrase"];
// console.log(longestPhrase(sample));

// var anotherSample = ["shortest", "second longest", "the most long of all", "wrong"];
// console.log(longestPhrase(anotherSample));

// var finalSample = ["this is", "another test", "to make sure", "my longest phrase function works"];
// console.log(longestPhrase(finalSample));