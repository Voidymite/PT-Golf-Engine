if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create((x + random_range(-10, 10)), (y + random_range(-10, obj_destructibles)), obj_glassdebris)
    instance_create((x + random_range(-10, 10)), (y + random_range(-10, obj_destructibles)), obj_glassdebris)
    instance_create((x + random_range(-10, 10)), (y + random_range(-10, obj_destructibles)), obj_glassdebris)
    instance_create((x + random_range(-10, 10)), (y + random_range(-10, obj_destructibles)), obj_glassdebris)
    instance_create((x + random_range(-10, 10)), (y + random_range(-10, obj_destructibles)), obj_glassdebris)
    instance_create((x + random_range(-10, 10)), (y + random_range(-10, obj_destructibles)), obj_glassdebris)
    tile_layer_delete_at(1, x, y)
    scr_sound(choose(sound_destroyblock1, sound_destroyblock2))
    ds_list_add(global.saveroom, id)
}
