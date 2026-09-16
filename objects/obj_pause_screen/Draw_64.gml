if not is_paused exit;
//nineslice import, mod as needed
nineslice_menuSys(bg_placeholder, halfwidth-500,halfheight-360, halfwidth+500,halfheight+480);

// Draw background
draw_set_alpha(0.5);
draw_set_colour(c_black);
draw_rectangle(0,0, window_get_width(), window_get_height(), false);
draw_set_alpha(1);

// Draw text

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(1);
draw_set_colour(c_white)
//draw_text(
//	window_get_width()/2,
//	(window_get_height()/2) - 250, 
//	"GAME IS PAUSED"
//);
switch (pmenu_state){
	case P_MENU.MAIN:

		draw_set_halign(fa_center);
		draw_text_transformed(halfwidth, halfheight-200, "Paused",2,2,0)
		draw_set_halign(fa_left);
		for (var i =0; i< array_length(pausemenuoptions); i++)
		{
			if (position_var != i)
			{
				draw_text(halfwidth-horizontal_margin,halfheight-vertical_margin+(spacing*i),pausemenuoptions[i])
			}
			else
			{
				draw_text(halfwidth-horizontal_margin,halfheight-vertical_margin+(spacing*i),">   " +pausemenuoptions[i])
			}
		}
		//case selector enabler system
		if (keyselect)
		{
			switch(position_var)
			{
				case 0: 
					global.enemy_type = undefined
					unpause_game();
					room_goto(rm_menu)
					break;
				case 1: 
					unpause_game();
					room_restart();
					break;
				case 2: 
					position_var = 0;
					pmenu_state = P_MENU.SETTINGS
					break;
				
			}
		}
		break;
}
draw_set_halign(fa_left)
draw_set_valign(fa_top)