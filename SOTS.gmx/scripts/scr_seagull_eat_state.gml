/// Seagull Eatting State

obj_seagull.experience += obj_seagull.held_item.weight

obj_seagull.drop = true;
obj_seagull.item_held = false;

if(instance_exists(obj_seagull.held_item))
{
    with(obj_seagull.held_item)
    {
        instance_destroy()
    }
}

obj_seagull.held_item = noone

if (obj_seagull.experience >= obj_seagull.next_level_exp)
{
    obj_seagull.experience = 0
    obj_seagull.next_level_exp *= 2
    obj_seagull.level += 1
    
    state = scr_seagull_evolving_state;
}
else
{
    state = scr_seagull_move_state;
}

