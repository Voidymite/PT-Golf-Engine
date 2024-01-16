if instance_exists(obj_keyconfig)
    visible = false
else
    visible = true
ini_open("saveData.ini")
global.key_up = ini_read_string("ControlsKeys", "up", 38)
global.key_right = ini_read_string("ControlsKeys", "right", 39)
global.key_left = ini_read_string("ControlsKeys", "left", 37)
global.key_down = ini_read_string("ControlsKeys", "down", 40)
global.key_jump = ini_read_string("ControlsKeys", "jump", 90)
global.key_slap = ini_read_string("ControlsKeys", "slap", 88)
global.key_shoot = ini_read_string("ControlsKeys", "shoot", 67)
global.key_attack = ini_read_string("ControlsKeys", "attack", 16)
global.key_start = 27
global.key_upC = ini_read_string("ControllerButton", "up", 32781)
global.key_rightC = ini_read_string("ControllerButton", "right", 32784)
global.key_leftC = ini_read_string("ControllerButton", "left", 32783)
global.key_downC = ini_read_string("ControllerButton", "down", 32782)
global.key_jumpC = ini_read_string("ControllerButton", "jump", 32769)
global.key_slapC = ini_read_string("ControllerButton", "slap", 32771)
global.key_shootC = ini_read_string("ControllerButton", "shoot", 32770)
global.key_attackC = ini_read_string("ControllerButton", "attack", 32774)
global.key_startC = 32778
ini_close()
if (levelselect == 1)
{
    if (!instance_exists(obj_keyconfig))
        scr_getinput()
    if (key_down2 && b < 4)
        b += 1
    if (key_up2 && b > 0)
        b -= 1
    if (!instance_exists(obj_fadeout))
    {
        if key_jump
        {
            with (instance_create(x, y, obj_fadeout))
            {
                if (other.b == 0)
                {
                    obj_player.targetRoom = floor1_room0
                    obj_player.player_x = 208
                    obj_player.player_y = 434
                    obj_player.character = "P"
                }
                if (other.b == 1)
                {
                    obj_player.targetRoom = floor2_room0
                    obj_player.player_x = 208
                    obj_player.player_y = 434
                    obj_player.character = "P"
                }
                if (other.b == 2)
                {
                    obj_player.targetRoom = floor3_room0
                    obj_player.player_x = 976
                    obj_player.player_y = 434
                    obj_player.character = "P"
                }
                if (other.b == 3)
                {
                    obj_player.targetRoom = floor4_room0
                    obj_player.player_x = 304
                    obj_player.player_y = 402
                    obj_player.character = "P"
                }
                if (other.b == 4)
                {
                    obj_player.targetRoom = floor5_room1
                    obj_player.player_x = 244
                    obj_player.player_y = 187
                    obj_player.character = "N"
                    scr_characterspr()
                }
            }
        }
        if key_slap2
        {
            with (instance_create(x, y, obj_fadeout))
            {
                if (other.b == 0)
                {
                    obj_player.targetRoom = floor1_roomtreasure
                    obj_player.player_x = 250
                    obj_player.player_y = 250
                    obj_player.character = "P"
                }
                if (other.b == 1)
                {
                    obj_player.targetRoom = floor2_roomtreasure
                    obj_player.player_x = 250
                    obj_player.player_y = 250
                    obj_player.character = "P"
                }
            }
        }
    }
}
else if (levelselect == 0)
{
    if (!instance_exists(obj_keyconfig))
        scr_getinput()
    if (key_up && (!instance_exists(obj_keyconfig)) && optionselect == 1)
    {
        optionselect = 0
        scr_sound(sound_points)
    }
    else if (key_down && (!instance_exists(obj_keyconfig)) && optionselect == 0)
    {
        optionselect = 1
        scr_sound(sound_points)
    }
    if (optionselect == 0)
        obj_cursor.y = (y - 24)
    else if (optionselect == 1)
        obj_cursor.y = (y + 18)
    if (optionselect == 0 && key_jump && (!instance_exists(obj_keyconfig)))
    {
        scr_sound(sound_pizzagot)
        levelselect = 1
        sprite_index = spr_null
    }
    if (optionselect == 1 && (!instance_exists(obj_keyconfig)))
    {
        if keyboard_check_pressed(global.key_jump)
        {
            scr_sound(sound_pizzagot)
            instance_create(x, y, obj_keyconfig)
        }
        else if gamepad_button_check_pressed(0, global.key_jumpC)
        {
            scr_sound(sound_pizzagot)
            with (instance_create(x, y, obj_keyconfig))
                controller = 1
        }
    }
}
