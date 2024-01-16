x = (obj_pepperman.x + (obj_pepperman.image_xscale * 35))
y = (obj_pepperman.y + 20)
image_xscale = obj_pepperman.image_xscale
if (obj_pepperman.charging == 0)
    instance_destroy()
if (obj_player.state == states.mach3)
    mask_index = spr_masknull
else
    mask_index = spr_chargeeffect
