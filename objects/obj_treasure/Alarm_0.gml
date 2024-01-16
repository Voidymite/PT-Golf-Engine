obj_player.state = states.backbreaker
obj_player.image_index = 0
obj_player.sprite_index = obj_player.spr_Timesup
obj_tv.showtext = 1
obj_tv.message = "UH OH..."
obj_tv.alarm[0] = 150
ds_list_clear(global.baddieroom)
switch room
{
    case floor1_roomtreasure:
        global.minutes = 2
        global.seconds = 30
        break
    case floor2_roomtreasure:
        global.minutes = 2
        global.seconds = 40
        break
    case floor3_roomtreasure:
        global.minutes = 2
        global.seconds = 30
        break
    case floor4_roomtreasure:
        global.minutes = 2
        global.seconds = 0
        break
    case floor5_roomtreasure:
        global.minutes = 2
        global.seconds = 0
        break
}

global.wave = 0
global.maxwave = (((global.minutes * 60) + global.seconds) * 60)
if global.panicbg
    scr_panicbg_init()
