if(!eaten && canShrapnel)
{
    for(i=0;i<random_range(4, 7);i++)
    {   
        instance_create(x, y, obj_shrapnel);
    }
}


