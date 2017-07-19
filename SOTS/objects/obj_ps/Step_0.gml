/// @description Emit The particals
scr_get_input();
if(up_key)
{
    part_particles_create(global.ps, mouse_x, mouse_y, global.pt_blood,10);
}
if(down_key)
{
    part_particles_create(global.ps, mouse_x, mouse_y, global.pt_eating,10);
}

