if (instance_exists(obj_player)) {
	
	if (obj_player.hp <= 0) {
		instance_destroy(obj_player)
	}
	
	if (obj_player.move_x != 0) {
		obj_player.sprite_index = spr_diego_walk
	} else {
		obj_player.sprite_index = spr_diego_idle
	}
	
}

if (!instance_exists(obj_skeleton)) {
	room_goto(rm_end)
}
