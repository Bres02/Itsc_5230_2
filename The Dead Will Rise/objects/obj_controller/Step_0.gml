// Creates a key when the player kills all skeletons in the Cemetery level
if (!instance_exists(obj_skeleton) && room == rm_cemetery) {
	if (!key_created) {
		instance_create_layer(obj_player.x, obj_player.y - 80, "Instances", obj_key)
		key_created = true
	}
}

// Music determination
if (room == rm_title && curr_room == 0) { // Title screen
	audio_play_sound(snd_title, 2, true)
	curr_room = 1
} else if (room == rm_cemetery && curr_room == 1) { // Cemetery level
	audio_pause_all()
	audio_play_sound(snd_cemetery, 2, true)
	curr_room = 2
} else if (room == rm_mausoleum && curr_room == 2) { // Mausoleum level
	audio_pause_all()
	audio_play_sound(snd_mausoleum, 2, true)
	curr_room = 3
} else if (room == rm_boss && curr_room == 3) { // Boss level
	audio_pause_all()
	audio_play_sound(snd_boss_music, 2, true)
	curr_room = 4
} else if (room == rm_end && curr_room == 4) { // Win screen
	audio_pause_all()
	audio_play_sound(snd_title, 2, true)
} else if (global.game_over && curr_room == -1) { // Gameover screen
	audio_pause_all()
	audio_play_sound(snd_title, 2, true)
	curr_room = 0
}
