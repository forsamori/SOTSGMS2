
obj_terrain_deep_water.hspeed -= 10.1
obj_wave.hspeed -= 10.1

//if(obj_terrain_deep_water.x >= obj_terrain_deep_water.var_start_xpos)
//{
//    obj_seagull.seaForce = 0;
    
//}
//else
//{
//     obj_seagull.seaForce = 0.001;
//}

//obj_terrain_deep_water.hspeed += seaForce
//obj_wave.hspeed += seaForce

show_debug_message(obj_wave.x)

if(obj_terrain_deep_water.x <= -10)
{
    obj_seagull.forward_speed = 0;
    
    room_goto(rm_ending)
    

}
    


