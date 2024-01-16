function scr_player_climbwall()
{
	if (windingAnim < 200)
	    windingAnim++
	suplexmove = 0
	vsp = (-wallspeed)
	if (wallspeed > 0)
	    wallspeed -= 0.5
	crouchslideAnim = 1
	sprite_index = spr_climbwall
	if (!key_attack)
	{
	    state = states.jump
	    sprite_index = spr_fall
	}
	if (!(scr_solid((x + xscale), y)))
	{
	    instance_create(x, y, obj_jumpdust)
	    vsp = 0
	    if (mach2 < 100)
	        state = states.mach2
	    else
	    {
	        state = states.mach3
	        sprite_index = spr_player_mach4
	    }
	}
	if ((grounded && wallspeed <= 0) || wallspeed <= 0)
	{
	    state = states.jump
	    sprite_index = spr_fall
	}
	image_speed = 0.6
	if (!instance_exists(obj_cloudeffect))
	    instance_create(x, (y + 43), obj_cloudeffect)
	if (key_jump && key_attack)
	{
	    if (mach2 >= 100)
	    {
	        mach2 = 100
	        instance_create(x, y, obj_jumpdust)
	        vsp = -9
	        sprite_index = spr_player_mach4
	        state = states.mach3
	        xscale *= -1
	    }
	    else
	    {
	        mach2 = 35
	        instance_create(x, y, obj_jumpdust)
	        vsp = -9
	        state = states.mach2
	        xscale *= -1
	    }
	}
}
