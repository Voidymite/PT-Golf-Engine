if (obj_player.state != states.hurt && global.pineapplefollow == 0)
{
    ds_list_add(global.saveroom, id)
    if (global.toppintotal < 5)
        obj_tv.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
    if (global.toppintotal == 5)
        obj_tv.message = "YOU HAVE ALL TOPPINS!"
    obj_tv.showtext = 1
    obj_tv.alarm[0] = 150
    global.toppintotal += 1
    scr_sound(sound_toppingot)
    global.pineapplefollow = 1
    panic = 0
}
