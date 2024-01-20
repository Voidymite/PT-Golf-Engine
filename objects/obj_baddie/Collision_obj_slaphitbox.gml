instance_create((x + (obj_player.xscale * 40)), y, obj_punchdust)
with (obj_player)
{
    suplexhavetomash = 5
    sprite_index = spr_suplexdash
}
state = states.grabbed
obj_player.state = states.grab
instance_destroy(other.id)
