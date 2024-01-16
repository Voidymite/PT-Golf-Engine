with (obj_player)
{
    if (!instance_exists(obj_fadeout))
    {
		hallway = 1
        targetDoor = other.targetDoor
        targetRoom = other.targetRoom
		hallwaydirection = other.hallwaydirection
        other.visited = 1
        image_index = 0
        if (state == states.machslide)
            state = states.normal
        instance_create(x, y, obj_fadeout)
    }
}
