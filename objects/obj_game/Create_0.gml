//game_set_speed(60, gamespeed_fps);
display_reset(0, true); 

window_set_caption("Space Raiders")
randomise() // randomizes the seed that GML uses for all of it's randomizers

if !audio_group_is_loaded(audiogroup_default) {
	audio_group_load(audiogroup_default);
}