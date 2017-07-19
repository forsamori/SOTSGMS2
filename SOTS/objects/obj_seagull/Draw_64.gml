/// @description Draw multiplier, score.
draw_text(window_get_width() - 50, window_get_height() - 50, string_hash_to_newline(string(multiplier) + "X"));
draw_text(window_get_width() - 200, window_get_height() - 30, string_hash_to_newline("Score: " + string(score)));
draw_healthbar(0, 10, 100, 20, remaining_time, c_black, c_red, c_green, 0, true, false);

