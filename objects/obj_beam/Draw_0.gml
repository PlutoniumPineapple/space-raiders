draw_sprite_ext(
	sprite_index, image_index, 
	x, y, 
	image_xscale, image_yscale, 
	direction, 
	c_white, 1
)

if dead {
	image_xscale = Approach(image_xscale, 0, shrinking_spd)
	if image_xscale <= 0.01 {
		instance_destroy()
	}
}