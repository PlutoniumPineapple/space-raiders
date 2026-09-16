keyup =		InputPressed(INPUT_VERB.UP)
keydown =	InputPressed(INPUT_VERB.DOWN)
keyselect=	InputPressed(INPUT_VERB.ACCEPT)

if (keyup) position_var--;
if (keydown) position_var++;

//Separate menu options moddifier
switch(menu_state)
{
	case MENU.MAIN:
			if (position_var < 0) position_var=2
			if (position_var > 2) position_var=0
		break;
	case MENU.LEVEL_SELECT:
			if (position_var < 0) position_var=2
			if (position_var > 2) position_var=0
		break;
	case MENU.SETTINGS:
			if (position_var < 0) position_var=5
			if (position_var > 5) position_var=0
		break;
}