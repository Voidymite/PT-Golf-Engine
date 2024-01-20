/*if (global.playerhealth < 8 && obj_player.state != states.gameover)
{
    scr_sound(sound_points)
    global.playerhealth += 1
    with (instance_create(x, y, obj_knightdebris))
    {
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        sprite_index = spr_healthpickupeaten
    }
    ds_list_add(global.saveroom, id)
    instance_destroy()
}
