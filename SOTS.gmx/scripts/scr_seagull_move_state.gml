///scr_seagull_move_state
scr_get_input();

//rotate seagull towards mouse position
obj_seagull.image_angle = point_direction( obj_seagull.x,  obj_seagull.y, mouse_x, mouse_y);
obj_seagull.dir =  point_direction( obj_seagull.x,  obj_seagull.y, mouse_x, mouse_y);
if (fly_mode)
{

    move_towards_point(mouse_x,mouse_y,forward_speed);
    //Move forward
    obj_seagull.image_xscale = initialScaleX;
    obj_seagull.image_yscale = initialScaleY;
    //reset scale counter when leaving swoop state
    scaleCounter = 0;
}


if(left_mouse_pressed && !item_held)
{
    state = scr_seagull_swooping_state
}
else if(left_mouse_pressed && item_held)
{
    state = scr_seagull_dropping_state
}
else if(right_mouse_pressed && item_held && held_item.eatable)
{
    state = scr_seagull_eat_state
}
