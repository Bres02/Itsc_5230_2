/** First we damage the player, then make them invulnerable for a short time, but only if not
 * already invulnerable */
if (!invulnerable) {
	hp -= 30

	if (hp <= 0 ) {
		lives -= 1
		if(lives == 0) {
			global.game_over = true
			room_goto(rm_gameover)
			obj_controller.curr_room = -1
		} else {
			obj_controller.dead = true
			room_restart()
		}
	}

	audio_play_sound(snd_player_hurt, 1, false)
	invulnerable = true

	alarm[2] = game_get_speed(gamespeed_fps) * 3
}


