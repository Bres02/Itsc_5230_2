draw_self()

draw_healthbar(spawn_x - 320, spawn_y - 455, spawn_x + 320, spawn_y - 400, hp, c_black, c_red, c_red, 0, true, true)

draw_set_font(fnt_menu)
draw_set_color(c_red)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(spawn_x, spawn_y - 375, "El Malvado")

draw_set_halign(fa_left)
draw_set_valign(fa_top)
