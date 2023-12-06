other.hp -= 50

if (obj_player.image_xscale > 0) {
	other.push_right = true
} else {
	other.push_left = true
}

instance_destroy()


