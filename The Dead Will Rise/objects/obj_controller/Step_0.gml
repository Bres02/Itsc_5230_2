if (instance_exists(obj_player)) {
	
	if (obj_player.hp <= 0) {
		instance_destroy(obj_player)
	}
	
	if (obj_player.hspeed > 0) {
		
		if (!global.has_sword && !global.has_pistol) {
			obj_player.sprite_index = spr_diego_walk
		} else if (global.has_sword && !global.has_pistol) {
			obj_player.sprite_index = spr_sword_walk
		} else {
			//object_set_sprite(obj_player, spr_pistol_walk)
		}
		
	} else if (obj_player.hspeed < 0) {
		
		if (!global.has_sword && !global.has_pistol) {
			obj_player.sprite_index = spr_diego_walk
		} else if (global.has_sword && !global.has_pistol) {
			obj_player.sprite_index = spr_sword_walk
		} else {
			//object_set_sprite(obj_player, spr_pistol_walk)
		}
		
	} else {
		
		if (!global.has_sword && !global.has_pistol) {
			obj_player.sprite_index = spr_diego_idle
		} else if (global.has_sword && ! global.has_pistol) {
			obj_player.sprite_index = spr_sword_idle
		} else {
			//object_set_sprite(obj_player, spr_pistol_idle)
		}
		
	}
	
}

if (!instance_exists(obj_skeleton)) {
	room_goto(rm_end)
}
