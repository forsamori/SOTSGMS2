/// @description  Where the seagull starts to evolve.

// Pause the game
// Dont need to write anything here yet
if(!obj_seagull.evolving)
{
    alarm_set(1,room_speed * 8);
    obj_seagull.evolving = true;
    
    obj_seagull.evo_alpha = 1/room_speed
    obj_seagull.evo_hzoom = (__view_get( e__VW.WView, 0 ) - (__view_get( e__VW.WView, 0 )/2))/(2*room_speed) 
    obj_seagull.evo_vzoom = (__view_get( e__VW.HView, 0 ) - (__view_get( e__VW.HView, 0 )/2))/(2*room_speed)
    
    obj_seagull.evo_dir = (obj_seagull.image_angle-90)/3*room_speed
    
    move_towards_point(mouse_x, mouse_y, 0.0);
    
    obj_black_out.x = obj_seagull.x;
    obj_black_out.y = obj_seagull.y;
    
    obj_seagull.image_speed = 0;
    
}


// Fade out background to black
if(alarm_get(1) > room_speed*7)
{
    obj_black_out.image_alpha += evo_alpha
}

show_debug_message(room_speed);

// Zoom camera onto the seagull.
if(alarm_get(1) > room_speed*6)
{
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - (evo_vzoom) )
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - (evo_hzoom) )
}

// Rotate to be facing up



// Start Flashing and the evolving.
if(alarm_get(1) <= room_speed*4)
{
    switch(obj_seagull.level)
    {
        case 2:
            obj_seagull.image_index = obj_seagull.ANIM_LVL2_MOVE_START;
            break;
        case 3:
            obj_seagull.image_index = obj_seagull.ANIM_LVL3_MOVE_START;
            break;
        default:
            obj_seagull.image_index = 0;
            break;
    }
    
}



if(alarm_get(1) <= room_speed*2)
{
    obj_seagull.image_xscale += 1/(room_speed);
    obj_seagull.image_yscale += 1/(room_speed);
    
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + ((2*evo_vzoom)) )
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + ((2*evo_hzoom)) )
    
}

if(alarm_get(1) <= room_speed*1)
{
    obj_black_out.image_alpha -= evo_alpha
}

if(alarm_get(1) <= 0)
{
    obj_black_out.evolving = 0
    alarm[1] = -1;
    state = scr_seagull_move_state;
}
// Resume
