// Determines the directionality of horizontal movement (Left or Right)
right_x = (keyboard_check(ord("D")) + keyboard_check(vk_right))
left_x = (keyboard_check(ord("A")) + keyboard_check(vk_left))

x_dir = right_x - left_x

// Determines if the player jumped or not
if (keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)) {
	jump = true
}
