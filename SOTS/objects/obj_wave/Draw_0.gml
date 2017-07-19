var_mouse_pos_x = mouse_x - __view_get( e__VW.XView, 0 );
var_mouse_pos_y = mouse_y - __view_get( e__VW.YView, 0 ) ;

shader_set(shd_wave_distort);
shader_set_uniform_f(uni_time, var_time_var);
shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
draw_self();
shader_reset();


