global.collect += 100
global.pizza += 1
instance_create(x, y, obj_100)
if (once == 0)
    scr_sound(sfx_bigtoppinggot)
	once = 1
instance_destroy()
