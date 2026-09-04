// Inherit the parent event
event_inherited();

//if alarm[0] > -1 {
//	alarm[0] = 0.5
//}

if image_xscale >= growth*2 {
	s = create_bullet(random(360), 0, 0.1, obj_bullet_bomb)
	s.spread = 360;
	s.volley_amount = round(random_range(4, 7))
	instance_destroy();
}

