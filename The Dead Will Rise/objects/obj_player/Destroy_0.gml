//audio_play_sound(snd_death, 1, false)
lives -= 1

if (lives > 0) {
	obj_controller.dead = true
	room_restart()
} else {
	global.game_over = true
}


