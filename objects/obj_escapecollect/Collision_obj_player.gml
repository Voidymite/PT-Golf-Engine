if (cancollect)
{
	if (global.collectsound == sound_suplex1)
    scr_sound(sfx_collect)
    global.collectsound = sfx_collect
    global.collect += 10
    instance_create(x, y, obj_10)
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