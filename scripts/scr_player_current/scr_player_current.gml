function scr_player_current()
{
	landAnim = 1
	movespeed = 4
	mach2 = 0
	if place_meeting(x, y, obj_current)
	    hsp = -15
	if place_meeting(x, y, obj_current2)
	    hsp = 15
	if (!(place_meeting(x, y, obj_current)))
	    state = states.normal
	sprite_index = spr_player_slipnslide
	image_speed = 0.35
}
