global.pizzacoin += 1
obj_player.key_particles = 1
scr_sound(sound_pizzacoin)
obj_player.alarm[7] = 30
instance_destroy()
if (global.pizzacoin == 1)
    obj_tv.message = "YOU HAVE 1 PIZZA COIN!"
if (global.pizzacoin < 5)
    obj_tv.message = (("YOU HAVE " + string(global.pizzacoin)) + " PIZZA COINS!")
if (global.pizzacoin == 5)
    obj_tv.message = "YOU HAVE ALL PIZZA COINS!"
obj_tv.showtext = 1
obj_tv.alarm[0] = 150
