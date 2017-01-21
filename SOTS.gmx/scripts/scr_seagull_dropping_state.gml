/// scr_dropping_state
if(instance_exists(obj_seagull.held_item))
{
    with(obj_seagull.held_item)
    {
        pickedUp = false;
        
        
        
        
        //instance_destroy()
    }
}
obj_seagull.drop = true;
obj_seagull.item_held = false;
state = scr_seagull_move_state;
