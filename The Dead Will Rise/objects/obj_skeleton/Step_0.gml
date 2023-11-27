if (hp <= 0) {
	instance_destroy()
}


// Adds a small knockback to all attacks made by the player against the skeleton
if (push_right) {
	for ( var i = 0; i < game_get_speed(gamespeed_fps) / 2; i++ ) {
		x = x + 2
	}
	push_right = false
}

if (push_left) {
	for ( var i = 0; i < game_get_speed(gamespeed_fps) / 2; i++ ) {
		x = x - 2
	}
	
	push_left = false
}