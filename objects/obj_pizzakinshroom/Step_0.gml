if (room == rank_room || room == timesuproom)
    visible = false
if (global.shroomfollow == 1)
{
    image_alpha = obj_player.image_alpha
    if (obj_player.hsp != 0)
        sprite_index = spr_pizzakinshroom_run
    else
        sprite_index = spr_pizzakinshroom
    depth = -6
    ds_queue_enqueue(followQueue, obj_player.x)
    ds_queue_enqueue(followQueue, obj_player.y)
    LAG_STEPS = 10
    if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
    {
        x = (ds_queue_dequeue(followQueue) - (image_xscale * 4))
        y = (ds_queue_dequeue(followQueue) + 2)
    }
    image_xscale = obj_player.xscale
}
if (global.playerhealth == 1 && global.shroomfollow == 1)
    sprite_index = spr_pizzakinshroom_panic
