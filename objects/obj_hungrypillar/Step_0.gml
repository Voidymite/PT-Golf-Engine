var bbbbb = 0
if (bbbbb == 1)
{
    if (framereset == 0)
    {
        image_index = 0
        framereset = 1
    }
    sprite_index = spr_hungrypillar_mouth
    if (floor(image_index) == 3)
        image_speed = 0
}
else
{
    framereset = 0
    if (sprite_index != spr_hungrypillar_angry)
        sprite_index = spr_hungrypillar
    image_speed = 0.35
}
if (toppineaten == 5)
    sprite_index = spr_hungrypillar_happy
