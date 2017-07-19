life_time-=0.001*room_speed;
if (life_time <= 0)
{
    instance_destroy();
}

