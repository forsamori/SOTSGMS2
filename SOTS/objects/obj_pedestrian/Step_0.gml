/// @description leave path
if (pickedUp == true)
{
    path_end();
}

/// While being held
event_inherited();

if(pickedUp == true)//|| dropped == true)
{
    //ANIM_WALK_START = 4;
    //ANIM_WALK_END = 7;
 switch(rando)
 {
 case 1:
    ANIM_WALK_START = 4;
    ANIM_WALK_END = 7;
    break;
     case 2:
    ANIM_WALK_START = 11;
    ANIM_WALK_END = 15;
    break;
     case 3:
    ANIM_WALK_START = 19;
    ANIM_WALK_END = 24;
    break;
     case 4:
    ANIM_WALK_START = 27;
    ANIM_WALK_END = 31;
    break;
 }
}
else
{
    //ANIM_WALK_START = 0;
    //ANIM_WALK_END = 3; 
    switch(rando)
    {
    case 1:
    ANIM_WALK_START = 0;
    ANIM_WALK_END = 3;
    break;
     case 2:
    ANIM_WALK_START = 8;
    ANIM_WALK_END = 11;
    break;
     case 3:
    ANIM_WALK_START = 16;
    ANIM_WALK_END = 19;
    break;
     case 4:
    ANIM_WALK_START = 24;
    ANIM_WALK_END = 27;
    break;
    }

}


///change walkspeed

if (obj_seagull.weight % 5 == 0 && canChange == true)
{
    canChange = false;
    walkSpeed += 1;
}
if (obj_seagull.weight % 5 == 1 && canChange == false)
{
    canChange = true;
}

