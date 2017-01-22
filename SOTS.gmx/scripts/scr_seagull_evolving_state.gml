/// Where the seagull starts to evolve.

// Pause the game
// Dont need to write anything here yet
if(!obj_seagull.evolving)
{
    alarm_set(1,room_speed * 8);
    obj_seagull.evolving = true;
    
    obj_seagull.evo_alpha = 1/room_speed
    obj_seagull.evo_hzoom = (view_wview - (view_wview/2))/(2*room_speed) 
    obj_seagull.evo_vzoom = (view_hview - (view_hview/2))/(2*room_speed)
    
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
    view_hview -= evo_vzoom
    view_wview -= evo_hzoom
}

// Rotate to be facing up



// Start Flashing and the evolving.
if(alarm_get(1) <= room_speed*4)
{
    switch(obj_seagull.level)
    {
        case 2:
            obj_seagull.image_index = 1;
            break;
        case 3:
            obj_seagull.image_index = 2;
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
    
    view_hview[0] += (2*evo_vzoom)
    view_wview[0] += (2*evo_hzoom)
    
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
