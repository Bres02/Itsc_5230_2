if (instance_exists(obj_player)) {
	if ( distance_to_object(obj_player) < activation_range ) {
		while ( y != spawn_y - 128) {
			y -= 1
			
			activated = true
		}
		
		if (activated) {
			audio_play_sound(snd_trap, 1, false)
			activated = false
		}
		
	} else { 
		while ( y != spawn_y) {
			y += 1
		}
		
	}
}


