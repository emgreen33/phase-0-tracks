// Release 4: Write a reverse function
// Declare a function that takes in a string as a parameter
// Declare an empty string variable reversedString
// Create a for loop,
//      - Set the index to the value of the last letter
//      - While the index is greater or equal to 0 (first letter), run the loop
//      - Take 1 from index each time
//      - For each letter in the string, add it to reversedString starting with the last
// Return the reversedString

function reverse(string) {
    var reversedString = "";
    for (var i = string.length-1; i >= 0; i-- ) {
        reversedString += string[i];
    }
    return reversedString;
}

// Call the function using Javascripts call syntax:
var answer = console.log(reverse("hello"));

