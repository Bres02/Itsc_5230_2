if (instance_exists(obj_player)) {
	if ( distance_to_object(obj_player) < activation_range ) {
		while ( y != spawn_y - 64) {
			y -= 1
		}
	} else { 
		while ( y != spawn_y) {
			y += 1
		}
	}
}


