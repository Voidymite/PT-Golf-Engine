function scr_pizzagoblin_throw()
{
	if (!variable_global_exists("throw_frame"))
	{
	    global.throw_frame = 0
	    global.throw_frame[53] = 2
	    global.throw_frame[51] = 6
	    global.throw_frame[58] = 2
	    global.throw_frame[59] = 2
	    global.throw_frame[60] = 2
	    global.throw_frame[52] = 2
	    global.throw_sprite = spr_plug
	    global.throw_sprite[53] = spr_pizzagoblin_throwbomb
	    global.throw_sprite[51] = spr_cheeserobot_attack
	    global.throw_sprite[58] = spr_spitcheese_spit
	    global.throw_sprite[59] = spr_trash_throw
	    global.throw_sprite[60] = spr_invtrash_throw
	    global.throw_sprite[52] = spr_robot_attack
	    global.reset_timer = 0
	    global.reset_timer[53] = 200
	    global.reset_timer[51] = 200
	    global.reset_timer[59] = 100
	    global.reset_timer[60] = 100
	    global.reset_timer[52] = 200
	    global.reset_timer[58] = 100
	}
	hsp = 0
	if place_meeting(x, (y + 1), obj_railh)
	    hsp = -5
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = 5
	if (bombreset == 0 && floor(image_index) == global.throw_frame[object_index])
	{
	    bombreset = global.reset_timer[object_index]
	    sprite_index = global.throw_sprite[object_index]
	    switch object_index
	    {
	        case obj_pizzagoblin:
	            with (instance_create(x, y, obj_bomb))
	                hsp = (other.image_xscale * 8)
	            break
	        case obj_cheeserobot:
	            with (instance_create(x, y, obj_cheeseblob))
	            {
	                sprite_index = spr_cheeserobot_goop
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 8)
	                vsp = 0
	                grav = 0
	            }
	            break
	        case obj_spitcheese:
	            with (instance_create((x + (image_xscale * 6)), (y - 6), obj_spitcheesespike))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	                vsp = -6
	            }
	            break
	        case obj_trash:
	        case obj_invtrash:
	            with (instance_create((x + (image_xscale * 6)), (y - 6), obj_cheeseball))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	                vsp = -4
	            }
	            break
	        case obj_robot:
	            with (instance_create(x, y, obj_robotknife))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	            }
	            break
	    }
	
	}
	if (floor(image_index) == (image_number - 1) && grounded)
	{
	    state = states.idle
	    image_index = 0
	}
	if ((!grounded) && hsp < 0)
	    hsp += 0.1
	else if ((!grounded) && hsp > 0)
	    hsp -= 0.1
}
