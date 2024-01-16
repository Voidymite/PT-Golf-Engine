if (jingle == 0)
{
    if (room == Realtitlescreen)
        currentlyplaying = mu_title
    if (global.panic == 0)
    {
        switch room
        {
			// add a new case statement for every room
            case golf_room1:
			{
                currentlyplaying = mu_tutorial;
                break;
			}
        }
    }
}
if (instance_exists(obj_player) && obj_player.state != states.victory && room != rank_room && room != timesuproom && obj_player.state != states.gottreasure && obj_player.sprite_index != obj_player.spr_Timesup)
    jingle = 0
if (global.panic == 1 && jingle == 0)
    currentlyplaying = mu_escape
if (jingle == 0)
{
    if (!audio_is_playing(currentlyplaying))
    {
        audio_stop_all()
        scr_sound(currentlyplaying)
    }
    if audio_is_paused(currentlyplaying)
    {
        audio_pause_all()
        audio_resume_sound(currentlyplaying)
    }
}
if (room == rank_room)
{
    jingle = 1
    audio_stop_sound(currentlyplaying)
    if (global.rank == "s")
    {
        if (!audio_is_playing(mu_ranks))
            audio_play_sound(mu_ranks, 1, false)
    }
    else if (global.rank == "a")
    {
        if (!audio_is_playing(mu_ranka))
            audio_play_sound(mu_ranka, 1, false)
    }
    else if (global.rank == "b" || global.rank == "c")
    {
        if (!audio_is_playing(mu_rankb))
            audio_play_sound(mu_rankb, 1, false)
    }
    else if (global.rank == "d")
    {
        if (!audio_is_playing(mu_rankd))
            audio_play_sound(mu_rankd, 1, false)
    }
}
if (room == timesuproom)
{
    audio_stop_all()
    jingle = 1
}
