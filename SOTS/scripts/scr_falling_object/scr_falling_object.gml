/// @description  scr_falling_object(object)
/// @function  scr_falling_object
/// @param object

faller = argument[0];



if (faller.pickedUp == true)
{
    faller.image_angle = obj_seagull.dir;
    x = obj_seagull.x;
    y = obj_seagull.y;
    show_debug_message("pickedup = true");
    image_xscale = obj_seagull.image_xscale * 2;
    image_yscale = obj_seagull.image_yscale * 2;
}

// If the segul is dropping then set picked up bool false.
if (obj_seagull.drop == true)
{
    falling = true;
    pickedUp = false;
    obj_seagull.drop = false
    show_debug_message("Dropping item");
}

if (falling == true)
{
    show_debug_message(self.id);
    scaleVal = ((-1 / 10) * fallCounter) + 2;
    image_xscale = initialScaleX * scaleVal;
    image_yscale = initialScaleY * scaleVal;
    fallCounter++;
    if (fallCounter >= 10)
    {
        fallCounter = 0;
        falling = false;
        instance_destroy();
    }
}
