/// @description  Main Menu.
scr_get_input();
if(up_key)
{
    self.selection -= 1;
    if(self.selection < 0)
    {
        self.selection = array_length_1d(array)
    }
}

if(down_key)
{
    self.selection += 1;
    if(self.selection < array_length_1d(array))
    {
        self.selection = 0
    }
}

draw_set_font(Test_Menu_Font);



for(var i = 0; i <array_length_1d(array) - 1; i++;)
{
    if(self.selection == i)
    {
        draw_set_font(  Test_Menu_Font);
    }
    else
    {
        draw_set_font(Test_Selection_Font)
    }
    
    draw_text(room_width/2, 40, string_hash_to_newline(array[i]));
}

