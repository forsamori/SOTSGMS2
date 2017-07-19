/// @description  pickup_Update

// Move with the seagull.
if (pickedUp == true)
{
    self.image_angle = obj_seagull.dir;
    self.x = obj_seagull.x;
    self.y = obj_seagull.y;
    show_debug_message("pickedup = true");
    // x2 because the sprite sizes 
    self.image_xscale = self.initialScaleX * obj_seagull.scaleVal * 2;
    self.image_yscale = self.initialScaleX * obj_seagull.scaleVal * 2;
}

// If the segul is dropping then set picked up bool false.
//if (obj_seagull.drop == true)
//{
 //   self.falling = true;
//    self.pickedUp = false;
//    obj_seagull.drop = false
//    show_debug_message("Dropping item");
//}

if (falling == true)
{
    self.scaleVal = ((-self.initialScaleX / 10) * self.fallCounter) + (2 * self.initialScaleX);
    self.image_xscale = self.scaleVal;
    self.image_yscale = self.scaleVal;
    self.fallCounter++;
    if (self.fallCounter >= 10)
    {
        if (splash == true)
        {
            obj_seagull.Seacounter = 10;
            scr_trigger_wave();
        }
        self.fallCounter = 0;
        self.falling = false;
        instance_destroy();
    }
}


