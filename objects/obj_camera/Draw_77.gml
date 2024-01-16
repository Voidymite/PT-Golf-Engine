if (global.panic && global.panicbg)
{
    application_surface_draw_enable(false)
    var winh = window_get_height()
    var winw = window_get_width()
    var apph = window_get_height()
    var appw = (apph * 1.7777777777777777)
    var appx = ((winw - appw) / 2)
    var appa = lerp(1, 0.33999999999999997, (global.wave / global.maxwave))
    draw_surface_stretched_ext(application_surface, appx, 0, appw, apph, c_white, appa)
}
else
    application_surface_draw_enable(true)
