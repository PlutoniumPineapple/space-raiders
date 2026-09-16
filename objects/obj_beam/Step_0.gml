lifetime -= dt_seconds();
image_angle = direction;

if lifetime <= 0 {
	dead = true;
}

