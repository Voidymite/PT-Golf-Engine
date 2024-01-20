function scr_enemy_stun()
{
	if (object_index == obj_ninja)
	    attack = 1
	stunned--
	sprite_index = stunfallspr
	image_speed = 0.35
	if ((grounded || (grounded && (!(place_meeting(x, y, obj_platform))))) && vsp > 0)
	{
	    hsp = 0
	    if (thrown == 1 && hp <= 0)
	        instance_destroy()
	}
	if place_meeting(x, (y + 1), obj_railh)
	    hsp = -5
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = 5
	if ((scr_solid((x + 1), y) && image_xscale == -1) || (scr_solid((x - 1), y) && image_xscale == 1))
	{
	    with (instance_create(x, y, obj_bulletimpact))
	        image_xscale = (-other.image_xscale)
	    grav = 0.5
	    image_xscale *= -1
	    hsp = ((-image_xscale) * 4)
	}
	if (floor(image_index) == (image_number - 1) && stunned < 0)
	{
	    if (object_index != obj_noisesatellite)
	        vsp -= 4
	    image_index = 0
	    sprite_index = idlespr
	    state = states.idle
	}
}