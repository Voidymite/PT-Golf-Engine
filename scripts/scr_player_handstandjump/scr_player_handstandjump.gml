function scr_player_handstandjump()
{
	landAnim = 0
	mach2 = 35
	hsp = (xscale * movespeed)
	if (character == "P")
	    grav = 0
	else
	    grav = 0.5
	momemtum = 1
	dir = xscale
	if (image_index < 2)
	    movespeed = 12
	if (image_index > 7)
	    movespeed -= 1
	if (floor(image_index) == (image_number - 1))
	{
	    state = states.normal
	    grav = 0.5
	}
	if (key_down && grounded)
	{
	    grav = 0.5
	    sprite_index = spr_crouchslip
	    if (character == "P")
	        machhitAnim = 0
	    state = states.crouchslide
	}
	if (key_jump && grounded && character == "P")
	{
	    movespeed = 10
	    sprite_index = spr_mach2jump
	    instance_create(x, y, obj_jumpdust)
	    state = states.mach2
	    vsp = -9
	}
	else if (key_jump && character == "N")
	{
	    movespeed = 10
	    sprite_index = spr_mach2jump
	    instance_create(x, y, obj_jumpdust)
	    state = states.mach2
	    vsp = -4
	}
	if (scr_solid((x + 1), y) && xscale == 1 && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x + xscale), y, obj_destructibles))))
	{
	    grav = 0.5
	    movespeed = 0
	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    machslideAnim = 1
	    machhitAnim = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	}
	if (scr_solid((x - 1), y) && xscale == -1 && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x + xscale), y, obj_destructibles))))
	{
	    grav = 0.5
	    movespeed = 0
	    state = states.bump
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    machslideAnim = 1
	    machhitAnim = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	}
	image_speed = 0.4
	if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 5)
	    instance_create(x, y, obj_slidecloud)
}
