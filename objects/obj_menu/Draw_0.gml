//scale as needed, BG drawer
nineslice_menuSys(bg_placeholder, halfwidth-500,halfheight-360, halfwidth+500,halfheight+480);

draw_set_valign(fa_middle);
draw_set_font(Font1);
draw_set_color(c_black);

//to create new menus, just replace the "menu"options variable AND create a new case in the Create tab
switch (menu_state){
	case MENU.MAIN:

		draw_set_halign(fa_center);
		draw_text_transformed(halfwidth, halfheight-200, "Project Space Raiders",2,2,0)
		draw_set_halign(fa_left);
		for (var i =0; i< array_length(mainmenuoptions); i++)
		{
			if (position_var != i)
			{
				draw_text(halfwidth-horizontal_margin,halfheight-vertical_margin+(spacing*i),mainmenuoptions[i])
			}
			else
			{
				draw_text(halfwidth-horizontal_margin,halfheight-vertical_margin+(spacing*i),">   " +mainmenuoptions[i])
			}
		}
		//case selector enabler system
		if (keyselect)
		{
			switch(position_var)
			{
				case 0: 
					position_var = 0;
					menu_state = MENU.LEVEL_SELECT;
					show_debug_message(menu_state)
					break;
				case 1: 
					position_var = 0;
					menu_state = MENU.SETTINGS;
					show_debug_message(menu_state)
					break;
				case 2: 
				show_debug_message(menu_state)
				game_end();
				break;
				
			}
		}
		break;
		
	case MENU.SETTINGS:

		draw_set_halign(fa_center);
		draw_text_transformed(halfwidth, halfheight-200, "Settings",2,2,0)
		draw_set_halign(fa_left);
		for (var i =0; i< array_length(settingsoptions); i++)
		{
			if (position_var != i)
			{
				draw_text(halfwidth-horizontal_margin,halfheight-vertical_margin+(spacing*i),settingsoptions[i])
			}
			else
			{
				draw_text(halfwidth-horizontal_margin,halfheight-vertical_margin+(spacing*i),">   " +settingsoptions[i])
			}
		}
		
		if (keyselect)
		{
			switch(position_var)
			{
				case 0: break;
				case 1: break;
				case 2: break;
				case 3: break;
				case 4: break;
				case 5: 
					position_var = 0;
					menu_state = MENU.MAIN
					break;
			}
		}
		break;
		
	case MENU.LEVEL_SELECT:

		draw_set_halign(fa_center);
		draw_text_transformed(halfwidth, halfheight-200, "Level Select",2,2,0)
		draw_set_halign(fa_left);
		for (var i =0; i< array_length(levelselectoptions); i++)
		{
			if (position_var != i)
			{
				draw_text(halfwidth-horizontal_margin,halfheight-vertical_margin+(spacing*i),levelselectoptions[i])
			}
			else
			{
				draw_text(halfwidth-horizontal_margin,halfheight-vertical_margin+(spacing*i),">   " +levelselectoptions[i])
			}
		}
		if (keyselect)
		{
			switch(position_var)
			{
				case 0: 
					global.enemy_type=1
					room_goto(rm_game)
					
					break;
					//part where we can enable/disable entities from Room1 and transition to Room1
				case 1: 
					global.enemy_type=2
					room_goto(rm_game)
					break;
				case 2: 
					position_var = 0;
					menu_state = MENU.MAIN
					break;
			}
		}
		break;
}