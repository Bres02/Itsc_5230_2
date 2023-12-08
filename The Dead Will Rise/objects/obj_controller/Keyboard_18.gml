if (keyboard_check_pressed(ord("R"))) { // Room Restart
	room_restart()
}

if (keyboard_check_pressed(ord("G"))) { // Game Restart
	game_restart()
}

if (keyboard_check_pressed(ord("L"))) { // Gain Extra Lives
	lives += 5
}

if (keyboard_check_pressed(ord("N"))) { // Go to next room
	room_goto_next()
}

if (keyboard_check_pressed(ord("S"))) { // Insta-Sword
	global.has_sword = true
}

if (keyboard_check_pressed(ord("P"))) { // Insta-Pistol
	global.has_pistol = true
}

if (keyboard_check_pressed(ord("K"))) { //Lose a life
	lives--
}

