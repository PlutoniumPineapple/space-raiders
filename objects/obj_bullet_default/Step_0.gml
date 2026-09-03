lifetime -= dt_seconds();
if lifetime <= 0 {
	instance_destroy()
}

if acceleration > 0 {
	speed = Approach(speed, max_speed, acceleration)
}