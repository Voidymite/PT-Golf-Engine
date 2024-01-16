with (other.id)
{
    sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
    image_speed = 0.35
    global.collected = 0
    global.collectsound = sound_pizzagot
}
