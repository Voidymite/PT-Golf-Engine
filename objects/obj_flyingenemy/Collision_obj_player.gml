if (obj_player.mach2 >= 35 || obj_player.attacking == 1)
{
    if (obj_player.state == states.facestomp)
    {
        obj_player.vsp = -6
        obj_player.image_index = 0
        obj_player.facestompAnim = 1
    }
    instance_destroy()
    if (obj_player.state != states.Sjump)
        obj_player.vsp = -11
    instance_create(x, y, obj_bangeffect)
    with (instance_create(x, y, obj_flyingenemydead))
    {
        hsp = (sign((x - obj_player.x)) * 15)
        image_xscale = (-(sign((x - obj_player.x))))
        vsp = -11
    }
    audio_sound_gain(sfx_enemyhit, 0.7, 0)
    audio_play_sound(sfx_enemyhit, 1, false)
}
