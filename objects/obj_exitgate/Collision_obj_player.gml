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
            ini_open("saveData.ini")
            if (room == floor1_room0)
            {
                ini_open("saveData.ini")
                if (global.rank == "s")
                    ini_write_string("Ranks", "floor1", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "floor1", "none"))
                    ini_write_string("Ranks", "floor1", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "floor1", "none") && "a" != ini_read_string("Ranks", "floor1", "none"))
                    ini_write_string("Ranks", "floor1", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "floor1", "none") && "a" != ini_read_string("Ranks", "floor1", "none") && "b" != ini_read_string("Ranks", "floor1", "none"))
                    ini_write_string("Ranks", "floor1", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "floor1", "none") && "a" != ini_read_string("Ranks", "floor1", "none") && "b" != ini_read_string("Ranks", "floor1", "none") && "c" != ini_read_string("Ranks", "floor1", "none"))
                    ini_write_string("Ranks", "floor1", global.rank)
            }
            if (room == floor2_room0)
            {
                ini_open("saveData.ini")
                if (global.rank == "s")
                    ini_write_string("Ranks", "floor2", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "floor2", "none"))
                    ini_write_string("Ranks", "floor2", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "floor2", "none") && "a" != ini_read_string("Ranks", "floor2", "none"))
                    ini_write_string("Ranks", "floor2", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "floor2", "none") && "a" != ini_read_string("Ranks", "floor2", "none") && "b" != ini_read_string("Ranks", "floor2", "none"))
                    ini_write_string("Ranks", "floor2", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "floor2", "none") && "a" != ini_read_string("Ranks", "floor2", "none") && "b" != ini_read_string("Ranks", "floor2", "none") && "c" != ini_read_string("Ranks", "floor2", "none"))
                    ini_write_string("Ranks", "floor2", global.rank)
            }
            if (room == floor3_room0)
            {
                ini_open("saveData.ini")
                if (global.rank == "s")
                    ini_write_string("Ranks", "floor3", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "floor3", "none"))
                    ini_write_string("Ranks", "floor3", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "floor3", "none") && "a" != ini_read_string("Ranks", "floor3", "none"))
                    ini_write_string("Ranks", "floor3", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "floor3", "none") && "a" != ini_read_string("Ranks", "floor3", "none") && "b" != ini_read_string("Ranks", "floor3", "none"))
                    ini_write_string("Ranks", "floor3", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "floor3", "none") && "a" != ini_read_string("Ranks", "floor3", "none") && "b" != ini_read_string("Ranks", "floor3", "none") && "c" != ini_read_string("Ranks", "floor3", "none"))
                    ini_write_string("Ranks", "floor3", global.rank)
            }
            ini_close()
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
