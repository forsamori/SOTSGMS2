/// @description scr_chance(percentage)
/// @function scr_chance
/// @param percentage
var percent = argument[0]; // Between 0 and 1
percent = clamp (percent,0,1);
return (random(1) < percent)
