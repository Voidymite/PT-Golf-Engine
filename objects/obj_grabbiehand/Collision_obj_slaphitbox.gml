if (thumbingup == 0 && x <= (xstarte + 5) && x >= (xstarte - 5) && y <= (ystarte + 5) && y >= (ystarte - 5) && grabbing == 0)
{
    scr_sound(sound_slaphit)
    delay = 5
    image_xscale = (-obj_player.xscale)
    thumbingup = 1
    instance_create(x, y, obj_bangeffect)
    sprite_index = spr_grabbiehand_hifive
    image_index = 0
}
