if (instance_exists(baddieID) && baddieID.hp <= 0)
{
    instance_destroy(baddieID)
    instance_destroy()
}
if (instance_exists(baddieID) && baddieID.hp > 0)
{
    global.hit += 1
    global.combotime = 60
    instance_create(baddieID.x, baddieID.y, obj_slapstar)
    instance_create(baddieID.x, baddieID.y, obj_baddiegibs)
    baddieID.flash = 1
    baddieID.hp -= 1
    scr_sound(sound_tackleenemy)
    baddieID.vsp = -10
    baddieID.image_index = 0
    baddieID.stunned = 200
    baddieID.state = states.stun
}
instance_destroy(other.id)
