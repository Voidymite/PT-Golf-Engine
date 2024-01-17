function scr_player_normal()
{
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 2
	    facehurt = 0
	}
	mach2 = 0
	move = (key_left + key_right)
	if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
	    hsp = (move * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((move * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((move * movespeed) + 5)
	if (machslideAnim == 0 && landAnim == 0 && shotgunAnim == 0)
	{
	    if (move == 0)
	    {
	        if (idle < 400)
	            idle++
	        if (idle >= 300 && floor(image_index) == (image_number - 1))
	        {
	            shotgunAnim = 0
	            facehurt = 0
	            idle = 0
	            image_index = 0
	        }
	        if (idle >= 300 && sprite_index != spr_idle1 && sprite_index != spr_idle2 && sprite_index != spr_idle3)
	        {
				if (irandom(100) <= 50)
                    scr_sound(choose(sfx_enemystomp, sound_enemythrow))
	            randomise()
	            idleanim = random_range(0, 100)
	            if (idleanim <= 33)
	                sprite_index = choose(spr_idle1,spr_idle2)
	            else if (idleanim > 33 && idleanim < 66)
	                sprite_index = choose(spr_idle3,spr_idle4)
	            else if (idleanim > 66)
	                sprite_index = choose(spr_idle5,spr_idle6)
	            image_index = 0
	        }
	        if (idle < 300)
	        {
	            if (facehurt == 0)
	            {
	                if (windingAnim < 1800 || angry == 1 || global.playerhealth == 1)
	                {
	                    start_running = 1
	                    movespeed = 0
	                    if (global.playerhealth == 1)
	                        sprite_index = spr_hurtidle
	                    else if (angry == 1)
	                        sprite_index = spr_player_3hpidle
	                    else
	                        sprite_index = spr_idle
	                }
	                else if (character == "P")
	                {
	                    idle = 0
	                    windingAnim--
	                    sprite_index = spr_player_winding
	                }
	            }
	            else if (facehurt == 1 && character == "P")
	            {
	                windingAnim = 0
	                if (sprite_index != spr_player_facehurtup && sprite_index != spr_player_facehurt)
	                    sprite_index = spr_player_facehurtup
	                if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_facehurtup)
	                    sprite_index = spr_player_facehurt
	            }
	        }
	    }
	    if (move != 0)
	    {
	        machslideAnim = 0
	        idle = 0
	        facehurt = 0
	        if (global.playerhealth == 1)
	            sprite_index = spr_hurtwalk
	        else if (angry == 1)
	            sprite_index = spr_player_3hpwalk
	        else
	            sprite_index = spr_move
	    }
	    if (move != 0)
	        xscale = move
	}
	if (landAnim == 1)
	{
	    if (shotgunAnim == 0)
	    {
	        if (move == 0)
	        {
	            movespeed = 0
	            sprite_index = spr_land
	            if (floor(image_index) == (image_number - 1))
	                landAnim = 0
	        }
	        if (move != 0)
	        {
	            sprite_index = spr_land2
	            if (floor(image_index) == (image_number - 1))
	            {
	                landAnim = 0
	                sprite_index = spr_move
	                image_index = 0
	            }
	        }
	    }
	    if (shotgunAnim == 1)
	    {
	        sprite_index = spr_shotgun_land
	        if (floor(image_index) == (image_number - 1))
	        {
	            landAnim = 0
	            sprite_index = spr_move
	            image_index = 0
	        }
	    }
	}
	if (machslideAnim == 1)
	{
	    sprite_index = spr_machslideend
	    if (floor(image_index) == (image_number - 1) && sprite_index == spr_machslideend)
	        machslideAnim = 0
	}
	if (sprite_index == spr_player_shotgun && floor(image_index) == (image_number - 1))
	    sprite_index = spr_shotgun_idle
	if (landAnim == 0)
	{
	    if (shotgunAnim == 1 && move == 0 && sprite_index != spr_player_shotgun)
	        sprite_index = spr_shotgun_idle
	    else if (shotgunAnim == 1 && sprite_index != spr_player_shotgun)
	        sprite_index = spr_shotgun_walk
	}
	if (scr_solid((x + sign(hsp)), y) && xscale == 1 && move == 1 && (!(place_meeting((x + 1), y, obj_slope))))
	    movespeed = 0
	if (scr_solid((x + sign(hsp)), y) && xscale == -1 && move == -1 && (!(place_meeting((x - 1), y, obj_slope))))
	    movespeed = 0
	jumpstop = 0
	if ((!grounded) && (!key_jump))
	{
	    if (shotgunAnim == 0)
	        sprite_index = spr_fall
	    else
	        sprite_index = spr_shotgun_fall
	    jumpAnim = 0
	    state = states.jump
	    image_index = 0
	}
	if (key_attack && grounded && (!((scr_solid((x + 1), y) && xscale == 1 && (!(place_meeting((x + xscale), y, obj_slope)))))) && (!((scr_solid((x - 1), y) && xscale == -1 && (!(place_meeting((x + xscale), y, obj_slope)))))))
	{
	    mach2 = 0
	    movespeed = 0
	    sprite_index = spr_mach1
	    jumpAnim = 1
	    state = states.mach1
	    image_index = 0
	}
	if (key_jump && grounded && (!key_down))
	{
	    scr_sound(sound_jump)
	    sprite_index = spr_jump
	    if (shotgunAnim == 1)
	        sprite_index = spr_shotgun_jump
	    instance_create(x, y, obj_highjumpcloud2)
	    vsp = -11
	    state = states.jump
	    image_index = 0
	    jumpAnim = 1
	}
	if (grounded && input_buffer_jump < 8 && (!key_down) && (!key_attack) && vsp > 0)
	{
	    scr_sound(sound_jump)
	    sprite_index = spr_jump
	    if (shotgunAnim == 1)
	        sprite_index = spr_shotgun_jump
	    instance_create(x, y, obj_highjumpcloud2)
	    stompAnim = 0
	    vsp = -11
	    state = states.jump
	    jumpAnim = 1
	    jumpstop = 0
	    image_index = 0
	    freefallstart = 0
	}
	if ((key_down && grounded) || scr_solid(x, (y - 3)))
	{
	    state = states.crouch
	    landAnim = 0
	    crouchAnim = 1
	    image_index = 0
	    idle = 0
	}
	if (move != 0)
	{
	    if (movespeed < 7)
	        movespeed += 0.5
	    else if (floor(movespeed) == 7)
	        movespeed = 7
	}
	else
	    movespeed = 0
	if (movespeed > 7)
	    movespeed -= 0.1
	if (key_slap2 && shotgunAnim == 1 && (!instance_exists(obj_cutscene_upstairs)))
	{
	    global.ammo -= 1
	    instance_create(x, y, obj_shotgunbullet)
	    sprite_index = spr_player_shotgun
	    state = states.shotgun
	    image_index = 0
	}
	momemtum = 0
	if (move != 0)
	{
	    xscale = move
	    if (movespeed < 3 && move != 0)
	        image_speed = 0.35
	    else if (movespeed > 3 && movespeed < 6)
	        image_speed = 0.45
	    else
	        image_speed = 0.6
	}
	else
	    image_speed = 0.35
	if (key_slap2 && (!key_down) && suplexmove == 0 && shotgunAnim == 0)
	{
	    scr_sound(sound_slapswipe1)
	    instance_create(x, y, obj_slaphitbox)
	    suplexmove = 1
	    vsp = 0
	    instance_create(x, y, obj_jumpdust)
	    image_index = 0
	    sprite_index = spr_suplexdash
	    state = states.handstandjump
	    if (character == "N")
	        vsp = -5
	}
	else if (key_slap2)
	{
	    taunttimer = 20
	    tauntstoredmovespeed = movespeed
	    tauntstoredsprite = sprite_index
	    tauntstoredstate = state
	    state = states.backbreaker
	    image_index = random_range(0, 7)
	    sprite_index = spr_player_taunt
	    instance_create(x, y, obj_taunteffect)
	}
	if ((!instance_exists(obj_cloudeffect)) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
	    instance_create(x, (y + 43), obj_cloudeffect)
	if ((!instance_exists(obj_cloudeffect)) && grounded && move != 0)
	    instance_create(x, (y + 43), obj_cloudeffect)
	if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && steppy == 0)
	{
	    scr_sound(choose(sfx_step,sfx_step2))
	    steppy = 1
	}
	if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
	    steppy = 0
}
