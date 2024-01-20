function scr_collide_destructibles()
{
	if (state == states.mach2 || state == states.mach3 || state == states.machroll || state == states.knightpep)
	{
	    if place_meeting((x + hsp), y, obj_destructibles)
	    {
	        with (instance_place((x + hsp), y, obj_destructibles))
	            instance_destroy()
	    }
	}
	if (state == states.knightpep || state == states.superslam)
	{
	    if place_meeting(x, (y + 1), obj_destructibles)
	    {
	        with (instance_place(x, (y + 1), obj_destructibles))
	            instance_destroy()
	    }
	}
	if place_meeting(x, (y + 1), obj_destructibleplatform)
	{
	    with (instance_place(x, (y + 1), obj_destructibleplatform))
	    {
	        falling = 1
	        if (falling == 1)
	            image_speed = 0.35
	    }
	}
	if (state == states.jump || state == states.Sjump || state == states.mach2 || state == states.mach3)
	{
	    if place_meeting(x, (y - 1), obj_destructibles)
	    {
	        with (instance_place(x, (y - 1), obj_destructibles))
	            instance_destroy()
	    }
	}
	if (state == states.handstandjump)
	{
	    with (obj_destructibles)
	    {
	        if place_meeting((x - obj_player.hsp), y, obj_player)
	        {
	            with (obj_player)
	            {
	                hsp = ((-xscale) * 4)
	                vsp = -4
	                mach2 = 0
	                image_index = 0
	                state = states.tackle
	            }
	            instance_destroy()
	        }
	    }
	}
	with (obj_baddie)
	{
	    if (place_meeting((x + 1), y, obj_destructibles) && thrown == 1)
	    {
	        instance_destroy(instance_place((x + 1), y, obj_destructibles))
	        grav = 0.5
	    }
	    if (place_meeting((x - 1), y, obj_destructibles) && thrown == 1)
	    {
	        instance_destroy(instance_place((x - 1), y, obj_destructibles))
	        grav = 0.5
	    }
	}
}
