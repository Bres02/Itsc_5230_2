other.hp -= 25

if (obj_player.image_xscale == 1) {
	other.push_right = true
} else {
	other.push_left = true
}

instance_destroy()