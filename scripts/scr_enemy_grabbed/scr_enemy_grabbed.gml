function scr_enemy_grabbed()
{
	image_xscale = (-obj_player.xscale)
	stunned = 200
	obj_player.baddiegrabbedID = id
	if (obj_player.state == states.grabbing || obj_player.state == states.grab || obj_player.state == states.Throw || obj_player.state == states.slam || obj_player.state == states.charge)
	{
	    x = (obj_player.x + (obj_player.xscale * 15))
	    y = obj_player.y
	    image_xscale = (-obj_player.xscale)
	}
	with (obj_player)
	{
	    suplexhavetomash = (other.hp - 1)
	    scr_getinput()
	    move = (key_left2 + key_right2)
	    if (key_slap2 && sprite_index == spr_grab)
	    {
	        scr_sound(sound_suplex1)
	        global.hit += 1
	        if (other.object_index == obj_pizzaball)
	            global.golfhit += 1
	        global.combotime = 60
	        image_index = 0
	        sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4)
	        other.hp -= 1
	        instance_create(other.x, other.y, obj_slapstar)
	        instance_create(other.x, other.y, obj_baddiegibs)
	        other.flash = 1
	        with (obj_camera)
	        {
	            shake_mag = 3
	            shake_mag_acc = (3 / room_speed)
	        }
	    }
	    if (!((state == states.grab || state == states.grabbing || state == states.Throw || state == states.slam || state == states.charge || state == states.punch || state == states.superslam || state == states.backkick || state == states.uppunch || state == states.shoulder)))
	    {
	        other.x = x
	        other.y = y
	        other.state = states.stun
	        other.image_index = 0
	    }
	}
	hsp = 0
	if (obj_player.state == states.punch && floor(obj_player.image_index) == 2)
	{
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 1
	    instance_create((x + (obj_player.xscale * 30)), y, obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = states.stun
	    hsp = ((-image_xscale) * 25)
	    grav = 0
	    vsp = -2
	    global.combotime = 60
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == states.backkick && floor(obj_player.image_index) == 2)
	{
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 1
	    instance_create((x + ((-obj_player.xscale) * 50)), y, obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = states.stun
	    image_xscale *= -1
	    hsp = ((-image_xscale) * 20)
	    vsp = -7
	    global.combotime = 60
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == states.shoulder && floor(obj_player.image_index) == 2)
	{
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 1
	    instance_create(x, (y + 20), obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = states.stun
	    hsp = ((-image_xscale) * 10)
	    vsp = -10
	    global.combotime = 60
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == states.Throw && floor(obj_player.image_index) == 2)
	{
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 1
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = states.stun
	    hsp = ((-image_xscale) * 10)
	    vsp = -10
	}
	if (obj_player.state == states.uppunch && floor(obj_player.image_index) == 2)
	{
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 1
	    instance_create((x + ((-obj_player.xscale) * 15)), (y - 50), obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    hsp = ((-image_xscale) * 2)
	    state = states.stun
	    vsp = -20
	    global.combotime = 60
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == states.charge)
	{
	    x = (obj_player.x + (obj_player.xscale * 15))
	    y = obj_player.y
	}
	if (obj_player.state == states.bump)
	{
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    global.combotime = 60
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 2
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = states.stun
	    hsp = ((-image_xscale) * 10)
	    vsp = -10
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == states.superslam)
	{
	    if (obj_player.character == "P")
	    {
	        if (floor(obj_player.image_index) == 0)
	        {
	            depth = 0
	            x = (obj_player.x + (obj_player.xscale * 10))
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 1)
	        {
	            depth = 0
	            x = (obj_player.x + (obj_player.xscale * 5))
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 2)
	        {
	            depth = 0
	            x = obj_player.x
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 3)
	        {
	            depth = 0
	            x = (obj_player.x + (obj_player.xscale * -5))
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 4)
	        {
	            depth = 0
	            x = (obj_player.x + (obj_player.xscale * -10))
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 5)
	        {
	            depth = -8
	            x = (obj_player.x + (obj_player.xscale * -5))
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 6)
	        {
	            depth = -8
	            x = obj_player.x
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 7)
	        {
	            depth = -8
	            x = (obj_player.x + (obj_player.xscale * 5))
	            y = obj_player.y
	        }
	    }
	    else
	    {
	        depth = -7
	        x = obj_player.x
	        y = (obj_player.y - 40)
	    }
	    if (obj_player.sprite_index == obj_player.spr_piledriverland)
	    {
	        scr_sound(sound_explosion)
	        instance_create(x, y, obj_slapstar)
	        instance_create(x, y, obj_baddiegibs)
	        flash = 1
	        global.combotime = 60
	        global.hit += 1
	        if (other.object_index == obj_pizzaball)
	            global.golfhit += 1
	        hp -= 2
	        alarm[1] = 5
	        thrown = 1
	        x = obj_player.x
	        y = obj_player.y
	        state = states.stun
	        hsp = ((-image_xscale) * 10)
	        vsp = -10
	    }
	}
	sprite_index = grabbedspr
	image_speed = 0.35
}
