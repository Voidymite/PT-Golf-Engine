function scr_player_machfreefall()
{
	if (mach2 == 0)
	{
	    hsp = (move * movespeed)
	    movespeed = 4
	}
	else
	{
	    hsp = (xscale * movespeed)
	    movespeed = 10
	}
	machslideAnim = 1
	move2 = (key_right2 + key_left2)
	move = (key_right + key_left)
	crouchslideAnim = 1
	sprite_index = spr_player_machfreefall
	if (scr_solid((x + 1), y) && image_xscale == 1)
	{
	    machhitAnim = 0
	    state = states.bump
	    hsp = -2.5
	    vsp = -2.5
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	    audio_sound_gain(sfx_bump, 0.7, 0)
	    if (!audio_is_playing(sfx_bump))
	        audio_play_sound(sfx_bump, 1, false)
	}
	else if (scr_solid((x - 1), y) && image_xscale == -1)
	{
	    machhitAnim = 0
	    state = states.bump
	    hsp = 2.5
	    vsp = -2.5
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	    audio_sound_gain(sfx_bump, 0.7, 0)
	    if (!audio_is_playing(sfx_bump))
	        audio_play_sound(sfx_bump, 1, false)
	}
	if (grounded && (!(input_buffer_jump < 8)))
	{
	    with (obj_camera)
	    {
	        shake_mag = 20
	        shake_mag_acc = (40 / room_speed)
	    }
	    bounce = 0
	    state = states.freefallland
	    jumpstop = 0
	    image_index = 0
	    with (instance_create(x, (y + 35), obj_bangeffect))
	        image_xscale = obj_player.image_xscale
	    instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	    audio_sound_gain(sfx_land, 0.7, 0)
	    if (!audio_is_playing(sfx_land))
	        audio_play_sound(sfx_land, 1, false)
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	        {
	            image_index = 0
	            state = states.hit
	            vsp = -7
	            hsp = 0
	            stunned = 200
	        }
	    }
	}
	audio_sound_gain(sfx_mach2, 0.7, 0)
	if (!audio_is_playing(sfx_mach2))
	    audio_play_sound(sfx_mach2, 1, false)
	if (grounded && input_buffer_jump < 8 && vsp > 0)
	{
	    sprite_index = spr_player_hanstandjump
	    stompAnim = 0
	    hsp = 0
	    state = states.handstandjump
	    jumpAnim = 1
	    jumpstop = 0
	    image_index = 0
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	}
	if key_jump
	    input_buffer_jump = 0
	image_speed = 0.5
}
