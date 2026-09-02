/// @desc Spawn bullets - Wave
image_angle = direction;

if _time_dur <= 0 {stop()}

if is_firing {
	_time_dur -= dt_seconds();
	_time_rate -= dt_seconds();
	
	if _time_rate <= 0 {
		// Create X amount of bullets
		for (var i = 0; i < bullet_amount; ++i) {
			var step_angle = __spacing_angle()*i // The angle to direct the bullet
			
			create_bullet( (direction - radius/2) + step_angle, bullet_speed, bullet_duration)
		}
		
	
		
		// Reset time
		_time_rate = fire_rate
	}
}