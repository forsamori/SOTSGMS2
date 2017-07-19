//Set shader if evolving

if (self.evolving)
{
    if((alarm[1] % 30) < 15)
    {
        shader_set(Evolution_Shader);
        draw_self()
        shader_reset();
    }
    else
    {
        draw_self();
    
    }
    
}
else
{
    image_speed = 10/room_speed;
    if (level == 1)
    {
        if (image_index >= ANIM_LVL1_MOVE_END)
        {
            image_index = ANIM_LVL1_MOVE_START;
        }
    }
    else if (level == 2)
    {
        if (image_index >= ANIM_LVL2_MOVE_END)
        {
            image_index = ANIM_LVL2_MOVE_START;
        }
    }
    else if (level == 3)
    {
        if (image_index >= ANIM_LVL3_MOVE_END)
        {
            image_index = ANIM_LVL3_MOVE_START;
        }
    }
    draw_self();
}

