if (inv_frame == 0 && obj_player.state != states.knightpep && obj_player.state != states.knightpepattack && obj_player.state != states.knightpepslopes && obj_player.state != states.hurt)
{
    instance_destroy()
    global.key_inv = 1
    obj_player.key_particles = 1
    obj_player.alarm[7] = 30
}
if (global.keyget == 0 && obj_player.state != states.knightpep && obj_player.state != states.knightpepattack && obj_player.state != states.knightpepslopes)
{
    scr_sound(sound_toppingot)
    obj_player.state = states.keyget
    obj_player.image_index = 0
    global.keyget = 1
}
