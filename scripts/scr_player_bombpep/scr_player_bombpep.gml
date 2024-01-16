function scr_player_bombpep()
{
	if (sprite_index == spr_bombpep_intro || sprite_index == spr_bombpep_end)
	    mask_index = spr_crouchmask
	else
	    mask_index = spr_player_mask
	if (key_slap2 && sprite_index != spr_bombpep_end)
	{
	    scr_sound(sound_slapswipe1)
	    image_index = 0
	    sprite_index = spr_player_throw
	    state = states.Throw
	    with (instance_create(x, y, obj_bomb))
	    {
	        drop = 1
	        hsp = (other.xscale * 8)
	        vsp = -5
	        countdown = 30
	    }
	}
	if key_jump
	    input_buffer_jump = 0
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	mach2 = 0
	landAnim = 0
	scr_getinput()
	alarm[5] = 2
	if (sprite_index == spr_bombpep_intro && floor(image_index) == (image_number - 1))
	    sprite_index = spr_bombpep_run
	if (sprite_index == spr_bombpep_run || sprite_index == spr_bombpep_runabouttoexplode)
	{
	    if (movespeed <= 8)
	        movespeed += 0.2
	    hsp = floor((xscale * movespeed))
	}
	else
	{
	    hsp = 0
	    movespeed = 0
	}
	if (bombpeptimer < 20 && bombpeptimer != 0)
	    sprite_index = spr_bombpep_runabouttoexplode
	if (sprite_index == spr_bombpep_end && floor(image_index) == (image_number - 1))
	{
	    alarm[5] = 2
	    alarm[7] = 60
	    hurted = 1
	    state = states.normal
	    sprite_index = spr_player_idle
	    image_index = 0
	}
	if (bombpeptimer == 0 && sprite_index == spr_bombpep_runabouttoexplode)
	{
	    scr_sound(sound_explosion)
	    hurted = 1
	    instance_create(x, y, obj_bombexplosion)
	    sprite_index = spr_bombpep_end
	}
	if (bombpeptimer > 0)
	    bombpeptimer -= 0.5
	if (scr_solid((x + 1), y) && xscale == 1 && hsp != 0 && (!(place_meeting((x + sign(hsp)), y, obj_slope))))
	{
	    scr_sound(sound_suplex1)
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	    xscale *= -1
	}
	if (scr_solid((x - 1), y) && xscale == -1 && hsp != 0 && (!(place_meeting((x + sign(hsp)), y, obj_slope))))
	{
	    scr_sound(sound_suplex1)
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	    xscale *= -1
	}
	if (input_buffer_jump < 8 && grounded && hsp != 0)
	{
	    scr_sound(sound_jump)
	    vsp = -9
	}
	if (movespeed < 4)
	    image_speed = 0.35
	else if (movespeed > 4 && movespeed < 8)
	    image_speed = 0.45
	else
	    image_speed = 0.6
	if (hsp != 0 && (floor(image_index) == 0 || floor(image_index) == 2) && steppy == 0 && grounded)
	{
	    scr_sound(sound_step)
	    steppy = 1
	}
	if (floor(image_index) != 0 && floor(image_index) != 2)
	    steppy = 0
	if ((!instance_exists(obj_dashcloud)) && grounded && hsp != 0)
	    instance_create(x, y, obj_dashcloud)
}
