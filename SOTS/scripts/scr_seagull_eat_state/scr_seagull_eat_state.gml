/// @description  Seagull Eatting State

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
    if (obj_seagull.level == 2)
    {
        //audio_sound_gain(snd_first1, 1, 5000);
       // audio_sound_gain(snd_first2, 1, 5000);
        //audio_sound_gain(snd_second1, 1, 5000);
        //audio_sound_gain(snd_second2, 1, 5000);
        //audio_sound_gain(snd_second3, 1, 5000);
        //audio_sound_gain(snd_second4, 1, 5000);
        //audio_sound_gain(snd_third1, 1, 5000);
        //audio_sound_gain(snd_third2, 1, 5000);
        //audio_sound_gain(snd_fourth1, 1, 5000);
        //audio_sound_gain(snd_fifth1, 1, 5000);
        //audio_sound_gain(snd_sixth1, 1, 5000);
    }
    else if (obj_seagull.level == 3)
    {
        //audio_sound_gain(snd_spook1, 1, 5000);
    }
    
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

