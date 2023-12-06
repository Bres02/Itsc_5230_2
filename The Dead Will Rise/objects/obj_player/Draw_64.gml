draw_set_colour($FFBFFBFF)
draw_rectangle(5, 5, 180, 45, false)

for (var i = 0; i < lives; i++) {
	draw_sprite(spr_life_temp, 0, 26 + (36 * i), 25)
}

draw_healthbar(8, 55, 256, 79, obj_player.hp, c_black, c_red, c_green, 0, true, true)