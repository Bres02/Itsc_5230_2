global.has_sword = true

audio_play_sound(snd_item_obtain, 1, false)

instance_create_layer(x, y - 20, "Instances", obj_txt_sword)

instance_destroy()