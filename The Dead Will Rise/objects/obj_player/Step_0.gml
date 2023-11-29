if (keyboard_check(vk_left) or keyboard_check(ord("A"))) or 
(keyboard_check(vk_right) or keyboard_check(ord("D"))) {
	if keyboard_check(vk_left) or keyboard_check(ord("A")) {
		if (!instance_place(x - move_speed, y, obj_block)) {
			hspeed = -move_speed
			//object_set_sprite(obj_player, spr_diego_walk)
			
			image_xscale = -0.0625
			image_yscale = 0.0625
		}
	}
	
	if keyboard_check(vk_right) or keyboard_check(ord("D")) {
		if (!instance_place(x + move_speed, y, obj_block)) {
			hspeed = move_speed
			//object_set_sprite(obj_player, spr_diego_walk)
			
			image_xscale = 0.0625
			image_yscale = 0.0625
		}
	}
} else {
	hspeed = 0
	
	if (!global.has_sword) {
		object_set_sprite(obj_player, spr_diego_idle)
	} else {
		//object_set_sprite(obj_player, spr_sword_idle
	}
}

if (keyboard_check(vk_up) or keyboard_check(vk_space) or keyboard_check(ord("W"))) {
	if (instance_place(x, y + 1, obj_block)) {
		vspeed = jump_height
	}
}


if (instance_place(x, y + 1, obj_block)) {
	gravity = 0
} else {
	gravity = 0.25
}

if (min(vspeed) > 12) {
	vspeed = 12
}

if (keyboard_check_pressed(ord("Z")) or mouse_check_button_pressed(mb_left)) {
	if (global.has_sword and can_swing) {
		
		//TODO: Insert code that allows player to harm monsters using the sword
		
		can_swing = false
		alarm[0] = game_get_speed(gamespeed_fps) / 2
	}
}

if (keyboard_check_pressed(ord("X")) or mouse_check_button_pressed(mb_right)) {
	if (global.has_pistol and can_shoot) {
		
		if (image_xscale = 1) {
			instance_create_layer(x + 10, y, layer, obj_bullet)
		} else {
			instance_create_layer(x - 10, y, layer, obj_bullet)
		}
		
		can_shoot = false
		alarm[1] = game_get_speed(gamespeed_fps) * 2
	}
}

if (invulnerable) {
	image_alpha = 0.5
} else {
	image_alpha = 1
}