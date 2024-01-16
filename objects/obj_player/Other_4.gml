if (state == states.grab)
	state = states.normal
	if (targetDoor == "A" && instance_exists(obj_doorA))
	{
		if (hallway == 1)
			x = (obj_doorA.x + (hallwaydirection * 100))
		else if (box == 1)
			x = (obj_doorA.x + 32)
		else
			x = (obj_doorA.x + 16)
		y = (obj_doorA.y - 14)
	}
	if (targetDoor == "B" && instance_exists(obj_doorB))
	{
		if (hallway == 1)
			x = (obj_doorB.x + (hallwaydirection * 100))
		else if (box == 1)
			x = (obj_doorB.x + 32)
		else
			x = (obj_doorB.x + 16)
		y = (obj_doorB.y - 14)
	}
	if (targetDoor == "C" && instance_exists(obj_doorC))
	{
		if (hallway == 1)
			x = (obj_doorC.x + (hallwaydirection * 100))
		else if (box == 1)
			x = (obj_doorC.x + 32)
		else
			x = (obj_doorC.x + 16)
		y = (obj_doorC.y - 14)
	}
	if (targetDoor == "D" && instance_exists(obj_doorD))
	{
		if (hallway == 1)
			x = (obj_doorD.x + (hallwaydirection * 100))
		else if (box == 1)
			x = (obj_doorD.x + 32)
		else
			x = (obj_doorD.x + 16)
		y = (obj_doorD.y - 14)
	}
	if (targetDoor == "E" && instance_exists(obj_doorE))
	{
		if (hallway == 1)
			x = (obj_doorE.x + (hallwaydirection * 100))
		else if (box == 1)
			x = (obj_doorE.x + 32)
		else
			x = (obj_doorE.x + 16)
		y = (obj_doorE.y - 14)
	}
	if (targetDoor == "F" && instance_exists(obj_doorF))
	{
		if (hallway == 1)
			x = (obj_doorF.x + (hallwaydirection * 100))
		else if (box == 1)
			x = (obj_doorF.x + 32)
		else
			x = (obj_doorF.x + 16)
		y = (obj_doorF.y - 14)
	}
	hallway = 0
if (global.shroomfollow == 1)
    instance_create(x, y, obj_pizzakinshroom)
if (global.cheesefollow == 1)
    instance_create(x, y, obj_pizzakincheese)
if (global.tomatofollow == 1)
    instance_create(x, y, obj_pizzakintomato)
if (global.sausagefollow == 1)
    instance_create(x, y, obj_pizzakinsausage)
if (global.pineapplefollow == 1)
    instance_create(x, y, obj_pizzakinpineapple)
