function scr_player_freefallprep()
{
	hsp = 0
	if (((scr_solid((x + 1), y) && move == 1) || (scr_solid((x - 1), y) && move == -1)) && (!(place_meeting((x + sign(hsp)), y, obj_slope))))
	    movespeed = 0
	start_running = 1
	alarm[4] = 14
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	machslideAnim = 1
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 1
	sprite_index = spr_player_bodyslamstart
	image_speed = 0.5
	if (floor(image_index) == (image_number - 1))
	{
	    vsp += 14
	    state = states.freefall
	}
}
