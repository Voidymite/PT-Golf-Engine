if (global.collectsound == sound_suplex1)
    scr_sound(sound_points)
global.collectsound = sound_pizzagot
global.collect += 10
global.pizzameter += 1
instance_create(x, y, obj_10)
instance_destroy()
