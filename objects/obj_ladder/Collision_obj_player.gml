with (obj_player)
{
    if (key_up && ladderbuffer == 0 && (state == states.normal || state == states.mach2 || state == states.mach3 || state == states.mach1 || state == states.shotgunjump || state == states.jump) && state != states.hurt && state != states.machslide && state != states.freefall && state != states.freefallland)
    {
        mach2 = 0
        state = states.ladder
        x = (other.x + 16)
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
    }
}
