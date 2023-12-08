draw_set_colour($FFBFFBFF)
draw_rectangle(8, 5, 256, 45, false)

for (var i = 0; i < lives; i++) {
	draw_sprite(spr_life_temp, 0, 29 + (36 * i), 25)
}

draw_healthbar(8, 55, 256, 79, obj_player.hp, c_black, c_red, c_green, 0, true, true)