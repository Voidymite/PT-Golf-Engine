function scr_player_Sjump()
{
	hsp = 0
	mach2 = 0
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 0
	machhitAnim = 0
	if (sprite_index == spr_player_superjump)
	    vsp--
	if (sprite_index == spr_player_supersidejump)
	{
	    if (a < 25)
	        a++
	    hsp = (xscale * a)
	    vsp = 0
	}
	if (scr_solid(x, (y - 1)) && (!(place_meeting(x, (y - 1), obj_destructibles))) && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x - sign(hsp)), y, obj_slope))))
	{
	    scr_sound(sound_maximumspeedland)
	    a = 0
	    if (sprite_index == spr_player_supersidejump)
	        sprite_index = spr_player_supersidejumpland
	    if (sprite_index == spr_player_superjump)
	        sprite_index = spr_player_superjumpland
	    with (obj_camera)
	    {
	        shake_mag = 10
	        shake_mag_acc = (30 / room_speed)
	    }
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	        {
	            image_index = 0
	            state = states.idle
	            vsp = -7
	            hsp = 0
	        }
	    }
	    image_index = 0
	    state = states.Sjumpland
	    machhitAnim = 0
	}
	image_speed = 0.5
	scr_collide_player()
}
