if alarm[0] == -1 and room == rm_game { // Room1 = Game Room
	alarm[0] = 60
}

if InputPressed(INPUT_VERB.FULLSCREEN) {
	window_set_fullscreen(!window_get_fullscreen())
}

if audio_group_is_loaded(audiogroup_default) and !audio_is_playing(snd_battle) {
	audio_play_sound(snd_battle, 10, true);
}

