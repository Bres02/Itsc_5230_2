if (dead) {
	obj_player.x = curr_checkpoint.x
	obj_player.y = curr_checkpoint.y
	
	dead = false
}

if (global.game_over) {
	room_goto(rm_gameover)
	curr_room = -1
}
