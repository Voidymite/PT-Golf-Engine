if (cancollect)
{
	global.collect += 100
    instance_create(x, y, obj_100)
    if (!audio_is_playing(sound_pizzagot))
        scr_sound(sound_pizzagot)
    instance_destroy()
}
else
{
	if (image_alpha >= maxalpha || image_alpha > maxalpha || image_alpha == maxalpha)
	{
		if (image_alpha > minalpha)
		{
			image_alpha -= accel;
		}
	}
}