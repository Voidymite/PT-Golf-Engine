if (room == rank_room || room == timesuproom || room == Realtitlescreen)
    visible = false
else
    visible = true
if (global.panic == 1)
    timestop = 0
else
    timestop = 1
if (room == timesuproom)
    timestop = 1
if (global.seconds == 0 && global.minutes == 0 && room != timesuproom && (!instance_exists(obj_endlevelfade)))
{
    obj_player.state = states.timesup
    room = timesuproom
    obj_player.image_index = 0
}
if (global.seconds < 0)
{
    global.seconds = 59
    global.minutes -= 1
}
if (global.seconds > 59)
{
    global.minutes += 1
    global.seconds -= 59
}
if ((global.panic == 1 && global.minutes < 1) || obj_player.sprite_index == spr_player_timesup)
{
    shake_mag = 2
    shake_mag_acc = (3 / room_speed)
}
else if (global.panic == 1 && basement == 0)
{
    shake_mag = 2
    shake_mag_acc = (3 / room_speed)
}
if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc
    if (shake_mag < 0)
        shake_mag = 0
}
if (instance_exists(obj_player) && obj_player.state != states.timesup && obj_player.state != states.gameover)
{
    var target = obj_player
    if (obj_player.state == states.mach3 || obj_player.state == states.machroll)
    {
        if (chargecamera > (obj_player.xscale * 100))
            chargecamera -= 2
        if (chargecamera < (obj_player.xscale * 100))
            chargecamera += 2
        __view_set(0, 0, ((target.x - (__view_get(2, 0) / 2)) + chargecamera))
    }
    else
    {
        if (chargecamera > 0)
            chargecamera -= 2
        if (chargecamera < 0)
            chargecamera += 2
        __view_set(0, 0, ((target.x - (__view_get(2, 0) / 2)) + chargecamera))
    }
    __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - __view_get(2, 0))))
    __view_set(1, 0, (target.y - (__view_get(3, 0) / 2)))
    __view_set(1, 0, clamp(__view_get(1, 0), 0, (room_height - __view_get(3, 0))))
    if (shake_mag != 0)
    {
        __view_set(0, 0, ((target.x - (__view_get(2, 0) / 2)) + chargecamera))
        __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - __view_get(2, 0))))
        __view_set(1, 0, ((target.y - (__view_get(3, 0) / 2)) + irandom_range((-shake_mag), shake_mag)))
        __view_set(1, 0, clamp(__view_get(1, 0), (0 + irandom_range((-shake_mag), shake_mag)), ((room_height - __view_get(3, 0)) + irandom_range((-shake_mag), shake_mag))))
    }
}
