function scr_player_grab()
{
	grav = 0.5
	anger = 100
	if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	if (movespeed > 0)
	    movespeed -= 1
	move = (key_left2 + key_right2)
	image_speed = 0.35
	if (key_slap2 && suplexhavetomash <= 0)
	{
	    hsp = 0
	    movespeed = 0
	    state = states.Throw
	    image_index = 0
	    image_speed = 0.35
	}
	if key_attack2
	{
	    state = states.charge
	    instance_create(x, y, obj_jumpdust)
	}
	if (move == xscale)
	{
	    hsp = 0
	    movespeed = 0
	    state = states.punch
	    image_index = 1
	    image_speed = 0.35
	}
	if (move == (-xscale))
	{
	    hsp = 0
	    movespeed = 0
	    state = states.backkick
	    image_index = 1
	    image_speed = 0.35
	}
	if key_up
	{
	    hsp = 0
	    movespeed = 0
	    state = states.uppunch
	    image_index = 1
	    image_speed = 0.35
	}
	if key_down
	{
	    hsp = 0
	    movespeed = 0
	    state = states.shoulder
	    image_index = 1
	    image_speed = 0.35
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
	}
	landAnim = 0
	if key_jump
	{
	    scr_sound(sound_jump)
	    hsp = 0
	    movespeed = 0
	    sprite_index = spr_piledriver
	    vsp = -14
	    state = states.superslam
	    image_index = 0
	    image_speed = 0.35
	}
	if (floor(image_index) == (image_number - 1) && (sprite_index == spr_suplexmash1 || spr_suplexmash2 || spr_suplexmash3 || spr_suplexmash4))
	    sprite_index = spr_grab
}
