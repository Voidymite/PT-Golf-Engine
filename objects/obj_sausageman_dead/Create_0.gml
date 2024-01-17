vsp = random_range(-10, -18);
hsp = (sign((x - obj_player.x)) * random_range(10, 18));
grav = 0.5;
angle = 0;
spinspeed = choose(0, 0, 0, 10, 20);
if (x != obj_player.x)
    image_xscale = (-(sign((x - obj_player.x))))
depth = -999