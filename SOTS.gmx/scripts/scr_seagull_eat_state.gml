/// Seagull Eatting State

obj_seagull.experience += obj_seagull.held_item.weight

if (obj_seagull.experience >= obj_seagull.next_level_exp)
{
    obj_seagull.experience = 0
    obj_seagull.next_level_exp *= 2
    obj_seagull.size += 1
    
    image_xscale *= 2
    image_yscale *= 2

    if(instance_exists(obj_view))
    {
        obj_view.width *= 2
        obj_view.height *= 2
        
        view_wview[0]= obj_view.width
        view_hview[0] = obj_view.height
    
        
    }

}


obj_seagull.drop = true;
obj_seagull.item_held = false;
if (obj_seagull.experience >= obj_seagull.next_level_exp)
{
    obj_seagull.experience = 0
    obj_seagull.next_level_exp *= 2
    obj_seagull.size += 1
    
    image_xscale *= 2
    image_yscale *= 2

    if(instance_exists(obj_view))
    {
        obj_view.width *= 2
        obj_view.height *= 2
        
        view_wview[0]= obj_view.width
        view_hview[0] = obj_view.height
    
        
    }

}






if(instance_exists(obj_seagull.held_item))
{
with(obj_seagull.held_item)
    {
        pickedUp = false;
        //instance_destroy();
    }
}
obj_seagull.held_item = noone;
//obj_seagull.swooping = false;

obj_seagull.held_item = noone

state = scr_seagull_move_state;
