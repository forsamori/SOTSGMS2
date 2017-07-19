shader_set(shd_wave_distort);
shader_set_uniform_f(uni_time, var_time_var);
shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
draw_self();
shader_reset();

