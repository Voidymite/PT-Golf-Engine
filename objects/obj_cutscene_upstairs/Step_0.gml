scr_getinput()
obj_player.state = states.comingoutdoor
if instance_exists(obj_pizzakinshroom)
    obj_pizzakinshroom.visible = false
if instance_exists(obj_pizzakincheese)
    obj_pizzakincheese.visible = false
if instance_exists(obj_pizzakintomato)
    obj_pizzakintomato.visible = false
if instance_exists(obj_pizzakinsausage)
    obj_pizzakinsausage.visible = false
if instance_exists(obj_pizzakinpineapple)
    obj_pizzakinpineapple.visible = false
obj_player.x = x
obj_player.y = y
obj_player.player_y = target_y
obj_player.player_x = target_x
obj_player.targetRoom = targetRoom
