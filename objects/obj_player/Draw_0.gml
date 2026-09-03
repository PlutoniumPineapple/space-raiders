draw_self();

if hp > 1 {
	draw_sprite_ext(ship_shield, -1, x, y, 0.6, 0.6, direction, c_white, 1)
}