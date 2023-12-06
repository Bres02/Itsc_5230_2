if ( bbox_bottom <= other.bbox_top ) { // First we make sure the player is standing on top of the platform
	if (move_y > 0) {
		while (!place_meeting(x, y + 1, obj_platform)) {
			y += 1;
		}
	
		vspeed = 0;
		gravity = 0;
	}
}	
	
	// Add platform movement to player movement
	move_x += other.move_x
	move_y += other.move_y