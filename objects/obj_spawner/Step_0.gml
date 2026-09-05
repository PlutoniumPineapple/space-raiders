/// @desc Spawn bullets
image_angle = direction;
direction += rotation;

if is_firing {
	update_timers();
	
	if _time_rate <= 0 {
		if follow_owner and instance_exists(owner) {
			x = owner.x;
			y = owner.y;
		}
		
		// Spawn a bullet
		if volley_amount = 1 {
			create_bullet(direction, bullet_speed, bullet_lifetime, bullet_type, owner);
		}
		
		// Spawn X amount of bullets
		else {
			for (var i = 0; i < volley_amount; ++i) {
				var step_angle = __spacing_angle()*i // The angle to direct the bullet
				var current_angle = (direction - spread/2) + step_angle;

				create_bullet(current_angle, bullet_speed, bullet_lifetime, bullet_type, owner);
			}
		}
		
		// Reset time
		_time_rate = fire_rate;
	}
}