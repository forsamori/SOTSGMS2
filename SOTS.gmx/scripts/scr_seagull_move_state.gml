///scr_seagull_move_state
scr_get_input();


obj_seagull.dir =  point_direction( obj_seagull.x,  obj_seagull.y, mouse_x, mouse_y);
obj_seagull.pdist = point_distance( obj_seagull.x,  obj_seagull.y, mouse_x, mouse_y);

//rotate seagull towards mouse position
if(obj_seagull.pdist <= 30)
{
    forward_speed = 0;
    hover_mode = true;
}
else
{
    hover_mode = false;
    forward_speed = 5;
    obj_seagull.image_angle = point_direction( obj_seagull.x,  obj_seagull.y, mouse_x, mouse_y);
}


if (!hover_mode)
{
    //Move forward
    move_towards_point(mouse_x,mouse_y,forward_speed);
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
