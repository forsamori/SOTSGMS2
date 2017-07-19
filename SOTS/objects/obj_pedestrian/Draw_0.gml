//pedestrian animations
event_inherited();

image_speed = 10/room_speed;
if (image_index >= ANIM_WALK_END)
{
    image_index = ANIM_WALK_START;
}
draw_self();

