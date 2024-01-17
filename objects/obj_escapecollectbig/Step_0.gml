scr_collide()
if grounded
    hsp = 0
if (global.panic == 0)
{
	cancollect = 0
}
else
{
	cancollect = 1
}
if (image_alpha < maxalpha2 && cancollect)
{
	image_alpha += accel;
}
if (image_alpha > maxalpha && !cancollect)
{
	image_alpha -= accel;
}