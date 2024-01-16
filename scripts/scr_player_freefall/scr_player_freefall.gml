function scr_player_freefall()
{
	hsp = 0
	landAnim = 1
	sprite_index = spr_player_bodyslamfall
	if (grounded && (!(input_buffer_jump < 8)))
	{
	    scr_sound(sound_maximumspeedland)
	    image_index = 0
	    state = states.freefallland
	    jumpAnim = 1
	    jumpstop = 0
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	        {
	            vsp = -7
	            hsp = 0
	        }
	    }
	    with (obj_camera)
	    {
	        shake_mag = 10
	        shake_mag_acc = (30 / room_speed)
	    }
	    combo = 0
	    bounce = 0
	    instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	}
	image_speed = 0.35
}
