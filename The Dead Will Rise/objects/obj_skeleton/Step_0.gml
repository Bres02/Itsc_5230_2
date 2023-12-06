if (hp <= 0) {
	instance_destroy()
}

if (cursed) {
	//sprite_index = spr_skeleton_cursed
	
} else {
	//sprite_index = spr_skeleton
}

// Adds a small knockback to all attacks made by the player against the skeleton
if (push_right && !cursed) {
	for ( var i = 0; i < game_get_speed(gamespeed_fps) / 4; i++ ) {
		x = x + 2
	}
	push_right = false
}

if (push_left && !cursed) {
	for ( var i = 0; i < game_get_speed(gamespeed_fps) / 4; i++ ) {
		x = x - 2
	}
	
	push_left = false
}