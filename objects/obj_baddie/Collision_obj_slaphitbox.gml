scr_sound(sound_slaphit)
instance_create((x + (obj_player.xscale * 40)), y, obj_punchdust)
with (obj_player)
{
    suplexhavetomash = 5
    sprite_index = spr_grab
}
state = states.grabbed
obj_player.state = states.grab
instance_destroy(other.id)
