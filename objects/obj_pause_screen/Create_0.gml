is_paused = false;
menu = noone;
menu_height = 0;
enum P_MENU {MAIN,SETTINGS}

//if not audio_group_is_loaded(audiogroup_sfx) {
//	audio_group_load(audiogroup_sfx)
//}


//menu controls
keyup=false
keydown=false
keyselect=false

//selector var
position_var=0;
pmenu_state=P_MENU.MAIN;

//menu Import
//menu scaler
halfwidth = room_width/2
halfheight= room_height/2

horizontal_margin=180;
vertical_margin=100;
spacing=50;

pausemenuoptions[0] = "Return to Menu";
pausemenuoptions[1] = "Reset";
pausemenuoptions[2] = "Settings";

function pause_game() 
{
	obj_pause_manager.pause_tag("pauseable");
		
	//if menu == noone {
	//	menu = create_menu(
	//	spr_menu, [
	//		obj_pause_resume, 
	//		obj_pause_restart,
	//		obj_pause_options, 
	//		obj_pause_quit,
	//	],
	//	0, 0, 40, 80
	//	) 
	//	// I can set the width/height to 0 since it literally doesn't matter
	//	// The thing will just resize itself 
		
	//	menu_height = menu.y
	//}
	
	is_paused = true
	
	//audio_play_sound(snd_pause_sfx, 1, false) we have no pause audio
}

function unpause_game() 
{
	obj_pause_manager.unpause_tag("pauseable");

	if instance_exists(menu) {
		instance_destroy(menu.object_index)
	}
	menu = noone
	
	is_paused = false
}
