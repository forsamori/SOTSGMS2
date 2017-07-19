event_inherited();

instance_create(x,y,obj_blood);
show_debug_message("Destroying pedestrian");
if(!eaten)
{
    obj_seagull.multiplier_triggered = true;
    obj_seagull.counter = 1;
    
    obj_seagull.score += points*obj_seagull.multiplier;
    show_debug_message(obj_seagull.score);
}
// Blood

scr_part_blood_play(x,y,100);


