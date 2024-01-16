with (obj_player)
{
    if (key_up && (state == states.normal || state == states.mach1 || state == states.mach2 || state == states.mach3) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != states.victory && state != states.comingoutdoor)
    {
        mach2 = 0
        obj_camera.chargecamera = 0
        ds_list_add(global.saveroom, id)
        image_index = 0
        state = states.victory
    }
}
if (floor(obj_player.image_index) == (obj_player.image_number - 1) && obj_player.state == states.victory)
{
    with (obj_player)
    {
        player_y = other.target_y
        player_x = other.target_x
        targetRoom = other.targetRoom
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout)
    }
}
