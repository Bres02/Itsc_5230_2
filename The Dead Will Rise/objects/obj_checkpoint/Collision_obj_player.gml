if (obj_controller.curr_checkpoint != self) {
	audio_play_sound(snd_item_obtain, 1, false)
}

obj_controller.curr_checkpoint = self

instance_create_layer(x, y - 20, "Instances", obj_txt_checkpoint)
