draw_self();
draw_circle(
	(bbox_left+bbox_right)/2, 
	(bbox_top+bbox_bottom)/2, 
6, false); //shows hitbox


if hp > 1 {
	draw_sprite_ext(ship_shield, -1, x, y, 0.6, 0.6, direction, c_white, 1)
}