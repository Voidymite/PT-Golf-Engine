function scr_player_grabbing()
{
	if (!(place_meeting(x, y, obj_baddie)))
	    state = states.normal
	move = (key_left + key_right)
	hsp = (move * movespeed)
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if (((scr_solid((x + 1), y) && xscale == 1) || (scr_solid((x - 1), y) && xscale == -1)) && (!(scr_solid((x + sign(hsp)), y))))
	    movespeed = 0
	if (xscale == 1 && move == -1)
	    movespeed = 0
	if (xscale == -1 && move == 1)
	    movespeed = 0
	if (key_attack && grounded)
	{
	    movespeed = 0
	    image_index = 0
	    state = states.grab
	}
	if (key_attack && (!grounded))
	{
	    movespeed = 0
	    image_index = 0
	    state = states.Throw;
	}
	if (key_jump && (!grounded))
	{
	    movespeed = 0
	    vsp = -11
	    state = states.slam
	    image_index = 0
	    image_speed = 0.35
	}
	if (move == 0 && grounded)
	{
	    movespeed = 0
	    sprite_index = spr_player_grabbing
	}
	if (move != 0)
	{
	    if grounded
	        sprite_index = spr_player_grabbingmove
	    xscale = move
	}
	if (key_jump && grounded && (!key_down) && (!key_attack))
	{
	    vsp = -9
	    image_index = 0
	    sprite_index = spr_player_grabbingjump
	}
	if (sprite_index == spr_player_grabbingjump && floor(image_index) == 2)
	    sprite_index = spr_player_grabbingfall
	if ((!grounded) && vsp > 0)
	    sprite_index = spr_player_grabbingfall
	if (move != 0)
	{
	    if (movespeed < 6)
	        movespeed += 0.5
	    else if (movespeed == 6)
	        movespeed = 6
	}
	else
	    movespeed = 0
	if (move != 0 && grounded)
	{
	    if (movespeed < 3 && move != 0)
	        image_speed = 0.35
	    else if (movespeed > 3 && movespeed < 6)
	        image_speed = 0.45
	    else
	        image_speed = 0.6
	}
	else
	    image_speed = 0.35
	if ((!instance_exists(obj_cloudeffect)) && (!(place_meeting(x, y, obj_water2))) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
	    instance_create(x, (y + 43), obj_cloudeffect)
	if (grounded && vsp > 1)
	    instance_create(x, y, obj_landcloud)
}
