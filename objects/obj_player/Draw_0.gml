event_inherited();

if alarm_get(4) != -1 { // -1 = alarm has stopped
	draw_self_color(c_aqua, alarm_get(4)/hg_time);
}

draw_set_colour(c_yellow)
draw_circle(
	(bbox_left+bbox_right)/2, 
	(bbox_top+bbox_bottom)/2, 
6, false); //shows hitbox


if hp > 2 {
	draw_sprite_ext(ship_shield, -1, x, y, 0.6, 0.6, direction, c_white, 1)
} else if hp = 2 {
	draw_sprite_ext(ship_shield, -1, x, y, 0.6, 0.6, direction, c_white, alpha)
}

