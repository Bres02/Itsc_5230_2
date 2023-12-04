// Determines the directionality of horizontal movement (Left or Right)
right_x = (keyboard_check(ord("D")) + keyboard_check(vk_right))
left_x = (keyboard_check(ord("A")) + keyboard_check(vk_left))

x_dir = right_x - left_x

