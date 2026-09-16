/// @desc Spawn bullets
image_angle = direction;
direction += rotation;


if !has_fired {
	update_timers();
	
	if follow_owner and instance_exists(owner) {
		x = owner.x;
		y = owner.y;
	}
		
	// Spawn a beam
	if volley_amount = 1 {
		var beam = create_beam(direction, beam_width, beam_lifetime, beam_type, owner)
		array_push(fired_beams, beam);
	}
		
	// Spawn X amount of beams
	else {
		for (var i = 0; i < volley_amount; ++i) {
			var step_angle = __spacing_angle()*i // The angle to direct the bullet
			var current_angle = (direction - spread/2) + step_angle;

			var beam = create_beam(current_angle, beam_width, beam_lifetime, beam_type, owner)
			array_push(fired_beams, beam);
			beam.x = x + beam_offset*cos(direction)
			beam.y = y + beam_offset*sin(direction)
		}
	}	
	
	// ALWAYS KEEP HERE...
	has_fired = true;
}

if volley_amount = 1 {
	for (var i = 0; i < array_length(fired_beams); ++i) {
		beam = fired_beams[i]
		if instance_exists(beam) {
			fired_beams[i].direction = direction
		} else {
			array_delete(fired_beams, i, 1)
		}
	}
}
else if volley_amount > 1 {
	for (var i = 0; i < array_length(fired_beams); ++i) {
		var current_angle = (direction - spread/2) + __spacing_angle()*i;
		beam = fired_beams[i]
		
		if instance_exists(beam) {
			fired_beams[i].direction = direction + current_angle
		} else {
			array_delete(fired_beams, i, 1)
		}
	}
}
