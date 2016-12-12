
// GOAL: write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//
// Pseudocode:
// Loop through each element of array
// Find the length of each element in the array.
// Sort the array and return the longest element (which should be in the 0 position)


function longest_element(input_array) {
var length = 0;
var longest;

for(var i=0; i < input_array.length; i++){
    if(input_array[i].length > length){
        var length = input_array[i].length;
        longest = input_array[i];
    }      
	} 
	console.log(longest);
}

var words = ['poop', 'poopy', 'poo'];
var words2 = ['dog', 'elephant', 'bear'];

longest_element(words)
longest_element(words2)
longest_element(["run","runs","running"])