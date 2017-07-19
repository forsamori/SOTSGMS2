/// @description Seagull Movement
script_execute(state);

//image_angle = point_direction(x, y, mouse_x, mouse_y);

//if (fly_mode)
//{
//
//    move_towards_point(mouse_x,mouse_y,forward_speed);
//    //Move forward
//}

game_time++;

///Direction Facing
if(hover_mode)
{
    obj_seagull.image_angle = -path_position * 360;
 }
 else
 {
    obj_seagull.image_angle = point_direction( obj_seagull.x,  obj_seagull.y, mouse_x, mouse_y);
 }

///Multiplier
//If in cooldown period, each explosion multiplies multiplier by 2.
//If cooldown expires, reset to 1x.

if (counter > MULTIPLIER_COOLDOWN * room_speed)
{
    multiplier = 1;
    counter = 0;
    multiplier_triggered = false;
}
else if (multiplier_triggered == true)
{
    multiplier += 0.2;
    multiplier_triggered = false;
}

if (counter != 0)
{
    counter++;
}
remaining_time = (MULTIPLIER_COOLDOWN * room_speed) - counter;

/// Sea Moving

//scr_trigger_wave();
    



if(obj_terrain_deep_water.x <= -10)
{
    obj_black_out.depth = obj_seagull.depth - 1;
    obj_seagull.forward_speed = 0;
    
    obj_black_out.image_alpha += (obj_terrain_deep_water.x + 10)/(obj_terrain_deep_water.hspeed*1000)
    show_debug_message( obj_black_out.image_alpha)
    obj_black_out.x = obj_seagull.x;
    obj_black_out.y = obj_seagull.y;
    if(obj_black_out.image_alpha >= 1)
    {   
        obj_highscore_board.gameState = "win"
        
    }

}

