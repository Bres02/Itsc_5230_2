/** First we damage the player, then make them invulnerable for a short time, but only if not
 * already invulnerable */
if (!invulnerable) {
	hp -= 20

	audio_play_sound(snd_player_hurt, 1, false)
	invulnerable = true

	alarm[2] = game_get_speed(gamespeed_fps) * 3
}


