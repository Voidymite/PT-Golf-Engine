if (ds_list_find_index(global.baddieroom, id) == -1)
{
    ds_list_add(global.baddieroom, id)
    obj_tv.image_index = random_range(0, 4)
    scr_sleep(50)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }
    if (reset == 0)
    {
        instance_create(x, (y + 30), obj_bangeffect)
        if (stomped == 0 && shot == 0)
        {
            with (obj_camera)
            {
                shake_mag = 5
                shake_mag_acc = (20 / room_speed)
            }
            with (instance_create(x, y, obj_sausageman_dead))
                sprite_index = spr_coolpinea_dead
        }
        if (stomped == 1 && shot == 0)
        {
            with (instance_create(x, y, obj_sausageman_dead))
                sprite_index = spr_coolpinea_dead
            with (obj_camera)
            {
                shake_mag = 5
                shake_mag_acc = (20 / room_speed)
            }
            hsp = 0
            vsp = 0
        }
        if (shot == 1 && stomped == 0)
        {
            with (instance_create(x, y, obj_sausageman_dead))
                sprite_index = spr_coolpinea_dead
            with (obj_camera)
            {
                shake_mag = 20
                shake_mag_acc = (40 / room_speed)
            }
            hsp *= 3
            vsp *= 3
        }
        global.combo += 1
        if (global.combo == 1)
        {
            scr_sound(sound_combo1)
            instance_create(x, y, obj_10)
            global.collect += 10
        }
        if (global.combo == 2)
        {
            scr_sound(sound_combo2)
            instance_create(x, y, obj_20)
            global.collect += 20
        }
        if (global.combo == 3)
        {
            scr_sound(sound_combo3)
            instance_create(x, y, obj_40)
            global.collect += 40
        }
        if (global.combo >= 4)
        {
            scr_sound(sound_combo4)
            instance_create(x, y, obj_80)
            global.collect += 80
        }
        global.combotime = 60
    }
}
