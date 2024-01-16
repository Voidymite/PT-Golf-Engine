if (!instance_exists(ID))
    instance_destroy()
if instance_exists(ID)
{
    x = ID.x
    y = ID.y
    image_xscale = ID.image_xscale
    image_index = ID.image_index
    with (ID)
    {
        if (object_index == obj_forknight || object_index == obj_noisey)
        {
            if (state != states.idle && state != states.walk)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (obj_player.state == states.mach3)
        {
            hitboxcreate = 0
            instance_destroy(other.id)
        }
        if (obj_player.state == states.mach2 && (object_index == obj_peasanto || object_index == obj_ninja || object_index == obj_pizzice))
        {
            hitboxcreate = 0
            instance_destroy(other.id)
        }
        if (object_index == obj_noisecrusher)
        {
            if (state != 87)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_peasanto || object_index == obj_ninja || object_index == obj_pizzice)
        {
            if (state != states.charge)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
    }
}
