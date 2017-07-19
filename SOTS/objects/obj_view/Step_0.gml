/// @description  Move towards the player by 10%

if(obj_seagull.fly_mode)
{
if (instance_exists(obj_seagull)) {
    x +=(obj_seagull.x - x) * 0.1;
    y +=(obj_seagull.y - y) * 0.1;
}
}

