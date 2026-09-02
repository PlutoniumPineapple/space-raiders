/// @desc Death
iframe_timer -= dt_seconds();
hp = max(0, hp);

if hp = 0 {
	instance_destroy();
}

if iframe_timer < 0 {
	invincible = false
}