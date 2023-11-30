if (keyboard_check_pressed(ord("R"))) {
	room_restart()
}

if (keyboard_check_pressed(ord("G"))) {
	game_restart()
}

if (keyboard_check_pressed(ord("L"))) {
	lives += 5
}

if (keyboard_check_pressed(ord("N"))) {
	room_goto_next()
}

if (keyboard_check_pressed(ord("S"))) {
	global.has_sword = true
}

if (keyboard_check_pressed(ord("P"))) {
	global.has_pistol = true
}

