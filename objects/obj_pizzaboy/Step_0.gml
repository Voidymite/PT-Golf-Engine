switch state
{
    case states.idle:
        scr_enemy_idle()
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
    case states.grabbed:
        scr_enemy_grabbed()
        break
}

if (!instance_exists(obj_slaphitbox))
    slapped = 0
stunned = 100
if (cigar == 0)
{
    landspr = spr_pizzaboy
    idlespr = spr_pizzaboy
    fallspr = spr_pizzaboy
    hitceillingspr = spr_pizzaboy
    stunfalltransspr = spr_pizzaboy
    hitwallspr = spr_pizzaboy
    stunfallspr = spr_pizzaboy
    rollingspr = spr_pizzaboy
    walkspr = spr_pizzaboy
    turnspr = spr_pizzaboy
    flyingspr = spr_pizzaboy
    hitspr = spr_pizzaboy
    stunlandspr = spr_pizzaboy
    stunspr = spr_pizzaboy
    recoveryspr = spr_pizzaboy
    stompedspr = spr_pizzaboy
    grabbedspr = spr_pizzaboy
}
if (state != states.grabbed)
    depth = 0
if (state != states.stun)
    thrown = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
