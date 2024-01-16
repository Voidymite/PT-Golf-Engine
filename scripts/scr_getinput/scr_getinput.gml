function scr_getinput()
{
	key_up = (keyboard_check(global.key_up) || gamepad_button_check(0, global.key_upC) || keyboard_check(vk_up))
	key_up2 = (keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(0, global.key_upC) || keyboard_check_pressed(vk_up))
	key_right = (keyboard_check(global.key_right) || gamepad_button_check(0, global.key_rightC) || keyboard_check(vk_right))
	key_right2 = (keyboard_check_pressed(global.key_right) || gamepad_button_check_pressed(0, global.key_rightC) || keyboard_check_pressed(vk_right))
	key_left = (-((keyboard_check(global.key_left) || gamepad_button_check(0, global.key_leftC) || keyboard_check(vk_left))))
	key_left2 = (-((keyboard_check_pressed(global.key_left) || gamepad_button_check_pressed(0, global.key_leftC) || keyboard_check_pressed(vk_left))))
	key_down = (keyboard_check(global.key_down) || gamepad_button_check(0, global.key_downC) || keyboard_check(vk_down))
	key_down2 = (keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(0, global.key_downC) || keyboard_check_pressed(vk_down))
	key_jump = (keyboard_check_pressed(global.key_jump) || gamepad_button_check_pressed(0, global.key_jumpC) || keyboard_check_pressed(ord("Z")))
	key_jump2 = (keyboard_check(global.key_jump) || gamepad_button_check(0, global.key_jumpC) || keyboard_check(ord("Z")))
	key_slap = (keyboard_check(global.key_slap) || gamepad_button_check(0, global.key_slapC) || keyboard_check(ord("X")))
	key_slap2 = (keyboard_check_pressed(global.key_slap) || gamepad_button_check_pressed(0, global.key_slapC) || keyboard_check_pressed(ord("X")))
	key_attack = (keyboard_check(global.key_attack) || gamepad_button_check(0, global.key_attackC) || keyboard_check(vk_shift))
	key_attack2 = (keyboard_check_pressed(global.key_attack) || gamepad_button_check_pressed(0, global.key_attackC) || keyboard_check_pressed(vk_shift))
	key_shoot = (keyboard_check(global.key_shoot) || gamepad_button_check(0, global.key_shootC) || keyboard_check(ord("C")))
	key_shoot2 = (keyboard_check_pressed(global.key_shoot) || gamepad_button_check_pressed(0, global.key_shootC) || keyboard_check_pressed(ord("C")))
	key_start = (keyboard_check_pressed(global.key_start) || gamepad_button_check_pressed(0, global.key_startC) || keyboard_check_pressed(vk_return))
	key_escape = (keyboard_check_pressed(vk_escape) || gamepad_button_check(0, gp_select) || keyboard_check_pressed(vk_escape))
	gamepad_set_axis_deadzone(0, 0.5)
	if (keyboard_check(vk_f1) && global.funmode == 0)
	{
	    global.funmode = 1
	    with (obj_tv)
	    {
	        showtext = 1
	        alarm[0] = 200
	        image_speed = 0
	        message = "FUN MODE ACTIVATED"
	    }
	}
	if (keyboard_check(vk_f2) && obj_player.character == "P")
	{
	    with (obj_player)
	    {
	        character = "N"
	        scr_characterspr()
	    }
	    with (obj_tv)
	    {
	        showtext = 1
	        alarm[0] = 200
	        image_speed = 0
	        message = "NOISE MODE ACTIVATED"
	    }
	}
	if (keyboard_check(vk_f9) && (!instance_exists(obj_fakepeppino)))
	{
	    instance_create(obj_player.x, obj_player.y, obj_fakepeppino)
	    with (obj_tv)
	    {
	        showtext = 1
	        alarm[0] = 200
	        image_speed = 0
	        message = "FAKE PEPPINO MODE ACTIVATED"
	    }
	}
}
