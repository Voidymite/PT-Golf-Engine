if ((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)) && obj_player.state == states.cheeseball)
    instance_destroy()
