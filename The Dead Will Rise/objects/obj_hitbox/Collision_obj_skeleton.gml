other.hp -= 50

audio_play_sound(snd_skeleton_hurt, 1, false)

if (obj_player.image_xscale > 0) {
	other.push_right = true
} else {
	other.push_left = true
}

instance_destroy()


