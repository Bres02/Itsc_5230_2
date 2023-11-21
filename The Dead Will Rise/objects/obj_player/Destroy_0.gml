//audio_play_sound(snd_death, 1, false)
lives -= 1

if (lives > 0) {
	room_restart()
	//player.x = curr_checkpoint.x
	//player.y = curr_checkpoint.y
} else {
	global.game_over = true
}


