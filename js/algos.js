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
}


//Release 1: Find a Key-Value Match
// Declare a function hasMatch that will take in two objects as parameters
// Declare a variable match, and set it to false
// Set index at 0, until the index is equal to the length of object 1, iterate through
        // For each object at index i,
                // If the key value pair matches
                        // set variable match, to true
// Return the variable match















//Driver Code:
var sample = ["long phrase","longest phrase","longer phrase"];
console.log(longestPhrase(sample));

var anotherSample = ["shortest", "second longest", "the most long of all", "wrong"];
console.log(longestPhrase(anotherSample));

var finalSample = ["this is", "another test", "to make sure", "my longest phrase function works"];
console.log(longestPhrase(finalSample));