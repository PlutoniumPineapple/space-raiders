/// @desc Setup
_time_dur = duration;

has_fired = false;
/// @desc Turns off the spawner
function stop() {
	has_fired = true;
	_time_dur = 0; 
	
	for (var i = 0; i < array_length(fired_beams); ++i) {
		beam = fired_beams[i]
		if instance_exists(beam) {
			beam.instance_destroy();
		}
		array_delete(fired_beams, i, 1)
	}
	
	instance_destroy();
}

function update_timers() {
	_time_dur -= dt_seconds();
}

fired_beams = [];

/// @desc The degrees to space out each bullets
function __spacing_angle(spread_ang = spread, bullet_num = volley_amount, ) {
	var result = spread_ang / (bullet_num);
	return result;
}

