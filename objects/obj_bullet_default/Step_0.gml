lifetime -= dt_seconds();
direction += rotation;
if rotation != 0 and rotation_decel != 0 {
	rotation = Approach(rotation, 0, rotation_decel)
}

if lifetime <= 0 {
	instance_destroy()
}

if acceleration > 0 {
	speed = Approach(speed, max_speed, acceleration)
}