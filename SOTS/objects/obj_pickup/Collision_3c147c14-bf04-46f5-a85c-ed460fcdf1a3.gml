/// @description  Colloision With Seagull while swooping
if (obj_seagull.swooping == true && !obj_seagull.item_held)
{
    if(obj_seagull.weight >= self.weight)
    {
        pickedUp = true;
        other.item_held = true;
        other.held_item = self;
        show_debug_message("Picked up item");
    }
}


