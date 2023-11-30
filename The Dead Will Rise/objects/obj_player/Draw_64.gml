draw_set_colour($FFBFFBFF)
draw_rectangle(8, 8, 128, 45, false)

for (var i = 0; i < lives; i++) {
	draw_sprite(spr_life_temp, 0, 32 + (36 * i), 27)
}

