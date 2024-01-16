function scr_player_backbreaker()
{
	mach2 = 0
	hsp = 0
	movespeed = 0
	landAnim = 0
	if (sprite_index == spr_player_taunt)
	{
	    taunttimer--
	    vsp = 0
	}
	if (taunttimer == 0 && sprite_index == spr_player_taunt)
	{
	    movespeed = tauntstoredmovespeed
	    sprite_index = tauntstoredsprite
	    state = tauntstoredstate
	    if (global.combotime > 0 && global.combo > 0)
	    {
	        if (global.combo == 1)
	        {
	            scr_sound(sound_combo1)
	            instance_create(x, y, obj_10)
	            global.collect += 10
	        }
	        if (global.combo == 2)
	        {
	            scr_sound(sound_combo2)
	            instance_create(x, y, obj_20)
	            global.collect += 20
	        }
	        if (global.combo == 3)
	        {
	            scr_sound(sound_combo3)
	            instance_create(x, y, obj_40)
	            global.collect += 40
	        }
	        if (global.combo >= 4)
	        {
	            scr_sound(sound_combo4)
	            instance_create(x, y, obj_80)
	            global.collect += 80
	        }
	    }
	    global.combotime = 0
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_eatspaghetti)
	    state = states.normal
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_Timesup && (!(place_meeting(x, y, obj_exitgate))))
	{
	    global.panic = 1
	    sprite_index = spr_bossintro
	    image_index = 0
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_Timesup && place_meeting(x, y, obj_exitgate))
	    state = states.normal
	if (floor(image_index) == (image_number - 1) && (sprite_index == spr_player_levelcomplete || sprite_index == spr_playerN_victory))
	    state = states.normal
	if (key_jump && sprite_index == spr_player_phoneidle)
	{
	    global.panic = 1
	    sprite_index = spr_bossintro
	    image_index = 0
	    with (instance_create(x, y, obj_debris))
	    {
	        image_index = 0
	        sprite_index = spr_phonedebris
	    }
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_bossintro)
	    state = states.normal
	if (sprite_index == spr_bossintro)
	{
	    var lay_id = layer_get_id("Backgrounds_1")
	    var back_id = layer_background_get_id(lay_id)
	    var lay_id2 = layer_get_id("Backgrounds_2")
	    var back_id2 = layer_background_get_id(lay_id2)
	    var lay_id3 = layer_get_id("Backgrounds_3")
	    var back_id3 = layer_background_get_id(lay_id3)
	    if (global.panic == 1 && layer_background_get_sprite(back_id) == 819)
	        layer_background_sprite(back_id, bg_desertescape)
	    if (global.panic == 1 && layer_background_get_sprite(back_id) == 834)
	        layer_background_sprite(back_id, bg_castle3escape)
	    if (global.panic == 1 && layer_background_get_sprite(back_id) == 831)
	        layer_background_sprite(back_id, bg_castle4escape)
	    if (global.panic == 1 && layer_background_get_sprite(back_id3) == 836)
	        layer_background_sprite(back_id3, bg_castle1escape)
	    if (global.panic == 1 && layer_background_get_sprite(back_id) == 810)
	        layer_background_sprite(back_id, bg_factory3escape)
	    if (global.panic == 1 && layer_background_get_sprite(back_id) == 813)
	        layer_background_sprite(back_id, bg_factory1escape)
	    if (global.panic == 1 && layer_background_get_sprite(back_id2) == 815)
	        layer_background_sprite(back_id2, bg_factory2escape)
	    if (global.panic == 1 && layer_background_get_sprite(back_id) == 857)
	        layer_background_sprite(back_id, bg_sewer1escape)
	    if (global.panic == 1 && layer_background_get_sprite(back_id2) == 855)
	        layer_background_sprite(back_id2, bg_sewer2escape)
	    if (global.panic == 1 && layer_background_get_sprite(back_id3) == 853)
	        layer_background_sprite(back_id3, bg_sewer3escape)
	    obj_tv.tvsprite = spr_tvexit
	    obj_tv.showtext = 1
	    obj_tv.message = "GET BACK TO THE START!!"
	    obj_tv.alarm[0] = 150
	}
	image_speed = 0.35
}
