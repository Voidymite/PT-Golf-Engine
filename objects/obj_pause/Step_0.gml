if (!pause)
{
    if (obj_player.key_start && room != rank_room && room != timesuproom)
    {
        pause = 1
        audio_pause_sound(obj_music.currentlyplaying)
        instance_deactivate_all(true)
        instance_create(((__view_get(0, 0) + 480) + 200), ((__view_get(1, obj_solid) + 270) - 200), obj_exit)
        instance_create(((__view_get(0, 0) + 480) - 200), ((__view_get(1, obj_solid) + 270) - 200), obj_retry)
    }
    else
    {
        instance_destroy(obj_exit)
        instance_destroy(obj_retry)
        pause = 0
        instance_activate_all()
    }
}
if (pause == 1)
{
    application_surface_draw_enable(true)
    scr_getinput()
    if (key_right2 && obj_exit.selected == 0)
    {
        obj_exit.selected = 1
        obj_retry.selected = 0
    }
    if ((-key_left2) && obj_retry.selected == 0)
    {
        obj_exit.selected = 0
        obj_retry.selected = 1
    }
    if instance_exists(obj_retry)
    {
        if (key_jump && obj_exit.selected == 1)
            game_restart()
        if (key_jump && obj_retry.selected == 1)
        {
            instance_destroy(obj_exit)
            instance_destroy(obj_retry)
            pause = 0
            instance_activate_all()
        }
    }
}
