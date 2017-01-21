///scr_seagull_move_state
scr_get_input();

obj_seagull.image_xscale = initialScaleX;
obj_seagull.image_yscale = initialScaleY;
//reset scale counter when leaving swoop state
scaleCounter = 0;
    
obj_seagull.dir =  point_direction( obj_seagull.x,  obj_seagull.y, mouse_x, mouse_y);
obj_seagull.pdist = point_distance( obj_seagull.x,  obj_seagull.y, mouse_x, mouse_y);


if(obj_seagull.pdist <= 30)
{
    forward_speed = 0;
    hover_mode = true;
    
}
else
{
    hover_mode = false;
    forward_speed = BASE_SPEED;
    //rotates seagull towards mouse
    obj_seagull.image_angle = point_direction( obj_seagull.x,  obj_seagull.y, mouse_x, mouse_y);
   
}

//Move forward
 move_towards_point(mouse_x,mouse_y,forward_speed);


//Follow hover path
//path_start(pth_hover,3,path_action_restart,0);
//obj_seagull.image_angle += 3;
    




if(left_mouse_pressed && !obj_seagull.item_held)
{
    obj_seagull.state = scr_seagull_swooping_state
}
else if(left_mouse_pressed && obj_seagull.item_held)
{
    obj_seagull.state = scr_seagull_dropping_state
}
else if(right_mouse_pressed && obj_seagull.item_held && obj_seagull.held_item.eatable)
{
    obj_seagull.state = scr_seagull_eat_state
}
