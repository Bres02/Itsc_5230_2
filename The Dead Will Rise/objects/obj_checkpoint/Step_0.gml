if (obj_controller.curr_checkpoint = self) {
	instance_create_layer(x, y - 20, "Instances", obj_txt_checkpoint)
} else {
	if (instance_exists(obj_txt_parent)) {
		instance_destroy(instance_nearest(x, y, obj_txt_checkpoint))
	}
}


