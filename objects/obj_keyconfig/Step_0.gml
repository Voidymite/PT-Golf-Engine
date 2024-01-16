if (controller == 0)
{
    switch remapphase
    {
        case 0:
            sprite_index = spr_pressup
            if keyboard_check_pressed(vk_anykey)
            {
                global.key_up = keyboard_key
                remapphase += 1
            }
            break
        case 1:
            sprite_index = spr_pressright
            if keyboard_check_pressed(vk_anykey)
            {
                global.key_right = keyboard_key
                remapphase += 1
            }
            break
        case 2:
            sprite_index = spr_pressleft
            if keyboard_check_pressed(vk_anykey)
            {
                global.key_left = keyboard_key
                remapphase += 1
            }
            break
        case 3:
            sprite_index = spr_pressdown
            if keyboard_check_pressed(vk_anykey)
            {
                global.key_down = keyboard_key
                remapphase += 1
            }
            break
        case 4:
            sprite_index = spr_pressjump
            if keyboard_check_pressed(vk_anykey)
            {
                global.key_jump = keyboard_key
                remapphase += 1
            }
            break
        case 5:
            sprite_index = spr_pressslap
            if keyboard_check_pressed(vk_anykey)
            {
                global.key_slap = keyboard_key
                remapphase += 1
            }
            break
        case 6:
            sprite_index = spr_pressdash
            if keyboard_check_pressed(vk_anykey)
            {
                global.key_attack = keyboard_key
                remapphase += 1
            }
            break
        case 7:
            sprite_index = spr_ok
            if keyboard_check_pressed(global.key_jump)
                instance_destroy()
            if keyboard_check_pressed(global.key_slap)
                remapphase = 0
            break
    }

    ini_open("saveData.ini")
    ini_write_string("ControlsKeys", "up", global.key_up)
    ini_write_string("ControlsKeys", "right", global.key_right)
    ini_write_string("ControlsKeys", "left", global.key_left)
    ini_write_string("ControlsKeys", "down", global.key_down)
    ini_write_string("ControlsKeys", "jump", global.key_jump)
    ini_write_string("ControlsKeys", "slap", global.key_slap)
    ini_write_string("ControlsKeys", "attack", global.key_attack)
    ini_close()
}
else
{
    switch remapphase
    {
        case 0:
            sprite_index = spr_pressup
            if gamepad_button_check_pressed(0, scr_checkanygamepad())
            {
                global.key_upC = scr_checkanygamepad()
                remapphase += 1
            }
            break
        case 1:
            sprite_index = spr_pressright
            if gamepad_button_check_pressed(0, scr_checkanygamepad())
            {
                global.key_rightC = scr_checkanygamepad()
                remapphase += 1
            }
            break
        case 2:
            sprite_index = spr_pressleft
            if gamepad_button_check_pressed(0, scr_checkanygamepad())
            {
                global.key_leftC = scr_checkanygamepad()
                remapphase += 1
            }
            break
        case 3:
            sprite_index = spr_pressdown
            if gamepad_button_check_pressed(0, scr_checkanygamepad())
            {
                global.key_downC = scr_checkanygamepad()
                remapphase += 1
            }
            break
        case 4:
            sprite_index = spr_pressjump
            if gamepad_button_check_pressed(0, scr_checkanygamepad())
            {
                global.key_jumpC = scr_checkanygamepad()
                remapphase += 1
            }
            break
        case 5:
            sprite_index = spr_pressslap
            if gamepad_button_check_pressed(0, scr_checkanygamepad())
            {
                global.key_slapC = scr_checkanygamepad()
                remapphase += 1
            }
            break
        case 6:
            sprite_index = spr_pressdash
            if gamepad_button_check_pressed(0, scr_checkanygamepad())
            {
                global.key_attackC = scr_checkanygamepad()
                remapphase += 1
            }
            break
        case 7:
            sprite_index = spr_ok
            if gamepad_button_check_pressed(0, global.key_jumpC)
                instance_destroy()
            if gamepad_button_check_pressed(0, global.key_slapC)
                remapphase = 0
            break
    }

    ini_open("saveData.ini")
    ini_write_string("ControllerButton", "up", global.key_upC)
    ini_write_string("ControllerButton", "right", global.key_rightC)
    ini_write_string("ControllerButton", "left", global.key_leftC)
    ini_write_string("ControllerButton", "down", global.key_downC)
    ini_write_string("ControllerButton", "jump", global.key_jumpC)
    ini_write_string("ControllerButton", "slap", global.key_slapC)
    ini_write_string("ControllerButton", "attack", global.key_attackC)
    ini_close()
}
