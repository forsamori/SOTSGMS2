///scr_get_input
//Mouse
left_mouse_pressed = mouse_check_button_pressed(mb_left);
right_mouse_pressed =  mouse_check_button_pressed(mb_right);

// Keyboard
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
space_key = keyboard_check(vk_space);

esc_key = keyboard_check(vk_escape);
if(esc_key)
{
    game_end();
}
