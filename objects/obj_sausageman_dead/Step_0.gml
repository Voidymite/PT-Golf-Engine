angle = spinspeed;
if (angle != 0)
{
	image_angle += angle;
}
if (vsp < 20)
    vsp += grav;
x += hsp;
y += floor(vsp);