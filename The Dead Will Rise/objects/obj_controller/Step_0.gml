if (instance_exists(obj_player)) {
	
	if (obj_player.hp <= 0) {
		instance_destroy(obj_player)
	}
	
	if (instance_exists(obj_player)) {
		if (obj_player.x_dir != 0) {
			obj_player.sprite_index = spr_diego_walk
		} else {
			obj_player.sprite_index = spr_diego_idle
		}
		
		if (dead) {
			obj_player.x = curr_checkpoint.x
			obj_player.y = curr_checkpoint.y
			
			dead = false
		}
		
	}
} 

if (!instance_exists(obj_skeleton) && room == rm_cemetery) {
	if (!key_created) {
		instance_create_layer(obj_player.x, obj_player.y - 80, "Instances", obj_key)
		key_created = true
	}
}

if (global.game_over) {
	room_goto(rm_gameover)
}
