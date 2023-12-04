if (!touch_border && !recent_collision) {
	current_speed = -current_speed
	move_x = 0
	move_y = 0
	
	touch_border = true
	recent_collision = true
	alarm[0] = pause_time
	alarm[1] = pause_time * 4
}


