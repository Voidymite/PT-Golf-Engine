global.font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
global.creditsfont = font_add_sprite_ext(spr_creditsfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.:!0123456789?'", 1, 0)
font = global.creditsfont
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_sprite_ext(tvsprite, -1, 832, 74, 1, 1, 1, c_white, alpha)
draw_set_alpha(drawalpha)
draw_text(xi, yi, string_hash_to_newline(message))
if (global.combo != 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo))
    draw_text(852, 75, string_hash_to_newline(global.combo))
if (tvsprite == spr_tvdefault)
{
    chose = 0
    draw_text(832, 60, string_hash_to_newline(global.collect))
}
if (global.combotime > 0)
    draw_text(832, 200, string_hash_to_newline(((string(global.hit) + " ") + "HIT")))
draw_text(832, 300, string_hash_to_newline(((string(global.golfhit) + " ") + "GOLF HIT")))
