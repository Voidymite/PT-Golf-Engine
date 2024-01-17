function scr_characterspr()
{
	with (obj_player)
	{
	    if (character == "P")
	    {
	        spr_idle = spr_player_idle
	        spr_move = spr_player_move
	        spr_crawl = spr_player_crawl
	        spr_idle = spr_player_idle
	        spr_hurt = spr_player_hurt
	        spr_jump = spr_player_jump
	        spr_jump2 = spr_player_jump2
	        spr_fall = spr_player_fall
	        spr_fall2 = spr_player_fall2
	        spr_crouch = spr_player_crouch
	        spr_crouchjump = spr_player_crouchjump
	        spr_crouchfall = spr_player_crouchfall
	        spr_couchstart = spr_player_couchstart
	        spr_bump = spr_player_bump
	        spr_land = spr_player_land
	        spr_land2 = spr_player_land2
	        spr_lookdoor = spr_player_lookdoor
	        spr_walkfront = spr_player_walkfront
	        spr_victory = spr_player_victory
	        spr_Ladder = spr_player_ladder
	        spr_laddermove = spr_player_laddermove
	        spr_ladderdown = spr_player_ladderdown
	        spr_keyget = spr_player_keyget
	        spr_crouchslip = spr_player_crouchslip
	        spr_mach1 = spr_player_mach1
	        spr_mach2 = spr_player_mach2
			spr_mach3 = spr_player_mach3
			spr_mach4 = spr_player_mach4
	        spr_secondjump1 = spr_player_secondjump1
	        spr_secondjump2 = spr_player_secondjump2
	        spr_machslidestart = spr_player_machslidestart
	        spr_machslide = spr_player_machslide
	        spr_machslideend = spr_player_machslideend
	        spr_machslideboost = spr_player_machslideboost
	        spr_land2 = spr_player_land2
	        spr_punch = spr_player_punch
	        spr_backkick = spr_player_backkick
	        spr_shoulder = spr_player_shoulder
	        spr_uppunch = spr_player_uppunch
	        spr_stomp = spr_player_stomp
	        spr_stompprep = spr_player_stompprep
	        spr_crouchslide = spr_player_crouchslide
	        spr_crouch = spr_player_crouch
	        spr_bump = spr_player_bump
	        spr_victory = spr_player_victory
	        spr_hurt = spr_player_hurt
	        spr_climbwall = spr_player_climbwall
	        spr_grab = spr_player_grab
	        spr_mach2jump = spr_player_mach2jump
	        spr_Timesup = spr_player_timesup
	        spr_deathstart = spr_player_deathstart
	        spr_deathend = spr_player_deathend
	        spr_machpunch1 = spr_player_machpunch1
	        spr_machpunch2 = spr_player_machpunch2
	        spr_hurtjump = spr_player_jumphurt
	        spr_entergate = spr_player_entergate
	        spr_gottreasure = spr_player_gottreasure
	        spr_bossintro = spr_player_bossintro
	        spr_hurtidle = spr_player_hurtidle
	        spr_hurtwalk = spr_player_hurtwalk
	        spr_suplexmash1 = spr_player_suplexmash1
	        spr_suplexmash2 = spr_player_suplexmash2
	        spr_suplexmash3 = spr_player_suplexmash3
	        spr_suplexmash4 = spr_player_suplexmash4
	        spr_tackle = spr_player_tackle
	        spr_airdash1 = spr_player_airdash1
	        spr_airdash2 = spr_player_airdash2
	        spr_keyget = spr_player_keyget
	        spr_idle1 = spr_player_idlefrown
	        spr_idle2 = spr_player_idledance
	        spr_idle3 = spr_player_idlevomit
	        spr_suplexdash = spr_player_suplexdash
	        spr_piledriver = spr_player_piledriver
	        spr_piledriverland = spr_player_piledriverland
	        spr_charge = spr_player_charge
			
	        spr_palette = spr_peppalette
	    }
	    else
	    {
	        spr_idle = spr_playerN_idle
	        spr_move = spr_playerN_move
	        spr_crawl = spr_playerN_crawl
	        spr_jump = spr_playerN_jump
	        spr_fall = spr_playerN_fall
	        spr_crouchjump = spr_playerN_crouchjump
	        spr_crouchfall = spr_playerN_crouchfall
	        spr_couchstart = spr_playerN_crouchstart
	        spr_land = spr_playerN_land
	        spr_lookdoor = spr_playerN_lookdoor
	        spr_walkfront = spr_playerN_walkfront
	        spr_Ladder = spr_playerN_ladder
	        spr_laddermove = spr_playerN_laddermove
	        spr_ladderdown = spr_playerN_ladderdown
	        spr_mach1 = spr_playerN_mach1
	        spr_mach = spr_playerN_mach
	        spr_secondjump1 = spr_playerN_secondjump1
	        spr_secondjump2 = spr_playerN_secondjump2
	        spr_machslidestart = spr_playerN_machslidestart
	        spr_machslide = spr_playerN_machslide
	        spr_machslideend = spr_playerN_machslideend
	        spr_machslideboost = spr_playerN_machslideboost
	        spr_land2 = spr_playerN_land2
	        spr_punch = spr_playerN_punch
	        spr_backkick = spr_playerN_backkick
	        spr_shoulder = spr_playerN_shoulder
	        spr_uppunch = spr_playerN_uppunch
	        spr_stomp = spr_playerN_stomp
	        spr_stompprep = spr_playerN_stompprep
	        spr_crouchslip = spr_playerN_crouchslip
	        spr_crouch = spr_playerN_crouch
	        spr_bump = spr_playerN_bump
	        spr_victory = spr_playerN_victory
	        spr_hurt = spr_playerN_hurt
	        spr_climbwall = spr_playerN_climbwall
	        spr_grab = spr_playerN_grab
	        spr_hurt = spr_playerN_hurt
	        spr_mach2jump = spr_playerN_mach2jump
	        spr_Timesup = spr_playerN_timesup
	        spr_deathstart = spr_playerN_deathstart
	        spr_deathend = spr_playerN_deathend
	        spr_machpunch1 = spr_playerN_machpunch1
	        spr_machpunch2 = spr_playerN_machpunch2
	        spr_hurtjump = spr_playerN_hurtjump
	        spr_entergate = spr_playerN_entergate
	        spr_gottreasure = spr_playerN_gottreasure
	        spr_bossintro = spr_playerN_bossintro
	        spr_hurtidle = spr_playerN_hurtidle
	        spr_hurtwalk = spr_playerN_hurtwalk
	        spr_suplexmash1 = spr_playerN_suplexmash1
	        spr_suplexmash2 = spr_playerN_suplexmash2
	        spr_suplexmash3 = spr_playerN_suplexmash3
	        spr_suplexmash4 = spr_playerN_suplexmash4
	        spr_tackle = spr_playerN_tackle
	        spr_airdash1 = spr_playerN_secondjump1
	        spr_airdash2 = spr_playerN_secondjump2
	        spr_keyget = spr_playerN_keyget
	        spr_idle1 = spr_playerN_idlegun
	        spr_idle2 = spr_playerN_idlesmoke
	        spr_idle3 = spr_playerN_idleface
	        spr_suplexdash = spr_playerN_suplexdash
	        spr_piledriver = spr_playerN_piledriver
	        spr_piledriverland = spr_playerN_piledriverland
	        spr_charge = spr_playerN_charge
	        spr_palette = spr_noisepalette
	    }
	}
}
