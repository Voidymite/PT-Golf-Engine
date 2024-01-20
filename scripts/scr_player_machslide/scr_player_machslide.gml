function scr_player_machslide()
{
	if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	move = (key_right + key_left)
	if (movespeed >= 0)
	    movespeed -= 0.4
	if (sprite_index == spr_machslidestart && floor(image_index) == (image_number - 1))
	    sprite_index = spr_machslide
	image_speed = 0.35
	landAnim = 0
	if (floor(movespeed) == 0 && (sprite_index == spr_machslide || sprite_index == spr_player_crouchslide))
	{
	    image_index = 0
	    if (sprite_index == spr_machslide)
	        machslideAnim = 1
	    movespeed = 0
	    state = states.normal
	    movespeed = 4
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_machslideboost && mach2 != 0)
	{
	    movespeed = 10
	    scr_sound(sfx_mach2)
	    momemtum = 1
	    state = states.mach2
	    image_index = 0
	    xscale *= -1
	    instance_create(x, y, obj_jumpdust)
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_machslideboost3 && mach2 != 0)
	{
	    movespeed = 12
	    sprite_index = spr_player_mach4
	    scr_sound(sfx_mach3)
	    momemtum = 1
	    state = states.mach3
	    image_index = 0
	    xscale *= -1
	    instance_create(x, y, obj_jumpdust)
	}
	if (scr_solid((x + 1), y) && xscale == 1 && (!(place_meeting((x + 1), y, obj_slope))))
	{
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
	    movespeed = 0
	    state = states.bump
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	}
	if (mach2 == 0)
	{
	    if ((!instance_exists(obj_slidecloud)) && grounded)
	        instance_create(x, y, obj_slidecloud)
	}
	else if (mach2 >= 35)
	{
	    if ((!instance_exists(obj_dashcloud)) && grounded)
	        instance_create(x, y, obj_dashcloud)
	}
	else if (mach2 >= 100)
	{
	    if ((!instance_exists(obj_dashcloud2)) && grounded)
	        instance_create(x, y, obj_dashcloud2)
	}
}
