if (!instance_exists(baddieID))
    instance_destroy()
if instance_exists(baddieID)
{
    x = baddieID.x
    y = baddieID.y
    image_xscale = baddieID.image_xscale
}
if (instance_exists(baddieID) && place_meeting(x, y, obj_player) && obj_player.cutscene == 0)
{
    if (baddieID.state != states.grabbed)
    {
        with (obj_player)
        {
            if (instakillmove == 1 && other.baddieID.object_index != obj_pizzaball)
            {
                instance_destroy(other.baddieID)
                instance_destroy(other.id)
                global.hit += 1
                global.combotime = 60
                if ((!grounded) && state != states.freefall && key_jump2)
                {
                    suplexmove = 0
                    vsp = -11
                }
            }
            if (instance_exists(other.baddieID) && y < other.baddieID.y && attacking == 0 && state == states.jump && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep)
            {
                scr_sound(sfx_enemystomp)
                suplexmove = 0
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                if (vsp > 0)
                {
                    other.baddieID.stunned = 200
                    if (x != other.baddieID.x)
                        other.baddieID.image_xscale = (-(sign((other.baddieID.x - x))))
                    image_index = 0
                    if key_jump2
                    {
                        other.baddieID.vsp = -5
                        other.baddieID.hsp = ((-other.baddieID.image_xscale) * 3)
                        instance_create(x, (y + 50), obj_stompeffect)
                        other.baddieID.state = states.stun
                        stompAnim = 1
                        other.baddieID.image_index = 0
                        vsp = -14
                        sprite_index = spr_stompprep
                    }
                    else
                    {
                        other.baddieID.vsp = -5
                        other.baddieID.hsp = ((-other.baddieID.image_xscale) * 3)
                        instance_create(x, (y + 50), obj_stompeffect)
                        other.baddieID.state = states.stun
                        stompAnim = 1
                        other.baddieID.image_index = 0
                        vsp = -9
                        sprite_index = spr_stompprep
                    }
                }
            }
            if (instance_exists(other.baddieID) && y > other.baddieID.y && other.baddieID.vsp > 0)
            {
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                other.baddieID.stunned = 200
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-(sign((other.baddieID.x - x))))
                other.baddieID.vsp = -5
                other.baddieID.hsp = ((-other.baddieID.image_xscale) * 5)
                instance_create(x, (y - 50), obj_stompeffect)
                other.baddieID.state = states.stun
                other.baddieID.image_index = 0
            }
            if (instance_exists(other.baddieID) && state == states.mach1)
            {
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                global.hit += 1
                global.combotime = 60
                instance_create(other.baddieID.x, other.baddieID.y, obj_slapstar)
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs)
                other.baddieID.flash = 1
                other.baddieID.hp -= 1
                instance_create(x, y, obj_bumpeffect)
                other.baddieID.stunned = 200
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-(sign((other.baddieID.x - x))))
                other.baddieID.vsp = -5
                other.baddieID.hsp = ((-other.baddieID.image_xscale) * 5)
                hsp = ((-xscale) * 4)
                vsp = -4
                machpunchAnim = 1
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-(sign((other.baddieID.x - x))))
                other.baddieID.state = states.stun
                image_index = 0
                state = states.tackle
                if (other.baddieID.hp == 0 && other.baddieID.object_index != obj_boss)
                {
                    instance_destroy(other.id)
                    instance_destroy(other.baddieID)
                }
                else if (other.baddieID.hp <= 0 && other.baddieID.object_index == obj_boss)
                {
                    other.baddieID.thrown = 1
                    vsp = -5
                }
            }
            if (instance_exists(other.baddieID) && (state == states.mach2 || state == states.grab) && other.baddieID.grounded == 1)
            {
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                global.hit += 1
                global.combotime = 60
                instance_create(other.baddieID.x, other.baddieID.y, obj_slapstar)
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs)
                other.baddieID.flash = 1
                other.baddieID.hp -= 1
                instance_create(x, y, obj_bumpeffect)
                other.baddieID.vsp = -10
                other.baddieID.hsp = xscale
                other.baddieID.image_index = 0
                other.baddieID.stunned = 200
                other.baddieID.state = states.stun
                image_index = 0
                machpunchAnim = 1
                if ((!grounded) && state != states.freefall && key_jump2)
                {
                    suplexmove = 0
                    sprite_index = spr_mach2jump
                    vsp = -11
                }
                if (other.baddieID.hp == 0 && other.baddieID.object_index != obj_boss)
                {
                    instance_destroy(other.baddieID)
                    instance_destroy(other.id)
                }
                else if (other.baddieID.hp <= 0 && other.baddieID.object_index == obj_boss)
                {
                    other.baddieID.thrown = 1
                    vsp = -5
                }
            }
            if (instance_exists(other.baddieID) && other.baddieID.state != states.charge && attacking == 0 && state != states.tackle && state != states.hurt && (!(y < other.baddieID.y)) && (!(y > other.baddieID.y)) && grabbing == 0 && other.baddieID.state != states.stun && state != states.handstandjump)
            {
                if (x != other.baddieID.x)
                {
                    other.baddieID.image_xscale = (-(sign((other.baddieID.x - x))))
                    xscale = (-(sign((x - other.baddieID.x))))
                }
                hsp = ((-xscale) * 8)
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                vsp = -4
                other.baddieID.image_xscale = (-xscale)
                other.baddieID.hsp = ((-other.baddieID.image_xscale) * 4)
                other.baddieID.vsp = -4
                if (other.baddieID.state == states.walk || other.baddieID.state == states.turn)
                    other.baddieID.state = states.idle
                if (other.baddieID.state == 87)
                {
                    stunned = 30
                    other.baddieID.state = states.stun
                }
                image_index = 0
                state = states.bump
                if (other.baddieID.state == states.land)
                    other.baddieID.state = states.idle
            }
        }
    }
}
if (!instance_exists(baddieID))
    instance_destroy()
