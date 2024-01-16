image_speed = 0
obj_player.visible = true
obj_camera.visible = true
obj_player.state = states.comingoutdoor
if instance_exists(obj_pizzakinshroom)
    obj_pizzakinshroom.visible = true
if instance_exists(obj_pizzakincheese)
    obj_pizzakincheese.visible = true
if instance_exists(obj_pizzakintomato)
    obj_pizzakintomato.visible = true
if instance_exists(obj_pizzakinsausage)
    obj_pizzakinsausage.visible = true
if instance_exists(obj_pizzakinpineapple)
    obj_pizzakinpineapple.visible = true
if (!instance_exists(obj_fadeout))
    instance_create(x, y, obj_fadeout)
