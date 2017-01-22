/// Seagull Eatting State

obj_seagull.experience += obj_seagull.held_item.weight
obj_seagull.weight += obj_seagull.held_item.weight

obj_seagull.held_item.eaten = true;

Evo = false;


obj_seagull.item_held = false;
if (obj_seagull.experience >= obj_seagull.next_level_exp)
{
    obj_seagull.experience = 0
    obj_seagull.next_level_exp *= 2
    obj_seagull.level += 1
    
    Evo = true;
}
show_debug_message(obj_seagull.held_item);

if(instance_exists(obj_seagull.held_item))
{
    with(obj_seagull.held_item)
    {
        obj_seagull.held_item.pickedUp = false;
        instance_destroy();
    }
}

obj_seagull.held_item = noone;
//obj_seagull.swooping = false;

if(Evo)
{
    state = scr_seagull_evolving_state;
}
else
{
    state = scr_seagull_move_state;
}

