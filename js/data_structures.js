

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