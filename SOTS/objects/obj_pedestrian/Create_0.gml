event_inherited();
points = 100;

weight = 1;

//set scale
image_xscale = 0.25;
image_yscale = 0.25;
initialScaleX = image_xscale;
initialScaleY = image_yscale;

walkSpeed = 2;
canChange = false;

//ANIMATION
rando = irandom_range(1,4);
if (rando == 1)
{
    ANIM_WALK_START = 0;
    ANIM_WALK_END = 3;
}
else if (rando == 2)
{
    ANIM_WALK_START = 8;
    ANIM_WALK_END = 11;
}
else if (rando == 3)
{
    ANIM_WALK_START = 16;
    ANIM_WALK_END = 19;
}
else if (rando == 4)
{
    ANIM_WALK_START = 24;
    ANIM_WALK_END = 27;
}

//ANIM_WALK_START = 0;
//ANIM_WALK_END = 3;
//ANIM_RUN_START = 4;
//ANIM_RUN_END = 7;

image_speed = 0;

canChange = false; 

chosenPath = pth_pedestrian_1;

///follow a path
//random_set_seed(obj_seagull.game_time);

switch (obj_spawner.rando)
{
    case 1: chosenPath = pth_pedestrian_1; break;
    case 2: chosenPath = pth_pedestrian_2; break;
    case 3: chosenPath = pth_pedestrian_3; break;
    case 4: chosenPath = pth_pedestrian_4; break;
    case 5: chosenPath = pth_pedestrian_5; break;
    case 6: chosenPath = pth_pedestrian_6; break;
    case 7: chosenPath = pth_pedestrian_7; break;
    case 8: chosenPath = pth_pedestrian_8; break;
    case 9: chosenPath = pth_pedestrian_9; break;
    case 10: chosenPath = pth_pedestrian_10; break;
    case 11: chosenPath = pth_pedestrian_11; break;
}

show_debug_message("path: " + string(chosenPath));
path_start(chosenPath, walkSpeed, path_action_restart, 1);

