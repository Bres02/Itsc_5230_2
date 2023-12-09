if (hp <= 0) {
	instance_destroy()
}

if (cursed) {
	image_blend = make_color_rgb(255, 0, 255)
	hp = 100
} else {
	image_blend = -1
}

// Adds a small knockback to all attacks made by the player against the skeleton
if (push_right && !cursed) {
	for ( var i = 0; i < game_get_speed(gamespeed_fps) / 4; i++ ) {
		x = x + 4
	}
	push_right = false
}

if (push_left && !cursed) {
	for ( var i = 0; i < game_get_speed(gamespeed_fps) / 4; i++ ) {
		x = x - 4
	}
	
	push_left = false
}
