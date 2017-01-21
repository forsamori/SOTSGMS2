/// Seagull_swooping_state

if (swooping == false)
{
    swooping = true;
    alarm[0] = room_speed;
    obj_seagull.forward_speed = BASE_SPEED + 5;
    mousePosx = mouse_x;
    mousePosy = mouse_y;
}
else if (swooping == true)
{
    obj_seagull.image_angle = point_direction( obj_seagull.x,  obj_seagull.y, mouse_x, mouse_y);
    move_towards_point(mouse_x,mouse_y,forward_speed);
  //  obj_seagull.image_xscale *= 0.9;
    //obj_seagull.image_yscale *= 0.9;
    
    //scaleVal = ((1/450) * (scaleCounter * scaleCounter)) - ((1/15) * scaleCounter) + 1;
    scaleVal = ((1/(0.5 * (room_speed * room_speed))) * (scaleCounter * scaleCounter)) - (1/(0.5 * room_speed) * scaleCounter) + 1;
    
    obj_seagull.image_xscale = initialScaleX * scaleVal;
    obj_seagull.image_yscale = initialScaleY * scaleVal;

    scaleCounter += 1;
    
}

//state = scr_seagull_move_state
