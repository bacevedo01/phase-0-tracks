
// GOAL: write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//
// Pseudocode:
// Loop through each element of array
// Find the length of each element in the array.
// Sort the array and return the longest element (which should be in the 0 position)

var words = ['poop', 'poopy', 
           'poo'];

var length = 0;
var longest;

for(var i=0; i < words.length; i++){
    if(words[i].length > length){
        var length = words[i].length;
        longest = words[i];
    }      
} 

console.log(longest);