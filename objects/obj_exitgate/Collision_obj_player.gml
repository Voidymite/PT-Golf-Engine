if (global.panic == 1)
{
    with (obj_player)
    {
        if (grounded && x > (other.x + 32) && x < (other.x + 160) && key_up && (state == states.normal || state == states.mach1 || state == states.mach2 || state == states.mach3))
        {
            if (global.collect >= global.srank)
                global.rank = "s"
            else if (global.collect > global.arank)
                global.rank = "a"
            else if (global.collect > global.brank)
                global.rank = "b"
            else if (global.collect > global.crank)
                global.rank = "c"
            else
                global.rank = "d"
            if (!instance_exists(obj_endlevelfade))
                instance_create(x, y, obj_endlevelfade)
            if (state != states.door)
            {
                audio_stop_all()
                state = states.door
                obj_endlevelfade.alarm[0] = 235
                image_index = 0
            }
        }
    }
}
