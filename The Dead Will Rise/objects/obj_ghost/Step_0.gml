if (hp <= 0) {
	instance_destroy()
}

if (object_exists(obj_player)) {
	if (distance_to_object(obj_player) < detect_range) {
		path_end()
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		speed = sp
	}
}

// Makes the ghost face towards the player
if (direction > -1) {
	if (direction > 90 and direction < 270) {
		image_angle = 0
		image_xscale = -1
	} else {
		image_angle = 0
		image_xscale = 1
	}
} 

// Adds a small knockback to all attacks made by the player against the skeleton
if (push_right) {
	for ( var i = 0; i < game_get_speed(gamespeed_fps) / 4; i++ ) {
		x = x + 2
	}
	push_right = false
}

if (push_left) {
	for ( var i = 0; i < game_get_speed(gamespeed_fps) / 4; i++ ) {
		x = x - 2
	}
	
	push_left = false
}