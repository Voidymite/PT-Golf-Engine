if instance_exists(ID)
{
    x = ID.x
    if (ID.object_index == obj_bigcheese || ID.object_index == obj_noisecrusher)
        y = (ID.y - 60)
    else
        y = (ID.y - 40)
    if (ID.state != states.stun || ID.stunned < 40)
    {
        ID.birdcreated = 0
        instance_destroy()
    }
}
