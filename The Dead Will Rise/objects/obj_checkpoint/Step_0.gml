if (obj_controller.curr_checkpoint = self) {
	instance_create_layer(x, y - 20, "Instances", obj_checkpoint_txt)
} else {
	if (instance_exists(obj_checkpoint_txt)) {
		instance_destroy(instance_nearest(x, y, obj_checkpoint_txt))
	}
}


