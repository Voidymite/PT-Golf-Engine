scr_sound(sfx_collect)
global.collectsound = sfx_collect
global.collect += 10
global.pizzameter += 1
instance_create(x, y, obj_10)
instance_destroy()
