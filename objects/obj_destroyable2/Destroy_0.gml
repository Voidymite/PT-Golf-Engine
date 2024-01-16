if (ds_list_find_index(global.saveroom, id) == -1)
{
    if (global.breaksound == sound_slaphit)
        scr_sound(choose(sound_destroyblock1, sound_destroyblock2))
    global.breaksound = sound_pizzagot
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create(x, y, obj_collect)
    tile_layer_delete_at(1, x, y)
    ds_list_add(global.saveroom, id)
}
