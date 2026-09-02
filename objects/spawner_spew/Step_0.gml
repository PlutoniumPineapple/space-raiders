/// @desc Spawn bullets
image_angle = direction;

if _time_dur <= 0 {stop()}

if is_firing {
	_time_dur -= dt_seconds();
	_time_rate -= dt_seconds();
	
	if _time_rate <= 0 {
		// Spawn bullet
		// Reset time
	
		create_bullet(direction, bullet_speed, bullet_duration) 
		// do we need a lifetime?
	
		_time_rate = fire_rate
	}
}