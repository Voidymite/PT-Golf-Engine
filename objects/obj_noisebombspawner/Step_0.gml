if (floor(image_index) == 2 && canthrowbomb == 1)
{
    scr_sound(sound_enemythrow)
    with (instance_create((x + (image_xscale * 10)), (y - 20), obj_bomb))
    {
        hsp = (other.image_xscale * 4)
        drop = 1
        vsp = -5
    }
    canthrowbomb = 0
}
if (floor(image_index) == (image_number - 1) && canthrowbomb == 0)
    image_speed = 0
else
    image_speed = 0.35
if ((!instance_exists(obj_bomb)) && obj_player.state != states.bombpep)
    canthrowbomb = 1
else
    canthrowbomb = 0
