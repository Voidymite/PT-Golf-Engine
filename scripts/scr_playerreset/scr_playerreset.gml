function scr_playerreset()
{
	if instance_exists(obj_endlevelfade)
	    instance_destroy(obj_endlevelfade)
	if instance_exists(obj_timesup)
	    instance_destroy(obj_timesup)
	global.seconds = 59
	global.minutes = 1
	obj_player.state = states.normal
	obj_player.visible = true
	obj_player.player_x = 240
	obj_player.player_y = 434
	room = hub_room1
	ds_list_clear(global.saveroom)
	ds_list_clear(global.baddieroom)
	with (obj_player)
	{
	    alarm[0] = -1
	    alarm[1] = -1
	    alarm[3] = -1
	    alarm[4] = -1
	    alarm[5] = -1
	    alarm[6] = -1
	    alarm[7] = -1
	    alarm[8] = -1
	    alarm[9] = -1
	    alarm[10] = -1
	    grav = 0.5
	    hsp = 0
	    vsp = 0
	    global.playerhealth = 5
	    xscale = 1
	    yscale = 1
	    steppy = 0
	    movespeedmax = 5
	    jumpstop = 0
	    start_running = 1
	    visible = true
	    global.panic = 0
	    turn = 0
	    jumpAnim = 1
	    dashAnim = 1
	    landAnim = 0
	    machslideAnim = 0
	    moveAnim = 1
	    stopAnim = 1
	    crouchslideAnim = 1
	    crouchAnim = 1
	    machhitAnim = 0
	    stompAnim = 0
	    inv_frames = 0
	    turning = 0
	    hurtbounce = 0
	    hurted = 0
	    autodash = 0
	    mach2 = 0
	    input_buffer_jump = 8
	    input_buffer_secondjump = 8
	    input_buffer_highjump = 8
	    targetRoom = golf_room1
	    flash = 0
	    global.key_inv = 0
	    global.shroomfollow = 0
	    global.cheesefollow = 0
	    global.tomatofollow = 0
	    global.sausagefollow = 0
	    global.pineapplefollow = 0
	    global.keyget = 0
	    global.collect = 0
	    global.ammo = 0
	    global.treasure = 0
	    global.combo = 0
	    global.combotime = 0
	    global.pizzacoin = 0
	    global.toppintotal = 1
	    global.hit = 0
	    in_water = 0
	    key_particles = 0
	    barrel = 0
	    bounce = 0
	    a = 0
	    idle = 0
	    attacking = 0
	    slamming = 0
	    superslam = 0
	    machpunchAnim = 0
	    punch = 0
	    machfreefall = 0
	    shoot = 1
	    instakillmove = 0
	    windingAnim = 0
	    facestompAnim = 0
	    ladderbuffer = 0
	    chainsaw = 50
	    toomuchalarm1 = 0
	    toomuchalarm2 = 0
	    dashdust = 0
	    throwforce = 0
	    hurtsound = sound_pizzagot
	    idleanim = 0
	    momemtum = 0
	    cutscene = 0
	    grabbing = 0
	    dir = xscale
	    shotgunAnim = 0
	    goingdownslope = 0
	    goingupslope = 0
	    fallinganimation = 0
	    bombpeptimer = 100
	    slapbuffer = 0
	    slaphand = 1
	    suplexmove = 0
	    suplexhavetomash = 0
	    timeuntilhpback = 300
	    anger = 0
	    angry = 0
	}
}
