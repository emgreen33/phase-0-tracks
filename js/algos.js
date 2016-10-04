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

//---------------------------------------------------------------------------------------------------------------------
//Release 1: Find a Key-Value Match
// Declare a function hasMatch that will take in two objects as parameters
// Create an array of the keys for object 1
// Set index at 0, until the index is equal to the length of object 1, iterate through
        // For each object, check if the value of the same key is equal
                // If the values match
                    // return true
        // Otherwise return false
// Return the variable match

function hasMatch(object1, object2) {
    var keys1 = Object.keys(object1);
    for (var i = 0; i < keys1.length; i++ ) {
        if (object1[keys1[i]] === object2[keys1[i]]) {
            return true;
        };
    }; return false;
};

//---------------------------------------------------------------------------------------------------------------------
// Release 2: Generate Random Test Data
// Declare a function that takes an integer as a parameter
// Create an array of letters from a to z
// Create a variable of an empty array
// Create a variable of empty word string
        // While i is less than the number given as argument,
                // generate random number between 1 and 10 for number of letters in word
                // While j is less than the random number of word length
                        // Generate a random number between 0 and 25 for alphabet index
                        // Add the letter into the word string
        // Push the random word into the array
        // Reset the word string to empty string
// Return the new random array

function randomTestData(number) {
    var alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');
    var randomArray = [];
    var wordString = "";
    for (var i = 0; i < number; i++ ) {
        var randomNum = Math.floor(Math.random() * 10) + 1;
        for (var j = 0; j < randomNum; j++ ) {
            var randomLetter = Math.floor(Math.random() * 25) + 0;
            wordString += alphabet[randomLetter];
        } randomArray.push(wordString);
        wordString = "";
    } return randomArray;
}

//---------------------------------------------------------------------------------------------------------------------
//Driver Code:

//Release 0
var sample = ["long phrase","longest phrase","longer phrase"];
console.log(longestPhrase(sample));
var finalSample = ["this is", "another test", "to make sure", "my longest phrase function works"];
console.log(longestPhrase(finalSample));


// Release 1
var personOne = {name: "Bob", age: 30, city: "Chicago"};
var personTwo = {name: "Emily", age: 25, city: "Chicago"};
console.log(hasMatch(personOne, personTwo));


//Release 2
console.log(randomTestData(5));
console.log(randomTestData(3));
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

for (var i = 0; i < 10; i++ ) {
    var test = randomTestData(5);
    console.log(test);
    console.log("The longest word is:" + longestPhrase(test));
}