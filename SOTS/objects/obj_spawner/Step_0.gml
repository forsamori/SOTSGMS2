if (!instance_exists(obj_trash))
{
    for (i = 0; i < 5; i++)
    {
        spawnx = 0;
        spawny = 0;
        
        spawnx = obj_seagull.x + (random(50) - 25);
        spawny = obj_seagull.y + (random(50) - 25);
        
        inst = instance_create(spawnx ,spawny, obj_trash);
    }
}

///spawn people

if (pedCount % 30 == 0)
{
    rando++;
    if (rando > 11)
    {
        rando = 1;
    }
     inst = instance_create(-20,-20,obj_pedestrian);
}
pedCount++;
if (pedCount > 180)
{
    pedCount = 0;
}
show_debug_message(pedCount); 

if (!instance_exists(obj_car))
{
    for (i = 0; i < 10; i++)
    {
        spawnx = 0;
        spawny = 0;
        
        spawnx = obj_seagull.x + (random(1000) - 500);
        
        clamp (spawnx,0,room_width);
        
        spawny = obj_seagull.y + (random(1000) - 500);
        
        clamp (spawny,0,room_height);
        
        inst = instance_create(spawnx ,spawny, obj_car);
    }
}

