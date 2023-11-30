if (instance_exists(obj_player)) {
	if (obj_player.hp <= 0) {
		instance_destroy(obj_player)
	}
}

if (!instance_exists(obj_skeleton)) {
	room_goto(rm_end)
}
