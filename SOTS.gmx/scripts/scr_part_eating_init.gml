
    //Init our Global Blood Partical
    global.pt_eating = part_type_create();
    var pt = global.pt_eating;
    
    // set the setting for the blood.
    part_type_shape(pt,pt_shape_pixel);
    part_type_size(pt,.1,.2,0,0);
    part_type_colour2(pt,c_red,c_maroon);
    part_type_speed(pt, 2, 5 ,-0.1,0);
    part_type_direction(pt, 0, 360, 0,0);
    part_type_gravity(pt,0,0);
    part_type_life(pt, 25,50);

