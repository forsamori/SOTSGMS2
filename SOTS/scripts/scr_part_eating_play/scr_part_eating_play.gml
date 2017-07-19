/// @description  scr_part_blood_play(x,y, number);
/// @function  scr_part_blood_play
/// @param x
/// @param y
/// @param  number

posX = argument[0];
posY = argument[1];
number = argument[2];

part_particles_create(global.ps, posX, posY, global.pt_eating,number);
