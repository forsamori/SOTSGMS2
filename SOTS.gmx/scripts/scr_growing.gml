/// Growing Script
obj_exp = 0
obj_next_level_exp = 10

obj_level = 1
obj_size = 1


//Stepping
if (obj_exp >= obj_next_level_exp)
{
    obj_exp = 0
    obj_next_level_exp *= 2
    object_size += 1
    image_xscale = object_size
    image_yscale = object_size
}

// Collision
