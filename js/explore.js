// Take the input string or argument and place it in a variable.
// Create a loop (using a countdown loop) that starts at the ending character of the variable
// and then puts that character and adds it to a string. 

function reverseString(str) {
    var reverseword = "";
    for (var i = str.length - 1; i >= 0; i--) { 
        reverseword += str[i]; 
    }
    return reverseword
    console.log(reverseword); 
}

var n = 1
if (n == 1) {
    console.log(reverseString('hello world'));
}