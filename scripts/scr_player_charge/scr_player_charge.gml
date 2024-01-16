function scr_player_charge()
{
	if (windingAnim < 2000)
	    windingAnim++
	if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	move2 = (key_right2 + key_left2)
	move = (key_right + key_left)
	movespeed = 10
	crouchslideAnim = 1
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && grounded)
	{
	    image_index = 0
	    sprite_index = spr_player_secondjump1
	    scr_sound(sound_jump)
	    vsp = -9
	}
	if key_jump
	    input_buffer_jump = 0
	if (scr_solid((x + 1), y) && xscale == 1 && (!(place_meeting((x + 1), y, obj_slope))))
	{
	    scr_sound(sound_suplex1)
	    movespeed = 0
	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	}
	if (scr_solid((x - 1), y) && xscale == -1 && (!(place_meeting((x - 1), y, obj_slope))))
	{
	    scr_sound(sound_suplex1)
	    movespeed = 0
	    state = states.bump
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	}
	sprite_index = spr_charge
	image_speed = 0.65
	if ((!instance_exists(obj_dashcloud)) && grounded)
	    instance_create(x, y, obj_dashcloud)
}
