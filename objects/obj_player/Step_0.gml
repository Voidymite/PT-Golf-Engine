scr_getinput()
with (obj_player)
{
    switch state
    {
        case states.normal:
            scr_player_normal()
            break
        case states.titlescreen:
            scr_player_titlescreen()
            break
        case states.slap:
            scr_player_slap()
            break
        case states.charge:
            scr_player_charge()
            break
        case states.climbwall:
            scr_player_climbwall()
            break
        case states.knightpepslopes:
            scr_player_knightpepslopes()
            break
        case states.portal:
            scr_player_portal()
            break
        case states.handstandjump:
            scr_player_handstandjump()
            break
        case states.gottreasure:
            scr_player_gottreasure()
            break
        case states.knightpep:
            scr_player_knightpep()
            break
        case states.knightpepattack:
            scr_player_knightpepattack()
            break
        case states.bombpep:
            scr_player_bombpep()
            break
        case states.grabbing:
            scr_player_grabbing()
            break
        case states.shotgunjump:
            scr_player_shotgunjump()
            break
        case states.stunned:
            scr_player_stunned()
            break
        case states.facestomp:
            scr_player_facestomp()
            break
        case states.timesup:
            scr_player_timesup()
            break
        case states.machroll:
            scr_player_machroll()
            break
        case states.pistol:
            scr_player_pistol()
            break
        case states.shotgun:
            scr_player_shotgun()
            break
        case states.machfreefall:
            scr_player_machfreefall()
            break
        case states.Throw:
            scr_player_throw()
            break
        case states.superslam:
            scr_player_superslam()
            break
        case states.slam:
            scr_player_slam()
            break
        case states.grind:
            scr_player_grind()
            break
        case states.grab:
            scr_player_grab()
            break
        case states.punch:
            scr_player_punch()
            break
        case states.backkick:
            scr_player_backkick()
            break
        case states.uppunch:
            scr_player_uppunch()
            break
        case states.shoulder:
            scr_player_shoulder()
            break
        case states.backbreaker:
            scr_player_backbreaker()
            break
        case states.bossdefeat:
            scr_player_bossdefeat()
            break
        case states.bossintro:
            scr_player_bossintro()
            break
        case states.gameover:
            scr_player_gameover()
            break
        case states.Sjumpland:
            scr_player_Sjumpland()
            break
        case states.freefallprep:
            scr_player_freefallprep()
            break
        case states.runonball:
            scr_player_runonball()
            break
        case states.boulder:
            scr_player_boulder()
            break
        case states.keyget:
            scr_player_keyget()
            break
        case states.tackle:
            scr_player_tackle()
            break
        case states.slipnslide:
            scr_player_slipnslide()
            break
        case states.ladder:
            scr_player_ladder()
            break
        case states.jump:
            scr_player_jump()
            break
        case states.victory:
            scr_player_victory()
            break
        case states.comingoutdoor:
            scr_player_comingoutdoor()
            break
        case states.Sjump:
            scr_player_Sjump()
            break
        case states.Sjumpprep:
            scr_player_Sjumpprep()
            break
        case states.crouch:
            scr_player_crouch()
            break
        case states.crouchjump:
            scr_player_crouchjump()
            break
        case states.crouchslide:
            scr_player_crouchslide()
            break
        case states.mach1:
            scr_player_mach1()
            break
        case states.mach2:
            scr_player_mach2()
            break
        case states.mach3:
            scr_player_mach3()
            break
        case states.machslide:
            scr_player_machslide()
            break
        case states.bump:
            scr_player_bump()
            break
        case states.hurt:
            scr_player_hurt()
            break
        case states.freefall:
            scr_player_freefall()
            break
        case states.freefallland:
            scr_player_freefallland()
            break
        case states.hang:
            scr_player_hang()
            break
        case states.door:
            scr_player_door()
            break
        case states.current:
            scr_player_current()
            break
    }
    if (global.playerhealth <= 0 && state != states.gameover)
    {
        image_index = 0
        sprite_index = spr_deathstart
        state = states.gameover
    }
    if (state == states.gameover && sprite_index == spr_deathend && y > (room_height + 400))
        game_restart()
    if ((!instance_exists(baddiegrabbedID)) && (state == states.grab || (state == states.superslam && sprite_index != spr_piledriverland) || state == states.charge))
        state = states.normal
    if (!((state == states.grab || state == states.superslam)))
        baddiegrabbedID = obj_solid
    if grinding
        state = states.grind
    if (character == "P")
    {
        if (anger == 0)
            angry = 0
        if (anger > 0)
        {
            angry = 1
            anger -= 1
        }
    }
    if (state == states.mach1 && grounded)
    {
        if (!audio_is_playing(sfx_mach1))
            scr_sound(sfx_mach1)
    }
    else
        audio_stop_sound(sfx_mach1)
    if (state == states.mach2)
    {
        if (!audio_is_playing(sfx_mach2))
            scr_sound(sfx_mach2)
    }
    else
        audio_stop_sound(sfx_mach2)
    if (state == states.mach3)
    {
        if (!audio_is_playing(sfx_mach3))
            scr_sound(sfx_mach3)
    }
    else
        audio_stop_sound(sfx_mach3)
    if (state == states.machroll)
    {
        if (!audio_is_playing(sfx_machroll))
            scr_sound(sfx_machroll)
    }
    else
        audio_stop_sound(sfx_machroll)
    if (sprite_index == spr_player_winding && state != states.normal)
        windingAnim = 0
    if (state == states.Sjumpprep)
    {
    }
    else
        audio_stop_sound(sfx_superjumprelease)
    if (suplexmove == 1 && scr_solid(x, (y + 1)))
    {
        suplexmove = 0
        flash = 1
    }
    if (obj_player.state != states.handstandjump)
        grav = 0.5
    if (global.playerhealth == 1 && (!instance_exists(obj_sweat)) && obj_player.state == states.normal)
        instance_create(x, y, obj_sweat)
    if (angry == 1 && (!instance_exists(obj_angrycloud)) && obj_player.state == states.normal)
        instance_create(x, y, obj_angrycloud)
    if (global.combotime > 0)
        global.combotime -= 0.5
    if (global.combotime == 0 && global.combo != 0)
        global.combo = 0
    if (input_buffer_jump < 8)
        input_buffer_jump++
    if (input_buffer_secondjump < 8)
        input_buffer_secondjump++
    if (input_buffer_highjump < 8)
        input_buffer_highjump++
    if (key_particles == 1)
        instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
    if (inv_frames == 0 && hurted == 0)
        image_alpha = 1
    if (state == states.mach2 || state == states.charge || state == states.skateboard || state == states.knightpep || state == states.boxxedpep || state == states.knightpepslopes || state == states.knightpepattack || state == states.bombpep || state == states.facestomp || state == states.machfreefall || state == states.facestomp || state == states.machroll || state == states.mach3 || state == states.freefall || state == states.Sjump)
        attacking = 1
    else
        attacking = 0
    if (state == states.Throw || state == states.punch || state == states.backkick || state == states.shoulder || state == states.uppunch)
        grabbing = 1
    else
        grabbing = 0
    if (state == states.mach3 || state == states.hookshot || state == states.skateboard || state == states.freefall || state == states.Sjump || state == states.machroll || state == states.machfreefall || state == states.charge || (state == states.superslam && sprite_index == spr_piledriver) || state == states.knightpep || state == states.knightpepattack || state == states.knightpepslopes || state == states.boxxedpep)
        instakillmove = 1
    else
        instakillmove = 0
    if (flash == 1 && alarm[0] <= 0)
        alarm[0] = (0.15 * room_speed)
    if (state != states.mach3 && state != states.machslide)
        autodash = 0
    if ((state != states.jump && state != states.crouchjump && state != states.slap) || vsp < 0)
        fallinganimation = 0
    if (state != states.freefallland && state != states.normal && state != states.machslide)
        facehurt = 0
    if (state != states.normal && state != states.machslide)
        machslideAnim = 0
    if (state != states.normal)
    {
        idle = 0
        dashdust = 0
    }
    if (state != states.mach1 && state != states.jump && state != states.hookshot && state != states.handstandjump && state != states.normal && state != states.mach2 && state != states.mach3 && state != states.freefallprep && state != states.knightpep && state != states.shotgun && state != states.knightpepslopes)
        momemtum = 0
    if (state != states.Sjump && state != states.Sjumpprep)
        a = 0
    if (state != states.facestomp)
        facestompAnim = 0
    if (state != states.freefall && state != states.facestomp && state != states.superslam && state != states.freefallland)
        superslam = 0
    if (state != states.mach2)
        machpunchAnim = 0
    if (state != states.jump)
        ladderbuffer = 0
    if (state != states.jump)
        stompAnim = 0
    if ((state == states.mach3 || state == states.mach2 || state == states.hookshot || state == states.machroll || state == states.charge || state == states.handstandjump || (state == states.machslide && mach2 >= 100)) && (!instance_exists(obj_mach3effect)))
    {
        toomuchalarm1 = 6
        instance_create(x, y, obj_mach3effect)
    }
    if (toomuchalarm1 > 0)
    {
        toomuchalarm1 -= 1
        if (toomuchalarm1 <= 0 && (state == states.mach3 || state == states.hookshot || state == states.mach2 || state == states.charge || (state == states.machslide && mach2 >= 100) || state == states.machroll || state == states.handstandjump))
        {
            instance_create(x, y, obj_mach3effect)
            toomuchalarm1 = 6
        }
    }
    if (state != states.bump && state != states.crouch && state != states.boxxedpep && state != states.pistol && state != states.Sjumpprep && state != states.chainsaw && state != states.machroll && state != states.hurt && state != states.crouchslide && state != states.crouchjump)
        mask_index = spr_player_mask
    else
        mask_index = spr_crouchmask
    if (state == states.gottreasure || sprite_index == spr_knightpep_start || sprite_index == spr_knightpep_thunder || state == states.keyget || state == states.door || state == states.victory || state == states.comingoutdoor || state == states.gameover)
        cutscene = 1
    else
        cutscene = 0
    if (state != states.hurt)
        hurtsound = sfx_bigtoppinggot
    if ((place_meeting(x, y, obj_door) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == states.normal)
        instance_create(x, y, obj_uparrow)
    if (state == states.mach2 && (!instance_exists(obj_speedlines)))
        instance_create(x, y, obj_speedlines)
}
if (room == Realtitlescreen || room == Loadingroom || room == rank_room)
{
	state = states.titlescreen;
}
scr_collide_destructibles()
if (state != states.titlescreen && state != states.door && state != states.Sjump && state != states.comingoutdoor && state != states.boulder && state != states.keyget && state != states.victory && state != states.portal && state != states.timesup && state != states.gottreasure && state != states.gameover)
    scr_collide_player()
if (state == states.boulder)
    scr_collide_player()
