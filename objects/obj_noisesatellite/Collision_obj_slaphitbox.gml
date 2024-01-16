if (state == states.stun && hp == 0 && stunned > 40 && slapped == 0)
{
    slapped = 1
    instance_create((x + (obj_player.xscale * 40)), y, obj_punchdust)
    state = states.grabbed
    obj_player.state = states.grab
    instance_destroy(other.id)
}
if (hp == 0 && (!((state == states.stun && stunned > 40))) && state != states.grabbed && slapped == 0)
{
    scr_sound(sound_slaphit)
    instance_create(x, y, obj_spikehurteffect)
    other.image_xscale = image_xscale
    slapped = 1
    flash = 1
    instance_create(x, y, obj_bumpeffect)
    stunned = 200
    if (other.x != x)
        image_xscale = (-(sign((x - other.x))))
    vsp = -5
    hsp = ((-image_xscale) * 3)
    state = states.stun
}
else if (state != states.grabbed && slapped == 0)
{
    scr_sound(sound_slaphit)
    if (hp > 0)
        hp -= 1
    if (slapped == 0)
        instance_create(x, y, obj_slapstar)
    with (instance_create(x, y, obj_spikehurteffect))
        other.image_xscale = image_xscale
    slapped = 1
    state = states.stun
    stunned = 40
    if (other.x != x)
        image_xscale = (-(sign((x - other.x))))
    vsp = -3
    hsp = ((-image_xscale) * 2)
}
