/// @description Generation of fireballs during boss fight
rand = irandom_range(0, 2)

if (rand == 0) { // Bottom, Bottom, Middle
	instance_create_layer(x, 672, "Instances", obj_fireball)
	alarm[1] = game_get_speed(gamespeed_fps) * 1.5
	alarm[2] = game_get_speed(gamespeed_fps) * 3
} else if (rand == 1) { // Bottom, Middle, Bottom
	instance_create_layer(x, 672, "Instances", obj_fireball)
	alarm[2] = game_get_speed(gamespeed_fps) * 1.5
	alarm[1] = game_get_speed(gamespeed_fps) * 3
} else if (rand == 2) { // Bottom, Bottom
	instance_create_layer(x, 672, "Instances", obj_fireball)
	alarm[1] = game_get_speed(gamespeed_fps) * 1.5
}



alarm[0] = timer
