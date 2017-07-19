event_inherited();

obj_seagull.multiplier_triggered = true;
obj_seagull.counter = 1;

obj_seagull.score += points*obj_seagull.multiplier;
show_debug_message(obj_seagull.score);

