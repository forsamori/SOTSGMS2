/// @description Initialize seagull
//Speed = 9001, etc
BASE_SPEED = 5;
multiplier = 1;
MULTIPLIER_COOLDOWN = 5;
multiplier_triggered = false;
counter = 0;
remaining_time = 0;
game_time = 0;



//Animation frames
ANIM_LVL1_MOVE_START = 0
ANIM_LVL1_MOVE_END = 11
ANIM_LVL2_MOVE_START = 23
ANIM_LVL2_MOVE_END = 37
ANIM_LVL3_MOVE_START = 47
ANIM_LVL3_MOVE_END = 59

forward_speed = BASE_SPEED;
swooping = false;
drop = false;
hover_mode = false;
fly_mode = true;

item_held = false;

// Sam A - Growing Varibles;
experience = 0
weight = 1;
next_level_exp = 10
level = 1
size = 1

evolving = false;
evo_alpha = 0.0
evo_hzoom = 0.0
evo_vzoom = 0.0
evo_dir = 0.0

var dir = 0.0

held_item = noone;

//
state = scr_seagull_move_state

//set scale
image_xscale = 0.25;
image_yscale = 0.25;

//Greg's code for scaling swoop
scaleCounter = 0;
initialScaleX = obj_seagull.image_xscale;
initialScaleY = obj_seagull.image_yscale;

image_speed = 0;

//Bass constantly play
snd = audio_play_sound(snd_bass, 0, 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_bass2, 0, 1);
audio_sound_gain(snd, 1, 0);

//Level2
snd = audio_play_sound(snd_first1, 0, 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_first2, 0 , 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_second1, 0, 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_second2, 0 , 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_second3, 0, 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_second4, 0 , 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_third1, 0, 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_third2, 0 , 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_fourth1, 0, 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_fifth1, 0, 1);
audio_sound_gain(snd, 1, 0);
snd = audio_play_sound(snd_sixth1, 0, 1);
audio_sound_gain(snd, 1, 0);

//Level3
snd = audio_play_sound(snd_spook1, 0, 1);
audio_sound_gain(snd, 1, 0);

/// Sea Code
Seacounter = 0;
seaSpeed = 0;
seaForce = 0.001;

