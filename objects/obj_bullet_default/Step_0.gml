if lifetime <= 0 {
	instance_destroy();
}

lifetime -= dt_seconds();
