// This prevents skeletons from clipping into each other and getting stuck
if (!skel_collision_cooldown) {
	hspeed = -hspeed
	
	image_xscale = -image_xscale
	
	skel_collision_cooldown = true
	
	alarm[0] = game_get_speed(gamespeed_fps)
}