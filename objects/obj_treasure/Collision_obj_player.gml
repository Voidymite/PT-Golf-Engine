with (obj_player)
{
    treasure_x = x
    treasure_y = y
    treasure_room = room
    if grounded
    {
        ds_list_add(global.saveroom, other.id)
        global.treasure = 1
        hsp = 0
        vsp = 0
        if (other.sprite_index == other.spridle)
        {
            audio_stop_all()
            obj_music.jingle = 1
            scr_sound(sound_treasuregot)
            other.alarm[0] = 300
        }
        if (other.sprite_index == other.spridle)
            state = states.gottreasure
        other.sprite_index = other.sprgot
        other.x = obj_player.x
        other.y = (obj_player.y - 35)
        obj_tv.showtext = 1
        obj_tv.message = "YOU GOT THE TOWER SECRET TREASURE!!!"
        obj_tv.alarm[0] = 150
        obj_music.jingle = 1
        ini_close()
    }
}
