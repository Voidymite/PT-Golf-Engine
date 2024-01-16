if (global.panic == 1)
    image_index = 1
if (place_meeting(x, y, obj_player) && obj_player.state != states.comingoutdoor && image_index == 1 && global.panic == 0)
{
    ds_list_add(global.saveroom, id)
    image_index = 0
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }
    obj_player.state = states.backbreaker
    obj_player.image_index = 0
    obj_player.sprite_index = obj_player.spr_Timesup
}
