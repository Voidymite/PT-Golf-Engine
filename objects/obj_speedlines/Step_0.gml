image_xscale = obj_player.xscale
x = obj_player.x
y = obj_player.y
if (obj_player.movespeed <= 7)
    instance_destroy()
    image_angle = 0
with (obj_player)
{
    if (state != states.mach2)
        instance_destroy(other.id)
}
