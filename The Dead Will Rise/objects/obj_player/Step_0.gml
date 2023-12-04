if (x_dir < 0) {
	if (!instance_place(x - move_speed, y, obj_block)) {
		move_x = -move_speed
		
		image_xscale = -0.0625
		image_yscale = 0.0625
	}
} else if (x_dir > 0) {
	if (!instance_place(x + move_speed, y, obj_block)) {
		move_x = move_speed
		
		image_xscale = 0.0625
		image_yscale = 0.0625
	}
} else {
	move_x = 0
}

if keyboard_check(vk_space) or keyboard_check(ord("W")) {
	if (instance_place(x, y + 1, obj_block) or instance_place(x, y + 1, obj_platform)) {
		move_y = jump_height
	}
}

if (place_meeting(x, y + 1, obj_block) or instance_place(x, y + 1, obj_platform)) {
	
}


//Now we actually move the player
x += move_x
y += move_y



if (keyboard_check_pressed(ord("Z")) or mouse_check_button_pressed(mb_left)) {
	if (global.has_sword and can_swing) {
		
		if (image_xscale > 0) {
			instance_create_layer(x + 50, y, layer, obj_hitbox)
		} else {
			instance_create_layer(x - 50, y, layer, obj_hitbox)
		}
		
		can_swing = false
		alarm[0] = game_get_speed(gamespeed_fps) / 2
	}
}

if (keyboard_check_pressed(ord("X")) or mouse_check_button_pressed(mb_right)) {
	if (global.has_pistol and can_shoot) {
		
		if (image_xscale > 0) {
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