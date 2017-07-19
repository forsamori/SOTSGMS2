/// @description  Growing Script
obj_exp = 0
obj_next_level_exp = 10

obj_level = 1
obj_size = 1

obj_eating = false
obj_holding = false

//Stepping
if (obj_eating)
{
    
}
else
{
    if (obj_exp >= obj_next_level_exp)
    {
        obj_exp = 0
        obj_next_level_exp *= 2
        object_size += 1
        
        image_xscale = object_size
        image_yscale = object_size
    
        if(obj_view.exists)
        {
            obj_view.width *= 2
            obj_view.height *= 2
            
            __view_set( e__VW.XPort, 0, obj_view.width )
            __view_set( e__VW.YPort, 0, obj_view.height )
        }
    
    }   
}

// Collision
