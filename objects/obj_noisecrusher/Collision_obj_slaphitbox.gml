if (invframes == 0 && state == states.stun)
{
    scr_sound(sound_slaphit)
    instance_create((x + (obj_player.xscale * 40)), y, obj_punchdust)
    state = states.grabbed
    obj_player.state = states.grab
    instance_destroy(other.id)
    obj_player.suplexhavetomash = 5
    obj_player.sprite_index = spr_player_grab
}
