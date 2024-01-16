pal_swap_init_system(shd_pal_swapper)
enum states 
{
    normal,
    titlescreen,
    hookshot,
    slap,
    charge,
    cheesepep,
    cheeseball,
    cheesepepstick,
    boxxedpep,
    pistolaim,
    climbwall,
    knightpepslopes,
    portal,
    secondjump,
    chainsawbump,
    handstandjump,
    gottreasure,
    knightpep,
    knightpepattack,
    meteorpep,
    bombpep,
    grabbing,
    chainsawpogo,
    shotgunjump,
    stunned,
    highjump,
    chainsaw,
    facestomp,
    timesup,
    machroll,
    pistol,
    shotgun,
    machfreefall,
    superslam,
    slam,
    skateboard,
    grind,
    grab,
    punch,
    backkick,
    uppunch,
    shoulder,
    backbreaker,
    bossdefeat,
    bossintro,
    barrelfloat,
    barrelcrouch,
    barrelslipnslide,
    barrelroll,
    current,
    idle,
    turn,
    walk,
    land,
    hit,
    stun,
    grabbed,
    smirk,
    pizzathrow,
    gameover,
    Sjumpland,
    freefallprep,
    runonball,
    boulder,
    keyget,
    tackle,
    slipnslide,
    ladder,
    jump,
    victory,
    comingoutdoor,
    Sjump,
    Sjumpprep,
    crouch,
    crouchjump,
    crouchslide,
    mach1,
    mach2,
    mach3,
    machslide,
    bump,
    hurt,
    freefall,
    freefallland,
    hang,
    door,
	Throw, // EPIC shoutout to dist for suggesting how to make gm not shit itself compiling this enum
    barrelnormal,
    barrelfall,
    barrelmach1,
	barrelmach2,
	barrelmach3,
}
if (instance_exists(obj_player))
{
	with (obj_player)
	{
		targetRoom = golf_room1;
		targetDoor = "A";
	}
}