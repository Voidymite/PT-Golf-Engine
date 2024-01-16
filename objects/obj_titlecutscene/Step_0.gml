ini_open("saveData.ini")
global.t1_rank = ini_read_string("Ranks", "t1", "none")
global.t2_rank = ini_read_string("Ranks", "t2", "none")
ini_close()
scr_getinput()
if (drop == 1)
    scr_collide()
if (x > 960 && (!instance_exists(obj_fadeout)))
{
    with (instance_create(x, y, obj_fadeout))
        gotonoplayer = 10
}
if (key_right2 && sprite_index == spr_pepcooter)
{
    if (global.paletteselect < 9)
    {
        global.paletteselect += 1
        scr_sound(sound_points)
    }
}
if ((-key_left2) && sprite_index == spr_pepcooter)
{
    if (global.paletteselect > 0)
    {
        global.paletteselect -= 1
        scr_sound(sound_points)
    }
}
if (sprite_index == spr_pepcooter && (!instance_exists(obj_superdashcloud)))
    instance_create((x - 100), y, obj_superdashcloud)
