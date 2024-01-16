switch state
{
    case states.idle:
        scr_enemy_idle()
        break
    case states.charge:
        scr_enemy_charge()
        break
    case states.turn:
        scr_enemy_turn()
        break
    case states.walk:
        scr_enemy_walk()
        break
    case states.land:
        scr_enemy_land()
        break
    case states.hit:
        scr_enemy_hit()
        break
    case states.stun:
        scr_enemy_stun()
        break
    case states.Throw:
        scr_pizzagoblin_throw()
        break
    case states.grabbed:
        scr_enemy_grabbed()
        break
}

if (state == states.stun && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != states.stun)
    birdcreated = 0
if (hitboxcreate == 0 && state == states.charge && obj_player.state != states.mach3 && obj_player.state != states.mach2)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
    {
        sprite_index = spr_player_mask
        ID = other.id
    }
}
if (x != obj_player.x)
{
    if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && obj_player.y == y && image_xscale == sign((obj_player.x - x)))
    {
        if (state == states.walk || state == states.idle)
        {
            chargereset = 200
            vsp = -5
            scr_sound(sound_enemythrow)
            image_index = 0
            image_xscale = (-(sign((x - obj_player.x))))
            state = states.charge
        }
    }
}
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != states.grabbed)
    depth = 0
if (state != states.stun)
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}
