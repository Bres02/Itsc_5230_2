hp = 100

right_x = 0
left_x = 0
x_dir = 0

jump = false

gravity_direction = 270

// Allows player to have multiple invincibility frames after being hit
invulnerable = false

image_xscale = 0.0625
image_yscale = 0.0625

enum States {
	regular,
	slashing
}

state = States.regular

if (room == rm_cemetery) {
	obj_controller.key_created = false
	global.has_sword = false
}