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
}

//state = scr_seagull_move_state
