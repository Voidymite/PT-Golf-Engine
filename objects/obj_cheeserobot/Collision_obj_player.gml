if (state != states.grabbed)
{
    with (obj_player)
    {
        if (y < other.y && attacking == 0 && state == states.jump && vsp > 0)
        {
            scr_sound(sound_stomp)
            if (vsp > 0)
            {
                other.stunned = 200
                if (x != other.x)
                    other.image_xscale = (-(sign((other.x - x))))
                image_index = 0
                if key_jump2
                {
                    other.vsp = -5
                    other.hsp = ((-other.image_xscale) * 3)
                    instance_create(x, (y + 50), obj_stompeffect)
                    other.state = states.stun
                    stompAnim = 1
                    other.image_index = 0
                    vsp = -14
                    sprite_index = spr_player_stompprep
                }
                else
                {
                    other.vsp = -5
                    other.hsp = ((-other.image_xscale) * 3)
                    instance_create(x, (y + 50), obj_stompeffect)
                    other.state = states.stun
                    stompAnim = 1
                    other.image_index = 0
                    vsp = -9
                    sprite_index = spr_player_stompprep
                }
            }
        }
        if (state == states.mach1)
        {
            scr_sound(sound_tackleenemy)
            instance_create(x, y, obj_bumpeffect)
            other.stunned = 40
            if (x != other.x)
                other.image_xscale = (-(sign((other.x - x))))
            other.vsp = -5
            other.hsp = ((-other.image_xscale) * 3)
            hsp = ((-xscale) * 4)
            vsp = -4
            machpunchAnim = 1
            if (x != other.x)
                other.image_xscale = (-(sign((other.x - x))))
            other.state = states.stun
            image_index = 0
            state = states.tackle
        }
        if ((state == states.mach2 || state == states.grab) && other.grounded == 1)
        {
            scr_sound(sound_tackleenemy)
            instance_create(x, y, obj_bumpeffect)
            other.vsp = -10
            other.hsp = xscale
            other.image_index = 0
            other.stunned = 200
            other.state = states.stun
            machpunchAnim = 1
            if ((!grounded) && state != states.freefall)
            {
                sprite_index = spr_player_mach2jump
                vsp = -10
            }
        }
        if (attacking == 1 && state != states.mach2)
        {
            if (state == states.mach3)
                other.shot = 1
            image_index = 0
            instance_destroy(other.id)
            machpunchAnim = 1
            if ((!grounded) && state != states.freefall)
                vsp = -10
        }
        if (attacking == 0 && state != states.tackle && state != states.hurt && (!(y < other.y)) && grabbing == 0 && other.state != states.stun)
        {
            if (x != other.x)
            {
                other.image_xscale = (-(sign((other.x - x))))
                xscale = (-(sign((x - other.x))))
            }
            hsp = ((-xscale) * 4)
            vsp = -4
            other.image_xscale = (-xscale)
            other.hsp = ((-other.image_xscale) * 4)
            other.vsp = -4
            if (other.state == states.walk || other.state == states.turn)
                other.state = states.idle
            image_index = 0
            state = states.bump
            if (other.state == states.land)
                other.state = states.idle
        }
    }
}
