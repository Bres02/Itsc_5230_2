if (other.has_key) {
	other.has_key = false
	
	audio_play_sound(snd_gate, 1, false)
	
	instance_destroy()
}


