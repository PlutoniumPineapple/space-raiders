keyup= keyboard_check_pressed(vk_up);
keydown= keyboard_check_pressed(vk_down);
keyselect= keyboard_check_pressed(vk_space);

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
			if (position_var < 0) position_var=1
			if (position_var > 1) position_var=0
		break;
}