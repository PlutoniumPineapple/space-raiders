/* 
	asset_has_tags(..., "unpauseable") prevents cutscenes from being paused, 
	Which looks weird and could break some things.
	Add the "unpauseable" tag if you create a new cutscene.
*/

if InputPressed(INPUT_VERB.PAUSE) and not asset_has_tags(room_get_name(room), "unpauseable") {
	is_paused = !is_paused;
	
	if is_paused == true {
		pause_game()
		//selector var
	position_var=0;
	pmenu_state=P_MENU.MAIN;
	}
	else {
		unpause_game()
	}
}
keyup =		InputPressed(INPUT_VERB.UP)
keydown =	InputPressed(INPUT_VERB.DOWN)
keyselect=	InputPressed(INPUT_VERB.ACCEPT)

if (keyup) position_var--;
if (keydown) position_var++;

//Separate menu options moddifier
switch(pmenu_state)
{
	case P_MENU.MAIN:
			if (position_var < 0) position_var=2
			if (position_var > 2) position_var=0
		break;
	case P_MENU.SETTINGS:
			if (position_var < 0) position_var=2
			if (position_var > 2) position_var=0
		break;
} 
