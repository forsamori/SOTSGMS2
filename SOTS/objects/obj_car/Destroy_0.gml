event_inherited();

if(!eaten)
{
    instance_create(x,y,obj_explosion);
}

show_debug_message("Destroying car");

obj_seagull.multiplier_triggered = true;
obj_seagull.counter = 1;

obj_seagull.score += points*obj_seagull.multiplier;
show_debug_message(obj_seagull.score);
if(eaten)
{
    scr_part_eating_play(x,y,50);
}

