/// @description  scr_dropping_state
if(instance_exists(obj_seagull.held_item))
{
    with(obj_seagull.held_item)
    {
        obj_seagull.held_item.pickedUp = false;
        obj_seagull.held_item.falling = true;
        
        obj_seagull.drop = true;
        obj_seagull.item_held = false;
        //instance_destroy();
    }
}

obj_seagull.held_item = noone;
obj_seagull.state = scr_seagull_move_state;
