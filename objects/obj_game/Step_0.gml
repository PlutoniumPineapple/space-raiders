if alarm[0] == -1 {
	alarm[0] = 60
}

if InputPressed(INPUT_VERB.FULLSCREEN) {
	window_set_fullscreen(!window_get_fullscreen())
}