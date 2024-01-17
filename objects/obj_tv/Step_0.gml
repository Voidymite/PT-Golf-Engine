if (room == rank_room || room == timesuproom || room == Realtitlescreen)
    visible = false
else
    visible = true
if (room == golf_room1)
{
    global.srank = 3900
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (showtext == 1)
{
	if (drawalpha < 100)
	    drawalpha += 0.5
}
if (showtext == 0)
{
	if (drawalpha > 0)
	    drawalpha -= 0.5
}
if (!((obj_player.state == states.knightpep && obj_player.state == states.knightpepattack && obj_player.state == states.knightpepslopes)))
    once = 0
if (obj_player.y < 200 && obj_player.x > (room_width - 200))
    alpha = 0.5
else
    alpha = 1
if (global.collect > global.srank && shownranka == 0)
{
    image_speed = 0
    message = "You got enough for rank A."
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvranka
    shownranka = 1
}
if (global.collect > global.arank && shownranka == 0)
{
    image_speed = 0
    message = "You got enough for rank A."
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvranka
    shownranka = 1
}
else if (global.collect > global.brank && shownrankb == 0)
{
    image_speed = 0
    message = "You got enough for rank B."
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankb
    shownrankb = 1
}
else if (global.collect > global.crank && shownrankc == 0)
{
    image_speed = 0
    message = "You got enough for rank C."
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankc
    shownrankc = 1
}
else if (obj_player.sprite_index == spr_player_levelcomplete)
{
    image_speed = 0.1
    alarm[0] = 50
    chose = 1
    tvsprite = spr_tvclap
    once = 1
}
else if (obj_player.state == states.timesup)
{
    alarm[0] = 50
    image_speed = 0.1
    tvsprite = spr_tvskull
}
else if (global.hurtcounter >= global.hurtmilestone)
{
    alarm[0] = 150
    image_speed = 0.1
    if (obj_player.character == "P")
        character = "Peppino"
    else
        character = "The Noise"
    message = (((("You have hurt " + string(character)) + " ") + string(global.hurtmilestone)) + " times...")
    if (tvsprite != spr_tvtalking1 && tvsprite != spr_tvtalking2 && tvsprite != spr_tvtalking3 && tvsprite != spr_tvtalking4)
        tvsprite = choose(spr_tvtalking1, spr_tvtalking2, spr_tvtalking3, spr_tvtalking4)
    global.hurtmilestone += 5
}
else if (global.combo != 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo || tvsprite == spr_tvescape))
{
    tvsprite = spr_tvcombo
    image_speed = 0
    if (global.combo >= 4)
        imageindexstore = 3
    else
        imageindexstore = (global.combo - 1)
}
else if (global.combotime == 0 && tvsprite == spr_tvcombo)
{
    tvsprite = spr_tvcomboresult
    image_index = imageindexstore
    alarm[0] = 50
}
else if (global.panic == 1)
{
    image_speed = 0.1
    tvsprite = spr_tvescape
}